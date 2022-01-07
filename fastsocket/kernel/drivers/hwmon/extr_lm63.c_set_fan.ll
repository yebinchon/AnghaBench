; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm63.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm63_data = type { i32*, i32 }

@LM63_REG_TACH_LIMIT_LSB = common dso_local global i32 0, align 4
@LM63_REG_TACH_LIMIT_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.lm63_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %9, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %15 = call %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.lm63_data* %15, %struct.lm63_data** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @simple_strtoul(i8* %16, i32* null, i32 10)
  store i64 %17, i64* %11, align 8
  %18 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %19 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* %11, align 8
  %22 = call i32 @FAN_TO_REG(i64 %21)
  %23 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %24 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %28 = load i32, i32* @LM63_REG_TACH_LIMIT_LSB, align 4
  %29 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %30 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %27, i32 %28, i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %37 = load i32, i32* @LM63_REG_TACH_LIMIT_MSB, align 4
  %38 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %39 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %36, i32 %37, i32 %43)
  %45 = load %struct.lm63_data*, %struct.lm63_data** %10, align 8
  %46 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i64, i64* %8, align 8
  ret i64 %48
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm63_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
