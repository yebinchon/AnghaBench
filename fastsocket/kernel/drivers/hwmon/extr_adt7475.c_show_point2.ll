; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_point2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_show_point2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7475_data = type { i32*, i32, i32** }
%struct.sensor_device_attribute_2 = type { i64 }

@AUTOMIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@autorange_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_point2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_point2(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adt7475_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.adt7475_data* @adt7475_update_device(%struct.device* %11)
  store %struct.adt7475_data* %12, %struct.adt7475_data** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %8, align 8
  %15 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %16 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %19 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 15
  store i32 %27, i32* %9, align 4
  %28 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 2
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* @AUTOMIN, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reg2temp(%struct.adt7475_data* %28, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %7, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** @autorange_table, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %45, %50
  %52 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51)
  ret i32 %52
}

declare dso_local %struct.adt7475_data* @adt7475_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
