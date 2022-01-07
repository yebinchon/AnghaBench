; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i64 }
%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32**, i32 }

@EINVAL = common dso_local global i64 0, align 8
@CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7475_data*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %20 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adt7475_data* %20, %struct.adt7475_data** %12, align 8
  store i8 0, i8* %13, align 1
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strict_strtol(i8* %21, i32 10, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %121

27:                                               ; preds = %4
  %28 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %29 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %84 [
    i32 130, label %34
    i32 128, label %74
    i32 129, label %79
  ]

34:                                               ; preds = %27
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @PWM_CONFIG_REG(i64 %37)
  %39 = call i32 @adt7475_read(i32 %38)
  %40 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %41 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @CONTROL, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %39, i32* %49, align 4
  %50 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %51 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @CONTROL, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %57 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 5
  %62 = and i32 %61, 7
  %63 = icmp ne i32 %62, 7
  br i1 %63, label %64, label %69

64:                                               ; preds = %34
  %65 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %66 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %5, align 8
  br label %121

69:                                               ; preds = %34
  %70 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call zeroext i8 @PWM_REG(i64 %72)
  store i8 %73, i8* %13, align 1
  br label %84

74:                                               ; preds = %27
  %75 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call zeroext i8 @PWM_MIN_REG(i64 %77)
  store i8 %78, i8* %13, align 1
  br label %84

79:                                               ; preds = %27
  %80 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %81 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call zeroext i8 @PWM_MAX_REG(i64 %82)
  store i8 %83, i8* %13, align 1
  br label %84

84:                                               ; preds = %27, %79, %74, %69
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @SENSORS_LIMIT(i64 %85, i32 0, i32 255)
  %87 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %88 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %91 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %89, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %97 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32 %86, i32* %99, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %101 = load i8, i8* %13, align 1
  %102 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %103 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %106 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %104, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %112 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %100, i8 zeroext %101, i32 %115)
  %117 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %118 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* %9, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %84, %64, %24
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @PWM_CONFIG_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local zeroext i8 @PWM_REG(i64) #1

declare dso_local zeroext i8 @PWM_MIN_REG(i64) #1

declare dso_local zeroext i8 @PWM_MAX_REG(i64) #1

declare dso_local i32 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
