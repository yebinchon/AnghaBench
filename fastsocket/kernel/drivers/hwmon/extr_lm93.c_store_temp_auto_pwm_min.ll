; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_pwm_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_temp_auto_pwm_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_PWM_CTL4 = common dso_local global i32 0, align 4
@LM93_PWM_MAP_LO_FREQ = common dso_local global i32 0, align 4
@LM93_PWM_MAP_HI_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_auto_pwm_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_auto_pwm_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm93_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %10, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.lm93_data* %22, %struct.lm93_data** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %26 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @LM93_REG_PWM_MIN_HYST(i32 %29)
  %31 = call i32 @lm93_read_byte(%struct.i2c_client* %28, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @LM93_PWM_CTL4, align 4
  %35 = call i32 @LM93_REG_PWM_CTL(i32 %33, i32 %34)
  %36 = call i32 @lm93_read_byte(%struct.i2c_client* %32, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, 15
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %40, 7
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* @LM93_PWM_MAP_LO_FREQ, align 4
  br label %47

45:                                               ; preds = %4
  %46 = load i32, i32* @LM93_PWM_MAP_HI_FREQ, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = call i32 @LM93_PWM_TO_REG(i32 %39, i32 %48)
  %50 = shl i32 %49, 4
  %51 = or i32 %38, %50
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %54 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %52, i32* %59, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @LM93_REG_PWM_MIN_HYST(i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @lm93_write_byte(%struct.i2c_client* %60, i32 %62, i32 %63)
  %65 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %66 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %8, align 8
  ret i64 %68
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_PWM_MIN_HYST(i32) #1

declare dso_local i32 @LM93_REG_PWM_CTL(i32, i32) #1

declare dso_local i32 @LM93_PWM_TO_REG(i32, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
