; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m1.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m1.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m1_data = type { i32*, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@SMSC47M1_REG_FANDIV = common dso_local global i32 0, align 4
@SMSC47M2_REG_FANDIV3 = common dso_local global i32 0, align 4
@SMSC47M1_REG_FAN_PRELOAD = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.smsc47m1_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.smsc47m1_data* %19, %struct.smsc47m1_data** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @simple_strtol(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %26 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @DIV_FROM_REG(i32 %31)
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %15, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i64, i64* %9, align 8
  store i64 %37, i64* %5, align 8
  br label %172

38:                                               ; preds = %4
  %39 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %40 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i64, i64* %13, align 8
  switch i64 %42, label %71 [
    i64 1, label %43
    i64 2, label %50
    i64 4, label %57
    i64 8, label %64
  ]

43:                                               ; preds = %38
  %44 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %45 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 0, i32* %49, align 4
  br label %77

50:                                               ; preds = %38
  %51 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %52 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 1, i32* %56, align 4
  br label %77

57:                                               ; preds = %38
  %58 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %59 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 2, i32* %63, align 4
  br label %77

64:                                               ; preds = %38
  %65 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %66 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 3, i32* %70, align 4
  br label %77

71:                                               ; preds = %38
  %72 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %73 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* @EINVAL, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %172

77:                                               ; preds = %64, %57, %50, %43
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %127 [
    i32 0, label %79
    i32 1, label %79
    i32 2, label %108
  ]

79:                                               ; preds = %77, %77
  %80 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %81 = load i32, i32* @SMSC47M1_REG_FANDIV, align 4
  %82 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %80, i32 %81)
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 4, %84
  %86 = shl i32 3, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %82, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %14, align 8
  %90 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %91 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 4, %98
  %100 = shl i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %14, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %14, align 8
  %104 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %105 = load i32, i32* @SMSC47M1_REG_FANDIV, align 4
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %104, i32 %105, i64 %106)
  br label %127

108:                                              ; preds = %77
  %109 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %110 = load i32, i32* @SMSC47M2_REG_FANDIV3, align 4
  %111 = call i32 @smsc47m1_read_value(%struct.smsc47m1_data* %109, i32 %110)
  %112 = and i32 %111, 207
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %14, align 8
  %114 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %115 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %14, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %14, align 8
  %123 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %124 = load i32, i32* @SMSC47M2_REG_FANDIV3, align 4
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %123, i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %77, %108, %79
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %130 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 192, %135
  %137 = sext i32 %136 to i64
  %138 = mul nsw i64 %128, %137
  %139 = load i64, i64* %13, align 8
  %140 = sdiv i64 %139, 2
  %141 = add nsw i64 %138, %140
  %142 = load i64, i64* %13, align 8
  %143 = sdiv i64 %141, %142
  %144 = sub nsw i64 192, %143
  store i64 %144, i64* %14, align 8
  %145 = load i64, i64* %14, align 8
  %146 = call i32 @SENSORS_LIMIT(i64 %145, i32 0, i32 191)
  %147 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %148 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %154 = load i32*, i32** @SMSC47M1_REG_FAN_PRELOAD, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %160 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %153, i32 %158, i64 %166)
  %168 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %169 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %168, i32 0, i32 2
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load i64, i64* %9, align 8
  store i64 %171, i64* %5, align 8
  br label %172

172:                                              ; preds = %127, %71, %36
  %173 = load i64, i64* %5, align 8
  ret i64 %173
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i64 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc47m1_read_value(%struct.smsc47m1_data*, i32) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i64) #1

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
