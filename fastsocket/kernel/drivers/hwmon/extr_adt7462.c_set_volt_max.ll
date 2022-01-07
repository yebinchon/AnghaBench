; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_volt_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_volt_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7462_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_volt_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_volt_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7462_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %20 = call %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adt7462_data* %20, %struct.adt7462_data** %12, align 8
  %21 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @voltage_multiplier(%struct.adt7462_data* %21, i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strict_strtol(i8* %26, i32 10, i64* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %4
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %66

35:                                               ; preds = %29
  %36 = load i64, i64* %14, align 8
  %37 = mul nsw i64 %36, 1000
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @DIV_ROUND_CLOSEST(i64 %38, i32 %39)
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i64 @SENSORS_LIMIT(i64 %41, i32 0, i32 255)
  store i64 %42, i64* %14, align 8
  %43 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %44 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %48 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %51 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  store i64 %46, i64* %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %56 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %57 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data* %55, i64 %58)
  %60 = load i64, i64* %14, align 8
  %61 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %54, i32 %59, i64 %60)
  %62 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %63 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %35, %32
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @voltage_multiplier(%struct.adt7462_data*, i64) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @ADT7462_REG_VOLT_MAX(%struct.adt7462_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
