; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_set_analog_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_set_analog_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.thmc50_data = type { i32, i32 }

@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@THMC50_REG_CONF_nFANOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_analog_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_analog_out(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.thmc50_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %16 = call %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.thmc50_data* %16, %struct.thmc50_data** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %20 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @SENSORS_LIMIT(i32 %22, i32 0, i32 255)
  %24 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %25 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %27 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %28 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %29 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i32 %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %33 = load i32, i32* @THMC50_REG_CONF, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %36 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %4
  %40 = load i32, i32* @THMC50_REG_CONF_nFANOFF, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %12, align 4
  br label %48

44:                                               ; preds = %4
  %45 = load i32, i32* @THMC50_REG_CONF_nFANOFF, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %50 = load i32, i32* @THMC50_REG_CONF, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 %51)
  %53 = load %struct.thmc50_data*, %struct.thmc50_data** %10, align 8
  %54 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %8, align 8
  ret i64 %56
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
