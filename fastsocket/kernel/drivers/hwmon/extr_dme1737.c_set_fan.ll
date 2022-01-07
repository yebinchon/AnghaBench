; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32*, i32*, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Fan type value %ld not supported. Choose one of 1, 2, or 4.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %27 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %26, i32 0, i32 3
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %158 [
    i32 129, label %30
    i32 130, label %97
    i32 128, label %119
  ]

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i64, i64* %13, align 8
  %35 = call i8* @FAN_TO_REG(i64 %34, i32 0)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %38 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %71

43:                                               ; preds = %30
  %44 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @DME1737_REG_FAN_OPT(i32 %45)
  %47 = call i32 @dme1737_read(%struct.dme1737_data* %44, i32 %46)
  %48 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %49 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %56 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @FAN_TPC_FROM_REG(i32 %61)
  %63 = call i8* @FAN_TO_REG(i64 %54, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %66 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %43, %33
  %72 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @DME1737_REG_FAN_MIN(i32 %73)
  %75 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %76 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  %83 = call i32 @dme1737_write(%struct.dme1737_data* %72, i32 %74, i32 %82)
  %84 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @DME1737_REG_FAN_MIN(i32 %85)
  %87 = add nsw i32 %86, 1
  %88 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %89 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 8
  %96 = call i32 @dme1737_write(%struct.dme1737_data* %84, i32 %87, i32 %95)
  br label %162

97:                                               ; preds = %4
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @FAN_MAX_TO_REG(i64 %98)
  %100 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %101 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %99, i32* %106, align 4
  %107 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @DME1737_REG_FAN_MAX(i32 %108)
  %110 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %111 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dme1737_write(%struct.dme1737_data* %107, i32 %109, i32 %117)
  br label %162

119:                                              ; preds = %4
  %120 = load i64, i64* %13, align 8
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %134, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %13, align 8
  %124 = icmp eq i64 %123, 2
  br i1 %124, label %134, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* %13, align 8
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @EINVAL, align 8
  %130 = sub i64 0, %129
  store i64 %130, i64* %8, align 8
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @dev_warn(%struct.device* %131, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %132)
  br label %163

134:                                              ; preds = %125, %122, %119
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @DME1737_REG_FAN_OPT(i32 %137)
  %139 = call i32 @dme1737_read(%struct.dme1737_data* %136, i32 %138)
  %140 = call i32 @FAN_TYPE_TO_REG(i64 %135, i32 %139)
  %141 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %142 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @DME1737_REG_FAN_OPT(i32 %148)
  %150 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %151 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dme1737_write(%struct.dme1737_data* %147, i32 %149, i32 %156)
  br label %162

158:                                              ; preds = %4
  %159 = load %struct.device*, %struct.device** %5, align 8
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @dev_dbg(%struct.device* %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %158, %134, %97, %71
  br label %163

163:                                              ; preds = %162, %128
  %164 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %165 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %164, i32 0, i32 3
  %166 = call i32 @mutex_unlock(i32* %165)
  %167 = load i64, i64* %8, align 8
  ret i64 %167
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @DME1737_REG_FAN_OPT(i32) #1

declare dso_local i32 @FAN_TPC_FROM_REG(i32) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i32) #1

declare dso_local i32 @DME1737_REG_FAN_MIN(i32) #1

declare dso_local i32 @FAN_MAX_TO_REG(i64) #1

declare dso_local i32 @DME1737_REG_FAN_MAX(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @FAN_TYPE_TO_REG(i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
