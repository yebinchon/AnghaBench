; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi.c_spi_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__, %struct.spi_master* }
%struct.TYPE_4__ = type { i32, i32*, %struct.device* }
%struct.device = type { i32 }
%struct.spi_master = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot alloc spi_device\0A\00", align 1
@spi_bus_type = common dso_local global i32 0, align 4
@spidev_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_device* @spi_alloc_device(%struct.spi_master* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %7 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %11 = call i32 @spi_master_get(%struct.spi_master* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.spi_device* null, %struct.spi_device** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.spi_device* @kzalloc(i32 32, i32 %15)
  store %struct.spi_device* %16, %struct.spi_device** %4, align 8
  %17 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %18 = icmp ne %struct.spi_device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %23 = call i32 @spi_master_put(%struct.spi_master* %22)
  store %struct.spi_device* null, %struct.spi_device** %2, align 8
  br label %43

24:                                               ; preds = %14
  %25 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %26 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  store %struct.spi_master* %25, %struct.spi_master** %27, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store %struct.device* %28, %struct.device** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* @spi_bus_type, i32** %34, align 8
  %35 = load i32, i32* @spidev_release, align 4
  %36 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i32 @device_initialize(%struct.TYPE_4__* %40)
  %42 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  store %struct.spi_device* %42, %struct.spi_device** %2, align 8
  br label %43

43:                                               ; preds = %24, %19, %13
  %44 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  ret %struct.spi_device* %44
}

declare dso_local i32 @spi_master_get(%struct.spi_master*) #1

declare dso_local %struct.spi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
