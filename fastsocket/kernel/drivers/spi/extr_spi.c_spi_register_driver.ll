; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_driver = type { %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@spi_bus_type = common dso_local global i32 0, align 4
@spi_drv_probe = common dso_local global i32 0, align 4
@spi_drv_remove = common dso_local global i32 0, align 4
@spi_drv_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_register_driver(%struct.spi_driver* %0) #0 {
  %2 = alloca %struct.spi_driver*, align 8
  store %struct.spi_driver* %0, %struct.spi_driver** %2, align 8
  %3 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %4 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  store i32* @spi_bus_type, i32** %5, align 8
  %6 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %7 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @spi_drv_probe, align 4
  %12 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %13 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %17 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @spi_drv_remove, align 4
  %22 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %23 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %27 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @spi_drv_shutdown, align 4
  %32 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %33 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.spi_driver*, %struct.spi_driver** %2, align 8
  %37 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %36, i32 0, i32 0
  %38 = call i32 @driver_register(%struct.TYPE_2__* %37)
  ret i32 %38
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
