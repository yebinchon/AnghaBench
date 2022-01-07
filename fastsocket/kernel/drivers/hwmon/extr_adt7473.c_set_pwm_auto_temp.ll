; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_pwm_auto_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_pwm_auto_temp.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %73

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  switch i64 %28, label %33 [
    i64 1, label %29
    i64 2, label %29
    i64 6, label %29
    i64 7, label %29
    i64 0, label %32
  ]

29:                                               ; preds = %27, %27, %27, %27
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %14, align 8
  br label %36

32:                                               ; preds = %27
  store i64 4, i64* %14, align 8
  br label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %73

36:                                               ; preds = %32, %29
  %37 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %38 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %41 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ADT7473_REG_PWM_BHVR(i64 %43)
  %45 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %40, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @ADT7473_PWM_BHVR_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @ADT7473_PWM_BHVR_MASK, align 8
  %51 = xor i64 %50, -1
  %52 = and i64 %49, %51
  %53 = or i64 %48, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %55 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %56 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @ADT7473_REG_PWM_BHVR(i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %54, i32 %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %63 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %66 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  store i64 %61, i64* %68, align 8
  %69 = load %struct.adt7473_data*, %struct.adt7473_data** %13, align 8
  %70 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %36, %33, %24
  %74 = load i64, i64* %5, align 8
  ret i64 %74
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
