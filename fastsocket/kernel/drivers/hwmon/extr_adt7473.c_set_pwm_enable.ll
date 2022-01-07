; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7473_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7473_PWM_BHVR_SHIFT = common dso_local global i64 0, align 8
@ADT7473_PWM_BHVR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.adt7473_data*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %11, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %12, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %20 = call %struct.adt7473_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adt7473_data* %20, %struct.adt7473_data** %13, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strict_strtol(i8* %21, i32 10, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %72

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  switch i64 %28, label %32 [
    i64 0, label %29
    i64 1, label %30
    i64 2, label %31
  ]

29:                                               ; preds = %27
  store i64 3, i64* %14, align 8
  br label %35

30:                                               ; preds = %27
  store i64 7, i64* %14, align 8
  br label %35

31:                                               ; preds = %27
  store i64 4, i64* %14, align 8
  br label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %72

35:                                               ; preds = %31, %30, %29
  %36 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %37 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @ADT7473_REG_PWM_BHVR(i64 %42)
  %44 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @ADT7473_PWM_BHVR_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @ADT7473_PWM_BHVR_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  %52 = or i64 %47, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %54 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ADT7473_REG_PWM_BHVR(i64 %56)
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %53, i32 %57, i64 %58)
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %62 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 %60, i64* %67, align 8
  %68 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %69 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %35, %32, %24
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7473_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADT7473_REG_PWM_BHVR(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
