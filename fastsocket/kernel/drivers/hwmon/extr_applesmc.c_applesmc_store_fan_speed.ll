; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i8 }

@EINVAL = common dso_local global i32 0, align 4
@fan_speed_keys = common dso_local global i8** null, align 8
@applesmc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @applesmc_store_fan_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_store_fan_speed(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [5 x i8], align 1
  %13 = alloca [2 x i32], align 4
  %14 = alloca %struct.sensor_device_attribute_2*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp sgt i32 %19, 16384
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %80

24:                                               ; preds = %4
  %25 = load i8**, i8*** @fan_speed_keys, align 8
  %26 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %14, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8*, i8** %25, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  %34 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %14, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 8
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 48, %37
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = load i8**, i8*** @fan_speed_keys, align 8
  %42 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %14, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 2
  store i8 %48, i8* %49, align 1
  %50 = load i8**, i8*** @fan_speed_keys, align 8
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %14, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  %57 = load i8, i8* %56, align 1
  %58 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 3
  store i8 %57, i8* %58, align 1
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %59, align 1
  %60 = call i32 @mutex_lock(i32* @applesmc_lock)
  %61 = load i32, i32* %11, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 255
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 2
  %67 = and i32 %66, 255
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %71 = call i32 @applesmc_write_key(i8* %69, i32* %70, i32 2)
  store i32 %71, i32* %10, align 4
  %72 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %24
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %80

77:                                               ; preds = %24
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %75, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_write_key(i8*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
