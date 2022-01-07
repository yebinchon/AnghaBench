; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_temp23.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_temp23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32, i32** }

@W83792D_REG_TEMP_ADD = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp23 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp23(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %9, align 8
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call %struct.i2c_client* @to_i2c_client(%struct.device* %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %26 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %25)
  store %struct.w83792d_data* %26, %struct.w83792d_data** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @simple_strtol(i8* %27, i32* null, i32 10)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %30 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @TEMP_ADD_TO_REG_HIGH(i32 %32)
  %34 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %35 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %33, i32* %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @TEMP_ADD_TO_REG_LOW(i32 %44)
  %46 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %47 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %45, i32* %56, align 4
  %57 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %58 = load i32**, i32*** @W83792D_REG_TEMP_ADD, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %68 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @w83792d_write_value(%struct.i2c_client* %57, i32 %66, i32 %77)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %80 = load i32**, i32*** @W83792D_REG_TEMP_ADD, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %91 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @w83792d_write_value(%struct.i2c_client* %79, i32 %89, i32 %101)
  %103 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %104 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i64, i64* %8, align 8
  ret i64 %106
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_ADD_TO_REG_HIGH(i32) #1

declare dso_local i32 @TEMP_ADD_TO_REG_LOW(i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
