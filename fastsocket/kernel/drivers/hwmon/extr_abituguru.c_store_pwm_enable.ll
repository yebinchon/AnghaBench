; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_abituguru.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.abituguru_data = type { i32**, i32 }

@ABIT_UGURU_FAN_PWM_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  store i32 %19, i32* %12, align 4
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %22 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %25 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %28 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %62 [
    i32 0, label %35
    i32 2, label %49
  ]

35:                                               ; preds = %4
  %36 = load i32, i32* @ABIT_UGURU_FAN_PWM_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %39 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %37
  store i32 %48, i32* %46, align 4
  br label %65

49:                                               ; preds = %4
  %50 = load i32, i32* @ABIT_UGURU_FAN_PWM_ENABLE, align 4
  %51 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %52 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %50
  store i32 %61, i32* %59, align 4
  br label %65

62:                                               ; preds = %4
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %62, %49, %35
  %66 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %67 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %65
  %79 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %80 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %81 = add nsw i64 %80, 1
  %82 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %83 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %86 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32*, i32** %87, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @abituguru_write(%struct.abituguru_data* %79, i64 %81, i64 %84, i32* %92, i32 5)
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %108

95:                                               ; preds = %78
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %98 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %101 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32*, i32** %99, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %96, i32* %105, align 4
  %106 = load i64, i64* @EIO, align 8
  %107 = sub i64 0, %106
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %95, %78, %65
  %109 = load %struct.abituguru_data*, %struct.abituguru_data** %10, align 8
  %110 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i64, i64* %13, align 8
  ret i64 %112
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
