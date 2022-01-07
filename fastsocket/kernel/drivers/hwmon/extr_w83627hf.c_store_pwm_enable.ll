; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83627THF_REG_PWM_ENABLE = common dso_local global i32* null, align 8
@W83627THF_PWM_ENABLE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.w83627hf_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.w83627hf_data* %19, %struct.w83627hf_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %82

30:                                               ; preds = %24
  %31 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %32 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %36 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 %34, i64* %40, align 8
  %41 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %42 = load i32*, i32** @W83627THF_REG_PWM_ENABLE, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %41, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32*, i32** @W83627THF_PWM_ENABLE_SHIFT, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 3, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %13, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %13, align 4
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %57, 1
  %59 = load i32*, i32** @W83627THF_PWM_ENABLE_SHIFT, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  %65 = shl i64 %58, %64
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = or i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %71 = load i32*, i32** @W83627THF_REG_PWM_ENABLE, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %70, i32 %75, i32 %76)
  %78 = load %struct.w83627hf_data*, %struct.w83627hf_data** %11, align 8
  %79 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %30, %27
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
