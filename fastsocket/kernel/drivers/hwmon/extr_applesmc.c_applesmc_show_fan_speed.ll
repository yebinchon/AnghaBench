; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i8 }

@fan_speed_keys = common dso_local global i8** null, align 8
@applesmc_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_show_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_show_fan_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i8], align 1
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute_2* %14, %struct.sensor_device_attribute_2** %12, align 8
  %15 = load i8**, i8*** @fan_speed_keys, align 8
  %16 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8*, i8** %15, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  store i8 %22, i8* %23, align 1
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i8, i8* %25, align 8
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 48, %27
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 1
  store i8 %29, i8* %30, align 1
  %31 = load i8**, i8*** @fan_speed_keys, align 8
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 2
  store i8 %38, i8* %39, align 1
  %40 = load i8**, i8*** @fan_speed_keys, align 8
  %41 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %42 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 3
  store i8 %47, i8* %48, align 1
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 4
  store i8 0, i8* %49, align 1
  %50 = call i32 @mutex_lock(i32* @applesmc_lock)
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %53 = call i32 @applesmc_read_key(i8* %51, i32* %52, i32 2)
  store i32 %53, i32* %8, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %56, %58
  %60 = ashr i32 %59, 2
  store i32 %60, i32* %9, align 4
  %61 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %3
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %3
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %64
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

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
