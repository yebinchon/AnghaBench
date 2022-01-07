; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_gpio.c_gpio_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/ar7/extr_gpio.c_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR7_GPIO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ar7_gpio_list = common dso_local global i8** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_request(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AR7_GPIO_MAX, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  %13 = load i8**, i8*** @ar7_gpio_list, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %12
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8**, i8*** @ar7_gpio_list, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  br label %36

31:                                               ; preds = %22
  %32 = load i8**, i8*** @ar7_gpio_list, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  br label %36

36:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %19, %9
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
