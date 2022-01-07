; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_set_pwm_auto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_set_pwm_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adt7470_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7470_PWM2_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_PWM1_AUTO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7470_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %22 = call %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.adt7470_data* %22, %struct.adt7470_data** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ADT7470_REG_PWM_CFG(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strict_strtol(i8* %27, i32 10, i64* %15)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %90

33:                                               ; preds = %4
  %34 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ADT7470_PWM2_AUTO_MASK, align 4
  store i32 %40, i32* %14, align 4
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @ADT7470_PWM1_AUTO_MASK, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 2
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %15, align 8
  %48 = icmp ne i64 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %5, align 8
  br label %90

52:                                               ; preds = %46, %43
  %53 = load i64, i64* %15, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %15, align 8
  %55 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %56 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %60 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %61, i64 %65
  store i64 %58, i64* %66, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %16, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %16, align 4
  br label %81

76:                                               ; preds = %52
  %77 = load i32, i32* %14, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %16, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %82, i32 %83, i32 %84)
  %86 = load %struct.adt7470_data*, %struct.adt7470_data** %12, align 8
  %87 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i64, i64* %9, align 8
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %81, %49, %30
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ADT7470_REG_PWM_CFG(i32) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

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
