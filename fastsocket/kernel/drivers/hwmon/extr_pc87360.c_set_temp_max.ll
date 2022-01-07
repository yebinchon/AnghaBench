; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87360.c_set_temp_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pc87360.c_set_temp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.pc87360_data = type { i32, i32* }

@LD_TEMP = common dso_local global i32 0, align 4
@PC87365_REG_TEMP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.pc87360_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %9, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.pc87360_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.pc87360_data* %15, %struct.pc87360_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @simple_strtol(i8* %16, i32* null, i32 10)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %19 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @TEMP_TO_REG(i64 %21)
  %23 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %24 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %31 = load i32, i32* @LD_TEMP, align 4
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @PC87365_REG_TEMP_MAX, align 4
  %36 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %37 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pc87360_write_value(%struct.pc87360_data* %30, i32 %31, i64 %34, i32 %35, i32 %43)
  %45 = load %struct.pc87360_data*, %struct.pc87360_data** %10, align 8
  %46 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i64, i64* %8, align 8
  ret i64 %48
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.pc87360_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @pc87360_write_value(%struct.pc87360_data*, i32, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
