; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_pwm_auto_point1_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_pwm_auto_point1_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i32, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@fscsyl = common dso_local global i32 0, align 4
@FSCHMD_REG_FAN_MIN = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_auto_point1_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_auto_point1_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %19 = call i64 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %24 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @fscsyl, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22, %4
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @SENSORS_LIMIT(i64 %30, i32 128, i32 255)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = sub i64 %32, 128
  %34 = mul i64 %33, 2
  %35 = add i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %38 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %37, i32 0, i32 2
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 @to_i2c_client(%struct.device* %40)
  %42 = load i32**, i32*** @FSCHMD_REG_FAN_MIN, align 8
  %43 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %44 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %42, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @i2c_smbus_write_byte_data(i32 %41, i32 %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %57 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  %62 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %63 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %8, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

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
