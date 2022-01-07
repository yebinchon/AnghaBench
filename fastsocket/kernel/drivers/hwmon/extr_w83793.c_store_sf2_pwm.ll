; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf2_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf2_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf2_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sf2_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @simple_strtoul(i8* %27, i32* null, i32 10)
  %29 = call i32 @SENSORS_LIMIT(i32 %28, i32 0, i32 255)
  %30 = ashr i32 %29, 2
  store i32 %30, i32* %14, align 4
  %31 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %32 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @W83793_REG_SF2_PWM(i32 %35, i32 %36)
  %38 = call i32 @w83793_read_value(%struct.i2c_client* %34, i32 %37)
  %39 = and i32 %38, 192
  %40 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %41 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %39, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %52 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %50
  store i32 %62, i32* %60, align 4
  %63 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @W83793_REG_SF2_PWM(i32 %64, i32 %65)
  %67 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %68 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @w83793_write_value(%struct.i2c_client* %63, i32 %66, i32 %77)
  %79 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %80 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i64, i64* %8, align 8
  ret i64 %82
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83793_REG_SF2_PWM(i32, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
