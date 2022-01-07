; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"fan_div value %lu not supported. Choose one of 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@FSCHMD_REG_FAN_RIPPLE = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fschmd_data*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.fschmd_data* %19, %struct.fschmd_data** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @simple_strtoul(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  switch i64 %22, label %26 [
    i64 2, label %23
    i64 4, label %24
    i64 8, label %25
  ]

23:                                               ; preds = %4
  store i64 1, i64* %13, align 8
  br label %32

24:                                               ; preds = %4
  store i64 2, i64* %13, align 8
  br label %32

25:                                               ; preds = %4
  store i64 3, i64* %13, align 8
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %81

32:                                               ; preds = %25, %24, %23
  %33 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %34 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @to_i2c_client(%struct.device* %36)
  %38 = load i32**, i32*** @FSCHMD_REG_FAN_RIPPLE, align 8
  %39 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %40 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(i32 %37, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, -4
  store i32 %50, i32* %10, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = or i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @to_i2c_client(%struct.device* %56)
  %58 = load i32**, i32*** @FSCHMD_REG_FAN_RIPPLE, align 8
  %59 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %60 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @i2c_smbus_write_byte_data(i32 %57, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %72 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.fschmd_data*, %struct.fschmd_data** %12, align 8
  %78 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %32, %26
  %82 = load i64, i64* %5, align 8
  ret i64 %82
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

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
