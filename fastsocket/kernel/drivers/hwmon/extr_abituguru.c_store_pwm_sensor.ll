; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.abituguru_data = type { i64*, i64**, i64**, i32 }

@ABIT_UGURU_TEMP_SENSOR = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %9, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.abituguru_data* %18, %struct.abituguru_data** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i32* null, i32 10)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %25 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %29 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %27, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %4
  %36 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %37 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %36, i32 0, i32 1
  %38 = load i64**, i64*** %37, align 8
  %39 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64*, i64** %38, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %13, align 8
  %46 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %47 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %46, i32 0, i32 2
  %48 = load i64**, i64*** %47, align 8
  %49 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %50 = getelementptr inbounds i64*, i64** %48, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %56 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %55, i32 0, i32 1
  %57 = load i64**, i64*** %56, align 8
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64*, i64** %57, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 240
  store i64 %65, i64* %63, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %68 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64*, i64** %69, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = or i64 %76, %66
  store i64 %77, i64* %75, align 8
  %78 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %79 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %78, i32 0, i32 1
  %80 = load i64**, i64*** %79, align 8
  %81 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %82 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i64*, i64** %80, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %35
  %91 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %92 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %95 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %98 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %97, i32 0, i32 1
  %99 = load i64**, i64*** %98, align 8
  %100 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %101 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64*, i64** %99, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = call i32 @abituguru_write(%struct.abituguru_data* %91, i64 %93, i64 %96, i64* %104, i32 5)
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %120

107:                                              ; preds = %90
  %108 = load i64, i64* %13, align 8
  %109 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %110 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %109, i32 0, i32 1
  %111 = load i64**, i64*** %110, align 8
  %112 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %113 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64*, i64** %111, i64 %114
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  store i64 %108, i64* %117, align 8
  %118 = load i64, i64* @EIO, align 8
  %119 = sub i64 0, %118
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %107, %90
  br label %121

121:                                              ; preds = %120, %35
  br label %125

122:                                              ; preds = %4
  %123 = load i64, i64* @EINVAL, align 8
  %124 = sub i64 0, %123
  store i64 %124, i64* %12, align 8
  br label %125

125:                                              ; preds = %122, %121
  %126 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %127 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %126, i32 0, i32 3
  %128 = call i32 @mutex_unlock(i32* %127)
  %129 = load i64, i64* %12, align 8
  ret i64 %129
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abituguru_write(%struct.abituguru_data*, i64, i64, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
