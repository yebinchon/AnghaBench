; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_prochot_override_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_prochot_override_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32, i32 }

@LM93_REG_PROCHOT_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_prochot_override_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_prochot_override_duty_cycle(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.lm93_data*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %15 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.lm93_data* %15, %struct.lm93_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @simple_strtoul(i8* %16, i32* null, i32 10)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.lm93_data*, %struct.lm93_data** %10, align 8
  %19 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.lm93_data*, %struct.lm93_data** %10, align 8
  %22 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 240
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @SENSORS_LIMIT(i32 %25, i32 0, i32 15)
  %27 = or i32 %24, %26
  %28 = load %struct.lm93_data*, %struct.lm93_data** %10, align 8
  %29 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %31 = load i32, i32* @LM93_REG_PROCHOT_OVERRIDE, align 4
  %32 = load %struct.lm93_data*, %struct.lm93_data** %10, align 8
  %33 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lm93_write_byte(%struct.i2c_client* %30, i32 %31, i32 %34)
  %36 = load %struct.lm93_data*, %struct.lm93_data** %10, align 8
  %37 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i64, i64* %8, align 8
  ret i64 %39
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
