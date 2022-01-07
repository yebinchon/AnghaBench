; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1029.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1029.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1029_data = type { i32 }
%struct.sensor_device_attribute = type { i64 }

@ADM1029_REG_FAN_DIV = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"fan_div value %ld not supported. Choose one of 1, 2 or 4!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm1029_data*, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.adm1029_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.adm1029_data* %18, %struct.adm1029_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @simple_strtol(i8* %21, i32* null, i32 10)
  store i64 %22, i64* %13, align 8
  %23 = load %struct.adm1029_data*, %struct.adm1029_data** %11, align 8
  %24 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %28 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i64, i64* %13, align 8
  switch i64 %34, label %38 [
    i64 1, label %35
    i64 2, label %36
    i64 4, label %37
  ]

35:                                               ; preds = %4
  store i64 1, i64* %13, align 8
  br label %48

36:                                               ; preds = %4
  store i64 2, i64* %13, align 8
  br label %48

37:                                               ; preds = %4
  store i64 3, i64* %13, align 8
  br label %48

38:                                               ; preds = %4
  %39 = load %struct.adm1029_data*, %struct.adm1029_data** %11, align 8
  %40 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %69

48:                                               ; preds = %37, %36, %35
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 63
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %13, align 8
  %53 = shl i64 %52, 6
  %54 = or i64 %51, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %14, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %57 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %58 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %62, i32 %63)
  %65 = load %struct.adm1029_data*, %struct.adm1029_data** %11, align 8
  %66 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %48, %38
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1029_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
