; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank2_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank2_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i64**, i32 }

@ABIT_UGURU_FAN_MAX = common dso_local global i32 0, align 4
@abituguru_bank2_min_threshold = common dso_local global i64 0, align 8
@abituguru_bank2_max_threshold = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_SENSOR_BANK2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank2_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank2_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.abituguru_data* %18, %struct.abituguru_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i32* null, i32 10)
  %21 = mul nsw i32 %20, 255
  %22 = load i32, i32* @ABIT_UGURU_FAN_MAX, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %21, %23
  %25 = load i32, i32* @ABIT_UGURU_FAN_MAX, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @abituguru_bank2_min_threshold, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %4
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @abituguru_bank2_max_threshold, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %4
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %126

39:                                               ; preds = %32
  %40 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %41 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %44 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %43, i32 0, i32 0
  %45 = load i64**, i64*** %44, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64*, i64** %45, i64 %48
  %50 = load i64*, i64** %49, align 8
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %121

58:                                               ; preds = %39
  %59 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %60 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %59, i32 0, i32 0
  %61 = load i64**, i64*** %60, align 8
  %62 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i64*, i64** %61, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %68 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %74 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %73, i32 0, i32 0
  %75 = load i64**, i64*** %74, align 8
  %76 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %77 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64*, i64** %75, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  store i64 %72, i64* %84, align 8
  %85 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %86 = load i64, i64* @ABIT_UGURU_SENSOR_BANK2, align 8
  %87 = add nsw i64 %86, 2
  %88 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %92 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %91, i32 0, i32 0
  %93 = load i64**, i64*** %92, align 8
  %94 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %95 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64*, i64** %93, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = call i64 @abituguru_write(%struct.abituguru_data* %85, i64 %87, i64 %90, i64* %98, i32 2)
  %100 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %101 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ule i64 %99, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %58
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %107 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %106, i32 0, i32 0
  %108 = load i64**, i64*** %107, align 8
  %109 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %110 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i64*, i64** %108, i64 %111
  %113 = load i64*, i64** %112, align 8
  %114 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %115 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  store i64 %105, i64* %117, align 8
  %118 = load i64, i64* @EIO, align 8
  %119 = sub i64 0, %118
  store i64 %119, i64* %13, align 8
  br label %120

120:                                              ; preds = %104, %58
  br label %121

121:                                              ; preds = %120, %39
  %122 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %123 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i64, i64* %13, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %121, %36
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @abituguru_write(%struct.abituguru_data*, i64, i64, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
