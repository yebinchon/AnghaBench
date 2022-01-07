; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spidev.c_spidev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spidev_data = type { i32, i32, i32, i32, %struct.spi_device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_list_lock = common dso_local global i32 0, align 4
@minors = common dso_local global i32 0, align 4
@N_SPI_MINORS = common dso_local global i64 0, align 8
@SPIDEV_MAJOR = common dso_local global i32 0, align 4
@spidev_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"spidev%d.%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no minor number available!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@device_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @spidev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spidev_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spidev_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.spidev_data* @kzalloc(i32 24, i32 %8)
  store %struct.spidev_data* %9, %struct.spidev_data** %4, align 8
  %10 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %11 = icmp ne %struct.spidev_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %18 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %17, i32 0, i32 4
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %20 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %23 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %26 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = call i32 @mutex_lock(i32* @device_list_lock)
  %29 = load i32, i32* @minors, align 4
  %30 = load i64, i64* @N_SPI_MINORS, align 8
  %31 = call i64 @find_first_zero_bit(i32 %29, i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @N_SPI_MINORS, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %15
  %36 = load i32, i32* @SPIDEV_MAJOR, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @MKDEV(i32 %36, i64 %37)
  %39 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %40 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @spidev_class, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %45 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.device* @device_create(i32 %41, i32* %43, i32 %46, %struct.spidev_data* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  store %struct.device* %56, %struct.device** %7, align 8
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i64 @IS_ERR(%struct.device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %35
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 @PTR_ERR(%struct.device* %61)
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  store i32 %65, i32* %5, align 4
  br label %72

66:                                               ; preds = %15
  %67 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %68 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %64
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @minors, align 4
  %78 = call i32 @set_bit(i64 %76, i32 %77)
  %79 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %80 = getelementptr inbounds %struct.spidev_data, %struct.spidev_data* %79, i32 0, i32 0
  %81 = call i32 @list_add(i32* %80, i32* @device_list)
  br label %82

82:                                               ; preds = %75, %72
  %83 = call i32 @mutex_unlock(i32* @device_list_lock)
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %89 = call i32 @spi_set_drvdata(%struct.spi_device* %87, %struct.spidev_data* %88)
  br label %93

90:                                               ; preds = %82
  %91 = load %struct.spidev_data*, %struct.spidev_data** %4, align 8
  %92 = call i32 @kfree(%struct.spidev_data* %91)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %12
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.spidev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local %struct.device* @device_create(i32, i32*, i32, %struct.spidev_data*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.spidev_data*) #1

declare dso_local i32 @kfree(%struct.spidev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
