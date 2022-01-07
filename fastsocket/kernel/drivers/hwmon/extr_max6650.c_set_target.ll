; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max6650_data = type { i32, i32, i32 }

@FAN_RPM_MIN = common dso_local global i32 0, align 4
@FAN_RPM_MAX = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4
@MAX6650_REG_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_target(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.max6650_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %9, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %17 = call %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.max6650_data* %17, %struct.max6650_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 10)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @FAN_RPM_MIN, align 4
  %22 = load i32, i32* @FAN_RPM_MAX, align 4
  %23 = call i32 @SENSORS_LIMIT(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.max6650_data*, %struct.max6650_data** %10, align 8
  %25 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.max6650_data*, %struct.max6650_data** %10, align 8
  %28 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DIV_FROM_REG(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @clock, align 4
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 256, %34
  %36 = sdiv i32 %35, 60
  %37 = sdiv i32 %33, %36
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %43, 255
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 255, i32* %13, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.max6650_data*, %struct.max6650_data** %10, align 8
  %49 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %51 = load i32, i32* @MAX6650_REG_SPEED, align 4
  %52 = load %struct.max6650_data*, %struct.max6650_data** %10, align 8
  %53 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %50, i32 %51, i32 %54)
  %56 = load %struct.max6650_data*, %struct.max6650_data** %10, align 8
  %57 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
