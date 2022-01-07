; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_in_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_in_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.w83627hf_data* %17, %struct.w83627hf_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @simple_strtol(i8* %18, i32* null, i32 10)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %21 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @IN_TO_REG(i64 %23)
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @W83781D_REG_IN_MIN(i32 %32)
  %34 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %35 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %31, i32 %33, i32 %40)
  %42 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %43 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @W83781D_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
