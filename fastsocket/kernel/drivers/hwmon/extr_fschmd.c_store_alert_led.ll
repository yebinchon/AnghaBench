; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_alert_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_alert_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i32, i32 }

@FSCHMD_REG_CONTROL = common dso_local global i32 0, align 4
@FSCHMD_CONTROL_ALERT_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_alert_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_alert_led(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fschmd_data*, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.fschmd_data* %13, %struct.fschmd_data** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @simple_strtoul(i8* %14, i32* null, i32 10)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %17 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @to_i2c_client(%struct.device* %19)
  %21 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %22 = call i32 @i2c_smbus_read_byte_data(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @FSCHMD_CONTROL_ALERT_LED, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %4
  %30 = load i32, i32* @FSCHMD_CONTROL_ALERT_LED, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @to_i2c_client(%struct.device* %35)
  %37 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @i2c_smbus_write_byte_data(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %42 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fschmd_data*, %struct.fschmd_data** %10, align 8
  %44 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
