; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf2_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_sf2_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_sf2_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_sf2_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %28 = call i32 @simple_strtol(i8* %27, i32* null, i32 10)
  %29 = call i32 @TEMP_TO_REG(i32 %28, i32 0, i32 127)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %31 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @W83793_REG_SF2_TEMP(i32 %34, i32 %35)
  %37 = call i32 @w83793_read_value(%struct.i2c_client* %33, i32 %36)
  %38 = and i32 %37, 128
  %39 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %40 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %38, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %51 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %50, i32 0, i32 0
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %49
  store i32 %61, i32* %59, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @W83793_REG_SF2_TEMP(i32 %63, i32 %64)
  %66 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %67 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @w83793_write_value(%struct.i2c_client* %62, i32 %65, i32 %76)
  %78 = load %struct.w83793_data*, %struct.w83793_data** %10, align 8
  %79 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %8, align 8
  ret i64 %81
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @TEMP_TO_REG(i32, i32, i32) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83793_REG_SF2_TEMP(i32, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
