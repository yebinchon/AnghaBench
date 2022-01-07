; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_set_pwm_auto_pwm_minctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_set_pwm_auto_pwm_minctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm85_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@LM85_REG_AFAN_SPIKE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_pwm_minctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_auto_pwm_minctl(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.lm85_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.lm85_data* %21, %struct.lm85_data** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtol(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %25 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %29 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %27, i64* %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %36 = load i32, i32* @LM85_REG_AFAN_SPIKE1, align 4
  %37 = call i32 @lm85_read_value(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 32, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %44 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 32, %53
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %52, %4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %59 = load i32, i32* @LM85_REG_AFAN_SPIKE1, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @lm85_write_value(%struct.i2c_client* %58, i32 %59, i32 %60)
  %62 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %63 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %8, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm85_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
