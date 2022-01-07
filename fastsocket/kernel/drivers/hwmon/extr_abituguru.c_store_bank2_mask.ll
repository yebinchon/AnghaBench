; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank2_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_bank2_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.abituguru_data = type { i32, i32** }

@ABIT_UGURU_SENSOR_BANK2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_bank2_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_bank2_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
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
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %22 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %25 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %28 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %4
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %41 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %39
  store i32 %50, i32* %48, align 4
  br label %67

51:                                               ; preds = %4
  %52 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %57 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %60 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %55
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %51, %36
  %68 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %69 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %72 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %67
  %81 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %82 = load i64, i64* @ABIT_UGURU_SENSOR_BANK2, align 8
  %83 = add nsw i64 %82, 2
  %84 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %85 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %88 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %91 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32*, i32** %89, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @abituguru_write(%struct.abituguru_data* %81, i64 %83, i64 %86, i32* %94, i32 2)
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %110

97:                                               ; preds = %80
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %100 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %103 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %98, i32* %107, align 4
  %108 = load i64, i64* @EIO, align 8
  %109 = sub i64 0, %108
  store i64 %109, i64* %12, align 8
  br label %110

110:                                              ; preds = %97, %80, %67
  %111 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %112 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %111, i32 0, i32 0
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %12, align 8
  ret i64 %114
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abituguru_write(%struct.abituguru_data*, i64, i64, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
