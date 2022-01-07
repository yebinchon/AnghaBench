; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_auto_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_auto_offset(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.lm93_data*, align 8
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
  %26 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %25)
  store %struct.lm93_data* %26, %struct.lm93_data** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @simple_strtoul(i8* %27, i32* null, i32 10)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %30 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %33 = load i32, i32* @LM93_REG_SFC2, align 4
  %34 = call i32 @lm93_read_byte(%struct.i2c_client* %32, i32 %33)
  %35 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %36 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 2
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 16, i32 32
  %41 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %42 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %46 = load i32, i32* @LM93_REG_SFC2, align 4
  %47 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %48 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @lm93_write_byte(%struct.i2c_client* %45, i32 %46, i32 %49)
  %51 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %52 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @LM93_TEMP_AUTO_OFFSET_TO_REG(i32 %58, i32 %59, i32 %60, i32 1)
  %62 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %63 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %61, i32* %68, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @LM93_REG_TEMP_OFFSET(i32 %70)
  %72 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %73 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @lm93_write_byte(%struct.i2c_client* %69, i32 %71, i32 %79)
  %81 = load %struct.lm93_data*, %struct.lm93_data** %13, align 8
  %82 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i64, i64* %8, align 8
  ret i64 %84
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM93_TEMP_AUTO_OFFSET_TO_REG(i32, i32, i32, i32) #1

declare dso_local i32 @LM93_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
