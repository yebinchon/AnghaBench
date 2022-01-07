; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32*, i32, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@VT1211_REG_PWM_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_point_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto_point_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vt1211_data*, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.vt1211_data* %16, %struct.vt1211_data** %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @simple_strtol(i8* %25, i32* null, i32 10)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %28 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %31 = load i32, i32* @VT1211_REG_PWM_CTL, align 4
  %32 = call i32 @vt1211_read8(%struct.vt1211_data* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = and i32 %33, 15
  %35 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %36 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %14, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 15
  %42 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %43 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %47 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @TEMP_TO_REG(i32 %53, i64 %54)
  %56 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %57 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @VT1211_REG_PWM_AUTO_TEMP(i32 %63)
  %65 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %66 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @vt1211_write8(%struct.vt1211_data* %62, i32 %64, i32 %71)
  %73 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %74 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %8, align 8
  ret i64 %76
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @TEMP_TO_REG(i32, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @VT1211_REG_PWM_AUTO_TEMP(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
