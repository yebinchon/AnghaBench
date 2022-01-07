; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i8 }

@FAN_POSITION = common dso_local global i8* null, align 8
@applesmc_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_show_fan_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_show_fan_position(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [17 x i8], align 16
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute_2* %13, %struct.sensor_device_attribute_2** %11, align 8
  %14 = load i8*, i8** @FAN_POSITION, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %16, i8* %17, align 1
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 48, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  %25 = load i8*, i8** @FAN_POSITION, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** @FAN_POSITION, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 0, i8* %33, align 1
  %34 = call i32 @mutex_lock(i32* @applesmc_lock)
  %35 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %37 = call i32 @applesmc_read_key(i8* %35, i8* %36, i32 16)
  store i32 %37, i32* %8, align 4
  %38 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 16
  store i8 0, i8* %38, align 16
  %39 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = getelementptr inbounds [17 x i8], [17 x i8]* %10, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = call i32 @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_read_key(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
