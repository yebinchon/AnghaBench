; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m1.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m1.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m1_data = type { i32*, i32, i32* }

@EINVAL = common dso_local global i64 0, align 8
@SMSC47M1_REG_FAN_PRELOAD = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.smsc47m1_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.smsc47m1_data* %18, %struct.smsc47m1_data** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @simple_strtol(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %14, align 8
  %24 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %25 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %14, align 8
  %28 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %29 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @DIV_FROM_REG(i32 %34)
  %36 = mul nsw i64 %27, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = mul nsw i64 192, %37
  %39 = icmp sgt i64 983040, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = load i64, i64* %13, align 8
  %42 = mul nsw i64 2, %41
  %43 = icmp sgt i64 %42, 983040
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %4
  %45 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %46 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %5, align 8
  br label %82

50:                                               ; preds = %40
  %51 = load i64, i64* %13, align 8
  %52 = sdiv i64 %51, 2
  %53 = add nsw i64 983040, %52
  %54 = load i64, i64* %13, align 8
  %55 = sdiv i64 %53, %54
  %56 = sub nsw i64 192, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %59 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %65 = load i32*, i32** @SMSC47M1_REG_FAN_PRELOAD, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %71 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %64, i32 %69, i32 %76)
  %78 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %79 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %50, %44
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
