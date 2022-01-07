; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_dme1737.c_set_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i8**, i8**, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_zone(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  switch i32 %29, label %169 [
    i32 130, label %30
    i32 131, label %84
    i32 129, label %104
    i32 128, label %149
  ]

30:                                               ; preds = %4
  %31 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @DME1737_REG_ZONE_LOW(i32 %32)
  %34 = call i8* @dme1737_read(%struct.dme1737_data* %31, i32 %33)
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %34, i8** %40, align 8
  %41 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %42 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %41, i32 0, i32 3
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @TEMP_FROM_REG(i8* %47, i32 8)
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %13, align 8
  %51 = sub nsw i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 2
  %57 = zext i1 %56 to i32
  %58 = call i32 @DME1737_REG_ZONE_HYST(i32 %57)
  %59 = call i8* @dme1737_read(%struct.dme1737_data* %54, i32 %58)
  %60 = call i8* @TEMP_HYST_TO_REG(i32 %52, i32 %53, i8* %59)
  %61 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %62 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %61, i32 0, i32 4
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %63, i64 %67
  store i8* %60, i8** %68, align 8
  %69 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 2
  %72 = zext i1 %71 to i32
  %73 = call i32 @DME1737_REG_ZONE_HYST(i32 %72)
  %74 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %75 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %74, i32 0, i32 4
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @dme1737_write(%struct.dme1737_data* %69, i32 %73, i8* %82)
  br label %173

84:                                               ; preds = %4
  %85 = load i64, i64* %13, align 8
  %86 = call i8* @TEMP_TO_REG(i64 %85)
  %87 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %88 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %87, i32 0, i32 3
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %86, i8** %92, align 8
  %93 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @DME1737_REG_ZONE_LOW(i32 %94)
  %96 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %97 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @dme1737_write(%struct.dme1737_data* %93, i32 %95, i8* %102)
  br label %173

104:                                              ; preds = %4
  %105 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @DME1737_REG_ZONE_LOW(i32 %106)
  %108 = call i8* @dme1737_read(%struct.dme1737_data* %105, i32 %107)
  %109 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %110 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %108, i8** %114, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %117 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %116, i32 0, i32 3
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @TEMP_FROM_REG(i8* %122, i32 8)
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %115, %124
  %126 = trunc i64 %125 to i32
  %127 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @DME1737_REG_PWM_FREQ(i32 %128)
  %130 = call i8* @dme1737_read(%struct.dme1737_data* %127, i32 %129)
  %131 = call i8* @TEMP_RANGE_TO_REG(i32 %126, i8* %130)
  %132 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %133 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %131, i8** %137, align 8
  %138 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @DME1737_REG_PWM_FREQ(i32 %139)
  %141 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %142 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @dme1737_write(%struct.dme1737_data* %138, i32 %140, i8* %147)
  br label %173

149:                                              ; preds = %4
  %150 = load i64, i64* %13, align 8
  %151 = call i8* @TEMP_TO_REG(i64 %150)
  %152 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %153 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %152, i32 0, i32 1
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %151, i8** %157, align 8
  %158 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @DME1737_REG_ZONE_ABS(i32 %159)
  %161 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %162 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %161, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @dme1737_write(%struct.dme1737_data* %158, i32 %160, i8* %167)
  br label %173

169:                                              ; preds = %4
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @dev_dbg(%struct.device* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %169, %149, %104, %84, %30
  %174 = load %struct.dme1737_data*, %struct.dme1737_data** %9, align 8
  %175 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %174, i32 0, i32 0
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i64, i64* %8, align 8
  ret i64 %177
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @DME1737_REG_ZONE_LOW(i32) #1

declare dso_local i8* @TEMP_HYST_TO_REG(i32, i32, i8*) #1

declare dso_local i32 @TEMP_FROM_REG(i8*, i32) #1

declare dso_local i32 @DME1737_REG_ZONE_HYST(i32) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i8*) #1

declare dso_local i8* @TEMP_TO_REG(i64) #1

declare dso_local i8* @TEMP_RANGE_TO_REG(i32, i8*) #1

declare dso_local i32 @DME1737_REG_PWM_FREQ(i32) #1

declare dso_local i32 @DME1737_REG_ZONE_ABS(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
