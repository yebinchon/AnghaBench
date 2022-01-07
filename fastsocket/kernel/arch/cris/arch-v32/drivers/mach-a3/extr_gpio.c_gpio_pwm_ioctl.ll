; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_pwm_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/mach-a3/extr_gpio.c_gpio_pwm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_private = type { i32 }

@GPIO_MINOR_PWM0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_private*, i32, i64)* @gpio_pwm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pwm_ioctl(%struct.gpio_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_private* %0, %struct.gpio_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.gpio_private*, %struct.gpio_private** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_private, %struct.gpio_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GPIO_MINOR_PWM0, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @_IOC_NR(i32 %14)
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %20
    i32 130, label %24
  ]

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @gpio_pwm_set_mode(i64 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @gpio_pwm_set_period(i64 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @gpio_pwm_set_duty(i64 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %24, %20, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @_IOC_NR(i32) #1

declare dso_local i32 @gpio_pwm_set_mode(i64, i32) #1

declare dso_local i32 @gpio_pwm_set_period(i64, i32) #1

declare dso_local i32 @gpio_pwm_set_duty(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
