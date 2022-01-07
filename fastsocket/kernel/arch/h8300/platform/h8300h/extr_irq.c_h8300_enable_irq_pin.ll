; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_irq.c_h8300_enable_irq_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/platform/h8300h/extr_irq.c_h8300_enable_irq_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H8300_GPIO_P8 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@H8300_GPIO_INPUT = common dso_local global i32 0, align 4
@H8300_GPIO_P9 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h8300_enable_irq_pin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 133
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ugt i32 %8, 128
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sub i32 %12, 133
  %14 = shl i32 1, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  switch i32 %15, label %42 [
    i32 133, label %16
    i32 132, label %16
    i32 131, label %16
    i32 130, label %16
    i32 129, label %29
    i32 128, label %29
  ]

16:                                               ; preds = %11, %11, %11, %11
  %17 = load i32, i32* @H8300_GPIO_P8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @H8300_GPIO_RESERVE(i32 %17, i32 %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load i32, i32* @H8300_GPIO_P8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @H8300_GPIO_INPUT, align 4
  %28 = call i32 @H8300_GPIO_DDR(i32 %25, i32 %26, i32 %27)
  br label %42

29:                                               ; preds = %11, %11
  %30 = load i32, i32* @H8300_GPIO_P9, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @H8300_GPIO_RESERVE(i32 %30, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @H8300_GPIO_P9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @H8300_GPIO_INPUT, align 4
  %41 = call i32 @H8300_GPIO_DDR(i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %11, %37, %24
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %34, %21, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @H8300_GPIO_RESERVE(i32, i32) #1

declare dso_local i32 @H8300_GPIO_DDR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
