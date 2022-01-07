; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_tmin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_tmin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7462_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_tmin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_tmin(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7462_data*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %11, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %19 = call %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.adt7462_data* %19, %struct.adt7462_data** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strict_strtol(i8* %20, i32 10, i64* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %55

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @DIV_ROUND_CLOSEST(i64 %27, i32 1000)
  %29 = add nsw i32 %28, 64
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @SENSORS_LIMIT(i64 %31, i32 0, i32 255)
  store i64 %32, i64* %13, align 8
  %33 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %34 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %38 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 %36, i64* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %45 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ADT7462_REG_PWM_TMIN(i64 %47)
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %48, i64 %49)
  %51 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %52 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %26, %23
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @ADT7462_REG_PWM_TMIN(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
