; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt8231_data = type { i32*, i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@VT8231_REG_FANDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt8231_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.vt8231_data* %17, %struct.vt8231_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %26 = load i32, i32* @VT8231_REG_FANDIV, align 4
  %27 = call i32 @vt8231_read_value(%struct.vt8231_data* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %29 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %36 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DIV_FROM_REG(i32 %41)
  %43 = call i64 @FAN_FROM_REG(i32 %34, i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %45 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load i64, i64* %12, align 8
  switch i64 %47, label %76 [
    i64 1, label %48
    i64 2, label %55
    i64 4, label %62
    i64 8, label %69
  ]

48:                                               ; preds = %4
  %49 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %50 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  br label %85

55:                                               ; preds = %4
  %56 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %57 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %85

62:                                               ; preds = %4
  %63 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %64 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 2, i32* %68, align 4
  br label %85

69:                                               ; preds = %4
  %70 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %71 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 3, i32* %75, align 4
  br label %85

76:                                               ; preds = %4
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %81 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub i64 0, %83
  store i64 %84, i64* %5, align 8
  br label %137

85:                                               ; preds = %69, %62, %55, %48
  %86 = load i64, i64* %15, align 8
  %87 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %88 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DIV_FROM_REG(i32 %93)
  %95 = call i32 @FAN_TO_REG(i64 %86, i32 %94)
  %96 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %97 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @VT8231_REG_FAN_MIN(i32 %103)
  %105 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %106 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @vt8231_write_value(%struct.vt8231_data* %102, i32 %104, i32 %111)
  %113 = load i32, i32* %14, align 4
  %114 = and i32 %113, 15
  %115 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %116 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 6
  %121 = or i32 %114, %120
  %122 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %123 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 4
  %128 = or i32 %121, %127
  store i32 %128, i32* %14, align 4
  %129 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %130 = load i32, i32* @VT8231_REG_FANDIV, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @vt8231_write_value(%struct.vt8231_data* %129, i32 %130, i32 %131)
  %133 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %134 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %133, i32 0, i32 2
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %5, align 8
  br label %137

137:                                              ; preds = %85, %76
  %138 = load i64, i64* %5, align 8
  ret i64 %138
}

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @vt8231_read_value(%struct.vt8231_data*, i32) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @vt8231_write_value(%struct.vt8231_data*, i32, i32) #1

declare dso_local i32 @VT8231_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
