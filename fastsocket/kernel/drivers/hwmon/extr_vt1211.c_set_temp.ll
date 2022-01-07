; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@regtempmax = common dso_local global i32* null, align 8
@regtemphyst = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vt1211_data*, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.vt1211_data* %15, %struct.vt1211_data** %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @simple_strtol(i8* %24, i32* null, i32 10)
  store i64 %25, i64* %13, align 8
  %26 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %27 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %78 [
    i32 129, label %30
    i32 128, label %54
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i8* @TEMP_TO_REG(i32 %31, i64 %32)
  %34 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %35 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* %33, i8** %39, align 8
  %40 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %41 = load i32*, i32** @regtempmax, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %47 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @vt1211_write8(%struct.vt1211_data* %40, i32 %45, i8* %52)
  br label %82

54:                                               ; preds = %4
  %55 = load i32, i32* %11, align 4
  %56 = load i64, i64* %13, align 8
  %57 = call i8* @TEMP_TO_REG(i32 %55, i64 %56)
  %58 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %59 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %58, i32 0, i32 1
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %65 = load i32*, i32** @regtemphyst, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %71 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @vt1211_write8(%struct.vt1211_data* %64, i32 %69, i8* %76)
  br label %82

78:                                               ; preds = %4
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %54, %30
  %83 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %84 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %8, align 8
  ret i64 %86
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @TEMP_TO_REG(i32, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
