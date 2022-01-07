; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_temp_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_temp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@FSCHMD_REG_TEMP_LIMIT = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fschmd_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.fschmd_data* %17, %struct.fschmd_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @simple_strtol(i8* %18, i32* null, i32 10)
  %20 = sdiv i32 %19, 1000
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @SENSORS_LIMIT(i64 %22, i32 -128, i32 127)
  %24 = add nsw i32 %23, 128
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %27 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @to_i2c_client(%struct.device* %29)
  %31 = load i32**, i32*** @FSCHMD_REG_TEMP_LIMIT, align 8
  %32 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %33 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @i2c_smbus_write_byte_data(i32 %30, i32 %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %45 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %51 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %50, i32 0, i32 2
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %8, align 8
  ret i64 %53
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
