; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_max_duty_at_crit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7473.c_set_max_duty_at_crit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adt7473_data = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7473_REG_CFG4 = common dso_local global i32 0, align 4
@ADT7473_CFG4_MAX_DUTY_AT_OVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_max_duty_at_crit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_max_duty_at_crit(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7473_data*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %11, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %17 = call %struct.adt7473_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.adt7473_data* %17, %struct.adt7473_data** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @strict_strtol(i8* %18, i32 10, i64* %13)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.adt7473_data*, %struct.adt7473_data** %12, align 8
  %26 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.adt7473_data*, %struct.adt7473_data** %12, align 8
  %34 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %36 = load i32, i32* @ADT7473_REG_CFG4, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load i32, i32* @ADT7473_CFG4_MAX_DUTY_AT_OVT, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %24
  %45 = load i32, i32* @ADT7473_CFG4_MAX_DUTY_AT_OVT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %51 = load i32, i32* @ADT7473_REG_CFG4, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %50, i32 %51, i32 %52)
  %54 = load %struct.adt7473_data*, %struct.adt7473_data** %12, align 8
  %55 = getelementptr inbounds %struct.adt7473_data, %struct.adt7473_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %49, %21
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7473_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
