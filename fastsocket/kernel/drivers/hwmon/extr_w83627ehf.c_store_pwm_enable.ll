; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83627EHF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627EHF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.w83627ehf_data* %16, %struct.w83627ehf_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %81

32:                                               ; preds = %26
  %33 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %34 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %37 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %36, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %45 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 3, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32*, i32** @W83627EHF_PWM_ENABLE_SHIFT, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %60, %65
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %70 = load i32*, i32** @W83627EHF_REG_PWM_ENABLE, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %69, i32 %74, i32 %75)
  %77 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %78 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %32, %29
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
