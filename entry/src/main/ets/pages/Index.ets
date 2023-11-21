// import { NewsData } from "./common/bean/NewsData"

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .fontColor(Color.Red)
      }
      .width('100%')
    }
    .height('100%')
  }
}

class Person {
  // 私有属性
  private name: String
  private age: number

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age
  }
  // 公有方法
  public getPersonInfo(): string {
    return `My name is ${this.name} and age is ${this.age}`
  }
}

let person1 = new Person('Tom', 18)
person1.getPersonInfo();

class Employee extends Person {
  private department: string

  constructor(name: string, age: number, department: string) {
    super(name, age);
    this.department = department;
  }

  public getEmployeeInfo(): string {
    return this.getPersonInfo() + `and work in ${this.department}`
  }
}

let person2 = new Employee('Sam', 20, 'HuaWei');
person2.getPersonInfo()
person2.getEmployeeInfo()


export class NewsData {
  title: string;
  content: string;

  constructor(title: string, content: string) {
    this.title = title;
    this.content = content;
  }
}


let someArray = [1, 'string', false];

for (let entry of someArray) {
  // console.log(entry);
}

let list = [4, 5, 6]

for (let i in list) {
  console.log(i); // 数组下标
}

for (let i of list) {
  // console.log(i); // 数组元素
}


// console.log(111)