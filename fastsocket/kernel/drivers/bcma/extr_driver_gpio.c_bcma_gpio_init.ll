; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_gpio.c_bcma_gpio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_gpio.c_bcma_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_4__*, %struct.gpio_chip }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.gpio_chip = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"bcma_gpio\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@bcma_gpio_request = common dso_local global i32 0, align 4
@bcma_gpio_free = common dso_local global i32 0, align 4
@bcma_gpio_get_value = common dso_local global i32 0, align 4
@bcma_gpio_set_value = common dso_local global i32 0, align 4
@bcma_gpio_direction_input = common dso_local global i32 0, align 4
@bcma_gpio_direction_output = common dso_local global i32 0, align 4
@BCMA_HOSTTYPE_SOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_gpio_init(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca %struct.bcma_drv_cc*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %2, align 8
  %4 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %4, i32 0, i32 1
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* @THIS_MODULE, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @bcma_gpio_request, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @bcma_gpio_free, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @bcma_gpio_get_value, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @bcma_gpio_set_value, align 4
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @bcma_gpio_direction_input, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @bcma_gpio_direction_output, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 1
  store i32 16, i32* %30, align 8
  %31 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %2, align 8
  %32 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BCMA_HOSTTYPE_SOC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %42 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 2
  store i32 -1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %48 = call i32 @gpiochip_add(%struct.gpio_chip* %47)
  ret i32 %48
}

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
