; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_prochot_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_store_prochot_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm93_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LM93_REG_PROCHOT_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_prochot_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_prochot_interval(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %28 = load i32, i32* @LM93_REG_PROCHOT_INTERVAL, align 4
  %29 = call i32 @lm93_read_byte(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %33, 15
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @LM93_INTERVAL_TO_REG(i32 %35)
  %37 = shl i32 %36, 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %13, align 4
  br label %45

39:                                               ; preds = %4
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 240
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @LM93_INTERVAL_TO_REG(i32 %42)
  %44 = or i32 %41, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %48 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %50 = load i32, i32* @LM93_REG_PROCHOT_INTERVAL, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @lm93_write_byte(%struct.i2c_client* %49, i32 %50, i32 %51)
  %53 = load %struct.lm93_data*, %struct.lm93_data** %11, align 8
  %54 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %8, align 8
  ret i64 %56
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm93_read_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_INTERVAL_TO_REG(i32) #1

declare dso_local i32 @lm93_write_byte(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
