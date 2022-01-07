; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_get_value_cansleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_gpiolib.c_gpio_get_value_cansleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 (%struct.gpio_chip*, i32)*, i32 }

@extra_checks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_get_value_cansleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_chip*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @extra_checks, align 4
  %5 = call i32 @might_sleep_if(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gpio_chip* @gpio_to_chip(i32 %6)
  store %struct.gpio_chip* %7, %struct.gpio_chip** %3, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %8, i32 0, i32 0
  %10 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.gpio_chip*, i32)* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 0
  %15 = load i32 (%struct.gpio_chip*, i32)*, i32 (%struct.gpio_chip*, i32)** %14, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub i32 %17, %20
  %22 = call i32 %15(%struct.gpio_chip* %16, i32 %21)
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %12
  %25 = phi i32 [ %22, %12 ], [ 0, %23 ]
  ret i32 %25
}

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local %struct.gpio_chip* @gpio_to_chip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
