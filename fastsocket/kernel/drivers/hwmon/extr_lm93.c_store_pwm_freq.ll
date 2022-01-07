; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_pwm_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_pwm_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32**, i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.lm93_data* %21, %struct.lm93_data** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %25 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* @LM93_PWM_CTL4, align 8
  %30 = call i32 @LM93_REG_PWM_CTL(i32 %28, i64 %29)
  %31 = call i32 @lm93_read_byte(%struct.i2c_client* %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, 248
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @LM93_PWM_FREQ_TO_REG(i32 %34)
  %36 = or i32 %33, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %39 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @LM93_PWM_CTL4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %37, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %51 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @lm93_disable_fan_smart_tach(%struct.i2c_client* %50, %struct.lm93_data* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* @LM93_PWM_CTL4, align 8
  %58 = call i32 @LM93_REG_PWM_CTL(i32 %56, i64 %57)
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @lm93_write_byte(%struct.i2c_client* %55, i32 %58, i32 %59)
  %61 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %62 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %8, align 8
  ret i64 %64
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_PWM_CTL(i32, i64) #1

declare dso_local i32 @LM93_PWM_FREQ_TO_REG(i32) #1

declare dso_local i32 @lm93_disable_fan_smart_tach(%struct.i2c_client*, %struct.lm93_data*, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
