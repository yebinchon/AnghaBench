; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pxa27x.c_pxa27x_set_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pxa27x.c_pxa27x_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_KEYPAD = common dso_local global i32 0, align 4
@PWER_RTC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pxa27x_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_set_wake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @IRQ_TO_GPIO(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @gpio_set_wake(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IRQ_KEYPAD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @keypad_set_wake(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %31 [
    i32 129, label %28
    i32 128, label %30
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @PWER_RTC, align 4
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %26
  store i32 67108864, i32* %7, align 4
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %30, %28
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PWER, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @PWER, align 4
  br label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* @PWER, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* @PWER, align 4
  br label %46

46:                                               ; preds = %41, %37
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %31, %23, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @IRQ_TO_GPIO(i32) #1

declare dso_local i32 @gpio_set_wake(i32, i32) #1

declare dso_local i32 @keypad_set_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
