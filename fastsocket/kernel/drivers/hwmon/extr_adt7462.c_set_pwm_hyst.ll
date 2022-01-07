; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7462_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7462_PWM_HYST_MASK = common dso_local global i64 0, align 8
@ADT7462_PWM_RANGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %68

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @DIV_ROUND_CLOSEST(i64 %27, i32 1000)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @SENSORS_LIMIT(i64 %29, i32 0, i32 15)
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* @ADT7462_PWM_HYST_MASK, align 8
  %32 = load i64, i64* %13, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %13, align 8
  %34 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %35 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ADT7462_PWM_RANGE_MASK, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* %13, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %47 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %51 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %54 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %49, i64* %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %58 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ADT7462_REG_PWM_TRANGE(i64 %60)
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %61, i64 %62)
  %64 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %65 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %26, %23
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @ADT7462_REG_PWM_TRANGE(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
