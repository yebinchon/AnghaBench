; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_gpio.c_bcma_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_gpio.c_bcma_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.bcma_drv_cc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @bcma_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcma_drv_cc*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = call %struct.bcma_drv_cc* @bcma_gpio_get_cc(%struct.gpio_chip* %8)
  store %struct.bcma_drv_cc* %9, %struct.bcma_drv_cc** %7, align 8
  %10 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = call i32 @bcma_chipco_gpio_outen(%struct.bcma_drv_cc* %10, i32 %12, i32 %14)
  %16 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  %27 = call i32 @bcma_chipco_gpio_out(%struct.bcma_drv_cc* %16, i32 %18, i32 %26)
  ret i32 0
}

declare dso_local %struct.bcma_drv_cc* @bcma_gpio_get_cc(%struct.gpio_chip*) #1

declare dso_local i32 @bcma_chipco_gpio_outen(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_chipco_gpio_out(%struct.bcma_drv_cc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
