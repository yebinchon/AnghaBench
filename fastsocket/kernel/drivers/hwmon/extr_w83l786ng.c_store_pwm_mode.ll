; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_store_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_store_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83l786ng_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83L786NG_REG_FAN_CFG = common dso_local global i32 0, align 4
@W83L786NG_PWM_MODE_SHIFT = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83l786ng_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %22 = call %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.w83l786ng_data* %22, %struct.w83l786ng_data** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %73

30:                                               ; preds = %4
  %31 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %12, align 8
  %32 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %12, align 8
  %36 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %42 = load i32, i32* @W83L786NG_REG_FAN_CFG, align 4
  %43 = call i32 @w83l786ng_read_value(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** @W83L786NG_PWM_MODE_SHIFT, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %30
  %56 = load i32*, i32** @W83L786NG_PWM_MODE_SHIFT, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %55, %30
  %65 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %66 = load i32, i32* @W83L786NG_REG_FAN_CFG, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @w83l786ng_write_value(%struct.i2c_client* %65, i32 %66, i32 %67)
  %69 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %12, align 8
  %70 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %64, %27
  %74 = load i64, i64* %5, align 8
  ret i64 %74
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83l786ng_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
