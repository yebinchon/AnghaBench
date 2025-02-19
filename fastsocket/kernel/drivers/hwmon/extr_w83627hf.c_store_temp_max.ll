; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_temp_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_temp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i32* }
%struct.TYPE_2__ = type { i32 }

@w83627hf_reg_temp_over = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_max(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.w83627hf_data* %18, %struct.w83627hf_data** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @simple_strtol(i8* %19, i32* null, i32 10)
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @LM75_TEMP_TO_REG(i64 %24)
  br label %29

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @TEMP_TO_REG(i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %12, align 4
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %32 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %36 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %42 = load i32*, i32** @w83627hf_reg_temp_over, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %41, i32 %46, i32 %47)
  %49 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %50 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @LM75_TEMP_TO_REG(i64) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
