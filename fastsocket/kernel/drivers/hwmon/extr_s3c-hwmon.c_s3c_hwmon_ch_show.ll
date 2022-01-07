; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_ch_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_s3c-hwmon.c_s3c_hwmon_ch_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.s3c_hwmon_pdata* }
%struct.s3c_hwmon_pdata = type { %struct.s3c_hwmon_chcfg** }
%struct.s3c_hwmon_chcfg = type { i32, i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.s3c_hwmon = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @s3c_hwmon_ch_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hwmon_ch_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.s3c_hwmon*, align 8
  %10 = alloca %struct.s3c_hwmon_pdata*, align 8
  %11 = alloca %struct.s3c_hwmon_chcfg*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @to_platform_device(%struct.device* %15)
  %17 = call %struct.s3c_hwmon* @platform_get_drvdata(i32 %16)
  store %struct.s3c_hwmon* %17, %struct.s3c_hwmon** %9, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %19, align 8
  store %struct.s3c_hwmon_pdata* %20, %struct.s3c_hwmon_pdata** %10, align 8
  %21 = load %struct.s3c_hwmon_pdata*, %struct.s3c_hwmon_pdata** %10, align 8
  %22 = getelementptr inbounds %struct.s3c_hwmon_pdata, %struct.s3c_hwmon_pdata* %21, i32 0, i32 0
  %23 = load %struct.s3c_hwmon_chcfg**, %struct.s3c_hwmon_chcfg*** %22, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %23, i64 %26
  %28 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %27, align 8
  store %struct.s3c_hwmon_chcfg* %28, %struct.s3c_hwmon_chcfg** %11, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.s3c_hwmon*, %struct.s3c_hwmon** %9, align 8
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @s3c_hwmon_read_ch(%struct.device* %29, %struct.s3c_hwmon* %30, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %54

39:                                               ; preds = %3
  %40 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %11, align 8
  %41 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = mul nsw i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.s3c_hwmon_chcfg*, %struct.s3c_hwmon_chcfg** %11, align 8
  %47 = getelementptr inbounds %struct.s3c_hwmon_chcfg, %struct.s3c_hwmon_chcfg* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DIV_ROUND_CLOSEST(i32 %45, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %39, %37
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.s3c_hwmon* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @s3c_hwmon_read_ch(%struct.device*, %struct.s3c_hwmon*, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
