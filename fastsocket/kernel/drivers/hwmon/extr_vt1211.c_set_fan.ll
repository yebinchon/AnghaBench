; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt1211.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32*, i32, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@VT1211_REG_FAN_DIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"fan div value %ld not supported. Choose one of 1, 2, 4, or 8.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %28 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %27, i32 0, i32 3
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %31 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %32 = call i32 @vt1211_read8(%struct.vt1211_data* %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 3
  %36 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %37 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 6
  %42 = and i32 %41, 3
  %43 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %44 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = and i32 %47, 15
  %49 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %50 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %12, align 4
  switch i32 %51, label %136 [
    i32 128, label %52
    i32 129, label %79
  ]

52:                                               ; preds = %4
  %53 = load i64, i64* %13, align 8
  %54 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %55 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @RPM_TO_REG(i64 %53, i32 %60)
  %62 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %63 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @VT1211_REG_FAN_MIN(i32 %69)
  %71 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %72 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @vt1211_write8(%struct.vt1211_data* %68, i32 %70, i32 %77)
  br label %140

79:                                               ; preds = %4
  %80 = load i64, i64* %13, align 8
  switch i64 %80, label %109 [
    i64 1, label %81
    i64 2, label %88
    i64 4, label %95
    i64 8, label %102
  ]

81:                                               ; preds = %79
  %82 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %83 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 0, i32* %87, align 4
  br label %115

88:                                               ; preds = %79
  %89 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %90 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 1, i32* %94, align 4
  br label %115

95:                                               ; preds = %79
  %96 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %97 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 2, i32* %101, align 4
  br label %115

102:                                              ; preds = %79
  %103 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %104 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 3, i32* %108, align 4
  br label %115

109:                                              ; preds = %79
  %110 = load i64, i64* @EINVAL, align 8
  %111 = sub i64 0, %110
  store i64 %111, i64* %8, align 8
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @dev_warn(%struct.device* %112, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %113)
  br label %141

115:                                              ; preds = %102, %95, %88, %81
  %116 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %117 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %118 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %119 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 6
  %124 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %125 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 4
  %130 = or i32 %123, %129
  %131 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %132 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %130, %133
  %135 = call i32 @vt1211_write8(%struct.vt1211_data* %116, i32 %117, i32 %134)
  br label %140

136:                                              ; preds = %4
  %137 = load %struct.device*, %struct.device** %5, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @dev_dbg(%struct.device* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %136, %115, %52
  br label %141

141:                                              ; preds = %140, %109
  %142 = load %struct.vt1211_data*, %struct.vt1211_data** %9, align 8
  %143 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %142, i32 0, i32 3
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i64, i64* %8, align 8
  ret i64 %145
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @RPM_TO_REG(i64, i32) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @VT1211_REG_FAN_MIN(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
