; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@TWL4030_GPIO_MAX = common dso_local global i32 0, align 4
@cached_leden = common dso_local global i32 0, align 4
@LEDEN_LEDAON = common dso_local global i32 0, align 4
@LEDEN_LEDBON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @twl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @twl4030_get_gpio_datain(i32 %10)
  store i32 %11, i32* %5, align 4
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TWL4030_GPIO_MAX, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* @cached_leden, align 4
  %18 = load i32, i32* @LEDEN_LEDAON, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* @cached_leden, align 4
  %22 = load i32, i32* @LEDEN_LEDBON, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %9
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  ret i32 %32
}

declare dso_local i32 @twl4030_get_gpio_datain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
