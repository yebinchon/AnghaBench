; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_tmax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7462.c_set_pwm_tmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7462_data = type { i32*, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7462_PWM_RANGE_SHIFT = common dso_local global i32 0, align 4
@ADT7462_PWM_HYST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_tmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_tmax(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.adt7462_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %22 = call %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.adt7462_data* %22, %struct.adt7462_data** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strict_strtol(i8* %23, i32 10, i64* %16)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %88

29:                                               ; preds = %4
  %30 = load %struct.adt7462_data*, %struct.adt7462_data** %13, align 8
  %31 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 64
  %39 = mul nsw i32 %38, 1000
  store i32 %39, i32* %14, align 4
  %40 = load i64, i64* %16, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %40, %42
  %44 = call i32 @find_trange_value(i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %88

50:                                               ; preds = %29
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @ADT7462_PWM_RANGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.adt7462_data*, %struct.adt7462_data** %13, align 8
  %55 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ADT7462_PWM_HYST_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load %struct.adt7462_data*, %struct.adt7462_data** %13, align 8
  %67 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %66, i32 0, i32 2
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.adt7462_data*, %struct.adt7462_data** %13, align 8
  %71 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %74 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %78 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %79 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ADT7462_REG_PWM_TRANGE(i64 %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %77, i32 %81, i32 %82)
  %84 = load %struct.adt7462_data*, %struct.adt7462_data** %13, align 8
  %85 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %50, %47, %26
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7462_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @find_trange_value(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TRANGE(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
