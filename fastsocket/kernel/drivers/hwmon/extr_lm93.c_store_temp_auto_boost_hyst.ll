; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_boost_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_boost_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_REG_SFC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_auto_boost_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_auto_boost_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.lm93_data* %20, %struct.lm93_data** %11, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @simple_strtoul(i8* %21, i32* null, i32 10)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %24 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = load i32, i32* @LM93_REG_SFC2, align 4
  %28 = call i32 @lm93_read_byte(%struct.i2c_client* %26, i32 %27)
  %29 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %30 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 16, i32 32
  %35 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %36 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = load i32, i32* @LM93_REG_SFC2, align 4
  %41 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %42 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lm93_write_byte(%struct.i2c_client* %39, i32 %40, i32 %43)
  %45 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @LM93_AUTO_BOOST_HYST_TO_REG(%struct.lm93_data* %45, i32 %46, i32 %47, i32 1)
  %49 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %50 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @LM93_REG_BOOST_HYST(i32 %57)
  %59 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %60 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lm93_write_byte(%struct.i2c_client* %56, i32 %58, i32 %66)
  %68 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %69 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %8, align 8
  ret i64 %71
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM93_AUTO_BOOST_HYST_TO_REG(%struct.lm93_data*, i32, i32, i32) #1

declare dso_local i32 @LM93_REG_BOOST_HYST(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
