; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_set_pwm_auto_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_set_pwm_auto_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7470_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7470_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %21 = call %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.adt7470_data* %21, %struct.adt7470_data** %12, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ADT7470_REG_PWM_AUTO_TEMP(i64 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strict_strtol(i8* %26, i32 10, i64* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %87

32:                                               ; preds = %4
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @cvt_auto_temp(i64 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %5, align 8
  br label %87

39:                                               ; preds = %32
  %40 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %41 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %45 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  store i64 %43, i64* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = urem i64 %56, 2
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %60, 15
  store i32 %61, i32* %15, align 4
  %62 = load i64, i64* %14, align 8
  %63 = shl i64 %62, 4
  %64 = and i64 %63, 240
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = or i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %15, align 4
  br label %78

69:                                               ; preds = %39
  %70 = load i32, i32* %15, align 4
  %71 = and i32 %70, 240
  store i32 %71, i32* %15, align 4
  %72 = load i64, i64* %14, align 8
  %73 = and i64 %72, 15
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = or i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %69, %59
  %79 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %79, i32 %80, i32 %81)
  %83 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %84 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %83, i32 0, i32 1
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %9, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %78, %37, %29
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ADT7470_REG_PWM_AUTO_TEMP(i64) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i64 @cvt_auto_temp(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
