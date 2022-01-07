; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl4030_led_set_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_twl4030-gpio.c_twl4030_led_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEDEN_LEDAON = common dso_local global i32 0, align 4
@LEDEN_LEDAPWM = common dso_local global i32 0, align 4
@gpio_lock = common dso_local global i32 0, align 4
@cached_leden = common dso_local global i32 0, align 4
@TWL4030_MODULE_LED = common dso_local global i32 0, align 4
@TWL4030_LED_LEDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @twl4030_led_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twl4030_led_set_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @LEDEN_LEDAON, align 4
  %8 = load i32, i32* @LEDEN_LEDAPWM, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = call i32 @mutex_lock(i32* @gpio_lock)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @cached_leden, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* @cached_leden, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @cached_leden, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @cached_leden, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @TWL4030_MODULE_LED, align 4
  %30 = load i32, i32* @cached_leden, align 4
  %31 = load i32, i32* @TWL4030_LED_LEDEN, align 4
  %32 = call i32 @twl4030_i2c_write_u8(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = call i32 @mutex_unlock(i32* @gpio_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
