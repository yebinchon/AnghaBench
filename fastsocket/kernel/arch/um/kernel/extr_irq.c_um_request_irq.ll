; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_um_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/extr_irq.c_um_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @um_request_irq(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %30

19:                                               ; preds = %7
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %15, align 8
  %24 = call i32 @activate_fd(i32 %20, i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %8, align 4
  br label %37

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i64, i64* %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 @request_irq(i32 %31, i32 %32, i64 %33, i8* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @activate_fd(i32, i32, i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
