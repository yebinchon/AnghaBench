; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i64**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"pwm value %ld is out of range. Choose a value between 0 and 255.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_point_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto_point_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt1211_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.vt1211_data* %16, %struct.vt1211_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %11, align 8
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @simple_strtol(i8* %25, i32* null, i32 10)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %14, align 8
  %31 = icmp sgt i64 %30, 255
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %4
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %73

38:                                               ; preds = %29
  %39 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %40 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i64, i64* %14, align 8
  %43 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %44 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %43, i32 0, i32 0
  %45 = load i64**, i64*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %42, i64* %52, align 8
  %53 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 %54, i32 %55)
  %57 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %58 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %57, i32 0, i32 0
  %59 = load i64**, i64*** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @vt1211_write8(%struct.vt1211_data* %53, i32 %56, i64 %67)
  %69 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %70 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %38, %32
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i64) #1

declare dso_local i32 @VT1211_REG_PWM_AUTO_PWM(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
