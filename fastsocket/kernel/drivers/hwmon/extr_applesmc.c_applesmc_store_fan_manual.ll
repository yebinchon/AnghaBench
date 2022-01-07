; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_manual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }

@applesmc_lock = common dso_local global i32 0, align 4
@FANS_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @applesmc_store_fan_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_store_fan_manual(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sensor_device_attribute*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i64 %18, i64* %12, align 8
  %19 = call i32 @mutex_lock(i32* @applesmc_lock)
  %20 = load i32, i32* @FANS_MANUAL, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %22 = call i32 @applesmc_read_key(i32 %20, i32* %21, i32 2)
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %25, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %61

32:                                               ; preds = %4
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %14, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %36, %40
  store i32 %41, i32* %13, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %14, align 8
  %45 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %43, %48
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @FANS_MANUAL, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %60 = call i32 @applesmc_write_key(i32 %58, i32* %59, i32 2)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %50, %31
  %62 = call i32 @mutex_unlock(i32* @applesmc_lock)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %65
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @applesmc_write_key(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
