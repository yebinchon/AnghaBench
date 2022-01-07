; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank1_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank1_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.abituguru_data = type { i32*, i64**, i32 }

@ABIT_UGURU_SENSOR_BANK1 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank1_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank1_setting(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.abituguru_data* %17, %struct.abituguru_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 10)
  %20 = mul nsw i32 %19, 255
  %21 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %22 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %20, %29
  %31 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %32 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %30, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %43 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %46 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %45, i32 0, i32 1
  %47 = load i64**, i64*** %46, align 8
  %48 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64*, i64** %47, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %54 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %123

60:                                               ; preds = %4
  %61 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %62 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %61, i32 0, i32 1
  %63 = load i64**, i64*** %62, align 8
  %64 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64*, i64** %63, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %76 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %79 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64*, i64** %77, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %84 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %74, i64* %86, align 8
  %87 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %88 = load i64, i64* @ABIT_UGURU_SENSOR_BANK1, align 8
  %89 = add nsw i64 %88, 2
  %90 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %91 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %94 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %93, i32 0, i32 1
  %95 = load i64**, i64*** %94, align 8
  %96 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %97 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64*, i64** %95, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = call i64 @abituguru_write(%struct.abituguru_data* %87, i64 %89, i64 %92, i64* %100, i32 3)
  %102 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %103 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ule i64 %101, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %60
  %107 = load i64, i64* %13, align 8
  %108 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %109 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %108, i32 0, i32 1
  %110 = load i64**, i64*** %109, align 8
  %111 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %112 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i64*, i64** %110, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %117 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  store i64 %107, i64* %119, align 8
  %120 = load i64, i64* @EIO, align 8
  %121 = sub i64 0, %120
  store i64 %121, i64* %12, align 8
  br label %122

122:                                              ; preds = %106, %60
  br label %123

123:                                              ; preds = %122, %4
  %124 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %125 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i64, i64* %12, align 8
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
