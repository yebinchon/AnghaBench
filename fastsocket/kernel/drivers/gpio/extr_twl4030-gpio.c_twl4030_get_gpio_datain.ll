; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl4030_get_gpio_datain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl4030_get_gpio_datain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@gpio_usage_count = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@REG_GPIODATAIN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_get_gpio_datain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_get_gpio_datain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 3
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 7
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @gpio_usage_count, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ true, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load i32, i32* @REG_GPIODATAIN1, align 4
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @gpio_twl4030_read(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gpio_twl4030_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
