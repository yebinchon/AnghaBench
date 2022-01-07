; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627hf.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@w83627thf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %26 = load i64, i64* @w83627thf, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @PWM_TO_REG(i32 %29)
  %31 = and i32 %30, 240
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  %38 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %39 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %40 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @W836X7HF_REG_PWM(i64 %41, i32 %42)
  %44 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %45 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %52 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %53 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @W836X7HF_REG_PWM(i64 %54, i32 %55)
  %57 = call i32 @w83627hf_read_value(%struct.w83627hf_data* %51, i32 %56)
  %58 = and i32 %57, 15
  %59 = or i32 %50, %58
  %60 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %38, i32 %43, i32 %59)
  br label %84

61:                                               ; preds = %4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @PWM_TO_REG(i32 %62)
  %64 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %65 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %71 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %72 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @W836X7HF_REG_PWM(i64 %73, i32 %74)
  %76 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %77 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %70, i32 %75, i32 %82)
  br label %84

84:                                               ; preds = %61, %28
  %85 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %86 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %85, i32 0, i32 2
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %8, align 8
  ret i64 %88
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i32) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @W836X7HF_REG_PWM(i64, i32) #1

declare dso_local i32 @w83627hf_read_value(%struct.w83627hf_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
