; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@store_pwm_freq.mask = internal constant [2 x i32] [i32 248, i32 143], align 4
@w83627hf = common dso_local global i64 0, align 8
@W83627HF_REG_PWM_FREQ = common dso_local global i32 0, align 4
@W83637HF_REG_PWM_FREQ = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i32, align 4
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
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %21 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %20, i32 0, i32 2
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %24 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @w83627hf, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pwm_freq_to_reg_627hf(i32 %29)
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %32 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %38 = load i32, i32* @W83627HF_REG_PWM_FREQ, align 4
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %40 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %46, 4
  %48 = shl i32 %45, %47
  %49 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %50 = load i32, i32* @W83627HF_REG_PWM_FREQ, align 4
  %51 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* @store_pwm_freq.mask, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %51, %55
  %57 = or i32 %48, %56
  %58 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %37, i32 %38, i32 %57)
  br label %82

59:                                               ; preds = %4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @pwm_freq_to_reg(i32 %60)
  %62 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %63 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %69 = load i32*, i32** @W83637HF_REG_PWM_FREQ, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %75 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %68, i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %59, %28
  %83 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %84 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i64, i64* %8, align 8
  ret i64 %86
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_freq_to_reg_627hf(i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @pwm_freq_to_reg(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
