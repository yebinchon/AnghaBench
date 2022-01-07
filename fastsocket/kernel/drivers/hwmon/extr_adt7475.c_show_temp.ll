; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32**, i32, i32, i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }

@THERM = common dso_local global i64 0, align 8
@CONFIG5_TEMPOFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adt7475_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %10)
  store %struct.adt7475_data* %11, %struct.adt7475_data** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %13 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute_2* %13, %struct.sensor_device_attribute_2** %8, align 8
  %14 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %15 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %126 [
    i32 129, label %17
    i32 128, label %66
    i32 131, label %100
    i32 130, label %111
  ]

17:                                               ; preds = %3
  %18 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %19 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %22 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %23, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %31 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %17
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %17
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 15
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %48 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %49 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* @THERM, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @reg2temp(%struct.adt7475_data* %47, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 1000
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %64 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %63, i32 0, i32 3
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %143

66:                                               ; preds = %3
  %67 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %68 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %67, i32 0, i32 3
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %71 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %74 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %72, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %80 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %85 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CONFIG5_TEMPOFFSET, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %66
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %91, 1000
  store i32 %92, i32* %9, align 4
  br label %96

93:                                               ; preds = %66
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %94, 500
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %98 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %97, i32 0, i32 3
  %99 = call i32 @mutex_unlock(i32* %98)
  br label %143

100:                                              ; preds = %3
  %101 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %102 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %105 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = ashr i32 %103, %108
  %110 = and i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %143

111:                                              ; preds = %3
  %112 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %113 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %116 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 32768, i32 16384
  %121 = and i32 %114, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %9, align 4
  br label %143

126:                                              ; preds = %3
  %127 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %128 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %129 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %128, i32 0, i32 0
  %130 = load i32**, i32*** %129, align 8
  %131 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %132 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %130, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %138 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @reg2temp(%struct.adt7475_data* %127, i32 %141)
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %126, %111, %100, %96, %46
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @sprintf(i8* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %145)
  ret i32 %146
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
