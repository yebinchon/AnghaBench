; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32*, i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@PWM_STOP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.w83793_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %9, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %18 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.w83793_data* %18, %struct.w83793_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %11, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %28 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* @PWM_STOP_TIME, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %4
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @simple_strtoul(i8* %34, i32* null, i32 10)
  %36 = call i32 @TIME_TO_REG(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %39 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  %44 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @W83793_REG_PWM_STOP_TIME(i32 %45)
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @w83793_write_value(%struct.i2c_client* %44, i32 %46, i32 %47)
  br label %99

49:                                               ; preds = %4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @simple_strtoul(i8* %50, i32* null, i32 10)
  %52 = call i32 @SENSORS_LIMIT(i32 %51, i32 0, i32 255)
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %14, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @W83793_REG_PWM(i32 %55, i32 %56)
  %58 = call i32 @w83793_read_value(%struct.i2c_client* %54, i32 %57)
  %59 = and i32 %58, 192
  %60 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %61 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %59, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %72 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %70
  store i32 %82, i32* %80, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @W83793_REG_PWM(i32 %84, i32 %85)
  %87 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %88 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @w83793_write_value(%struct.i2c_client* %83, i32 %86, i32 %97)
  br label %99

99:                                               ; preds = %49, %33
  %100 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %101 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i64, i64* %8, align 8
  ret i64 %103
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TIME_TO_REG(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @W83793_REG_PWM_STOP_TIME(i32) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83793_REG_PWM(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
