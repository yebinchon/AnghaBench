; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_temperature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }

@temperature_sensors_sets = common dso_local global i8*** null, align 8
@applesmc_temperature_set = common dso_local global i64 0, align 8
@applesmc_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_show_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_show_temperature(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %11, align 8
  %15 = load i8***, i8**** @temperature_sensors_sets, align 8
  %16 = load i64, i64* @applesmc_temperature_set, align 8
  %17 = getelementptr inbounds i8**, i8*** %15, i64 %16
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %12, align 8
  %24 = call i32 @mutex_lock(i32* @applesmc_lock)
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = call i32 @applesmc_read_key(i8* %25, i32* %26, i32 2)
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 1000
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 6
  %34 = mul nsw i32 %33, 250
  %35 = load i32, i32* %10, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %40
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_read_key(i8*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
