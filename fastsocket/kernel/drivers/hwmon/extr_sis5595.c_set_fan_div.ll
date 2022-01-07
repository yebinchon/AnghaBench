; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sis5595.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_sis5595.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sis5595_data = type { i32*, i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@SIS5595_REG_FANDIV = common dso_local global i32 0, align 4
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
  %10 = alloca %struct.sis5595_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.sis5595_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.sis5595_data* %17, %struct.sis5595_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %26 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %29 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %36 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DIV_FROM_REG(i32 %41)
  %43 = call i64 @FAN_FROM_REG(i32 %34, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %45 = load i32, i32* @SIS5595_REG_FANDIV, align 4
  %46 = call i32 @sis5595_read_value(%struct.sis5595_data* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i64, i64* %14, align 8
  switch i64 %47, label %76 [
    i64 1, label %48
    i64 2, label %55
    i64 4, label %62
    i64 8, label %69
  ]

48:                                               ; preds = %4
  %49 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %50 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  br label %85

55:                                               ; preds = %4
  %56 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %57 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  br label %85

62:                                               ; preds = %4
  %63 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %64 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 2, i32* %68, align 4
  br label %85

69:                                               ; preds = %4
  %70 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %71 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 3, i32* %75, align 4
  br label %85

76:                                               ; preds = %4
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %81 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %80, i32 0, i32 2
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* @EINVAL, align 8
  %84 = sub i64 0, %83
  store i64 %84, i64* %5, align 8
  br label %147

85:                                               ; preds = %69, %62, %55, %48
  %86 = load i32, i32* %12, align 4
  switch i32 %86, label %111 [
    i32 0, label %87
    i32 1, label %99
  ]

87:                                               ; preds = %85
  %88 = load i32, i32* %15, align 4
  %89 = and i32 %88, 207
  %90 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %91 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 4
  %98 = or i32 %89, %97
  store i32 %98, i32* %15, align 4
  br label %111

99:                                               ; preds = %85
  %100 = load i32, i32* %15, align 4
  %101 = and i32 %100, 63
  %102 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %103 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 6
  %110 = or i32 %101, %109
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %85, %99, %87
  %112 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %113 = load i32, i32* @SIS5595_REG_FANDIV, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @sis5595_write_value(%struct.sis5595_data* %112, i32 %113, i32 %114)
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %118 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DIV_FROM_REG(i32 %123)
  %125 = call i32 @FAN_TO_REG(i64 %116, i32 %124)
  %126 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %127 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @SIS5595_REG_FAN_MIN(i32 %133)
  %135 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %136 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @sis5595_write_value(%struct.sis5595_data* %132, i32 %134, i32 %141)
  %143 = load %struct.sis5595_data*, %struct.sis5595_data** %10, align 8
  %144 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %143, i32 0, i32 2
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i64, i64* %9, align 8
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %111, %76
  %148 = load i64, i64* %5, align 8
  ret i64 %148
}

declare dso_local %struct.sis5595_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @sis5595_read_value(%struct.sis5595_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sis5595_write_value(%struct.sis5595_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @SIS5595_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
