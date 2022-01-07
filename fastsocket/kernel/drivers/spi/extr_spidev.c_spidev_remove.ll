; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spidev_data = type { i64, i32, i32, i32, i32* }

@device_list_lock = common dso_local global i32 0, align 4
@spidev_class = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spidev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spidev_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.spidev_data* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.spidev_data* %5, %struct.spidev_data** %3, align 8
  %6 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %7 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %10 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = call i32 @spi_set_drvdata(%struct.spi_device* %11, i32* null)
  %13 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %14 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %13, i32 0, i32 3
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = call i32 @mutex_lock(i32* @device_list_lock)
  %17 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %18 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %17, i32 0, i32 2
  %19 = call i32 @list_del(i32* %18)
  %20 = load i32, i32* @spidev_class, align 4
  %21 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %22 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_destroy(i32 %20, i32 %23)
  %25 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %26 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MINOR(i32 %27)
  %29 = load i32, i32* @minors, align 4
  %30 = call i32 @clear_bit(i32 %28, i32 %29)
  %31 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %32 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.spidev_data*, %struct.spidev_data** %3, align 8
  %37 = call i32 @kfree(%struct.spidev_data* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = call i32 @mutex_unlock(i32* @device_list_lock)
  ret i32 0
}

declare dso_local %struct.spidev_data* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @kfree(%struct.spidev_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
