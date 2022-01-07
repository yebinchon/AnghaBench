; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i8**, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dme1737_data*, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.dme1737_data* %15, %struct.dme1737_data** %9, align 8
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
  %26 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %90 [
    i32 129, label %30
    i32 130, label %50
    i32 128, label %70
  ]

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = call i8* @TEMP_TO_REG(i64 %31)
  %33 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %34 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  store i8* %32, i8** %38, align 8
  %39 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @DME1737_REG_TEMP_MIN(i32 %40)
  %42 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %43 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @dme1737_write(%struct.dme1737_data* %39, i32 %41, i8* %48)
  br label %94

50:                                               ; preds = %4
  %51 = load i64, i64* %13, align 8
  %52 = call i8* @TEMP_TO_REG(i64 %51)
  %53 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %54 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* %52, i8** %58, align 8
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @DME1737_REG_TEMP_MAX(i32 %60)
  %62 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %63 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %62, i32 0, i32 2
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @dme1737_write(%struct.dme1737_data* %59, i32 %61, i8* %68)
  br label %94

70:                                               ; preds = %4
  %71 = load i64, i64* %13, align 8
  %72 = call i8* @TEMP_TO_REG(i64 %71)
  %73 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %74 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %72, i8** %78, align 8
  %79 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @DME1737_REG_TEMP_OFFSET(i32 %80)
  %82 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %83 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @dme1737_write(%struct.dme1737_data* %79, i32 %81, i8* %88)
  br label %94

90:                                               ; preds = %4
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @dev_dbg(%struct.device* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %70, %50, %30
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %96 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i64, i64* %8, align 8
  ret i64 %98
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @TEMP_TO_REG(i64) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i8*) #1

declare dso_local i32 @DME1737_REG_TEMP_MIN(i32) #1

declare dso_local i32 @DME1737_REG_TEMP_MAX(i32) #1

declare dso_local i32 @DME1737_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
