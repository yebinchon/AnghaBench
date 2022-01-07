; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temp8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i64, i32, i32* }

@set_temp8.reg = internal constant [4 x i32] [i32 129, i32 130, i32 131, i32 128], align 16
@lm99 = common dso_local global i64 0, align 8
@adt7461 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp8(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm90_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.lm90_data* %19, %struct.lm90_data** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @simple_strtol(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %26 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @lm99, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = sub nsw i64 %36, 16000
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %35, %30, %4
  %39 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %40 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %43 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @adt7461, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @temp_to_u8_adt7461(%struct.lm90_data* %48, i64 %49)
  %51 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %82

57:                                               ; preds = %38
  %58 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %59 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @max6646, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @temp_to_u8(i64 %64)
  %66 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %67 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %81

72:                                               ; preds = %57
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @temp_to_s8(i64 %73)
  %75 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %76 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %63
  br label %82

82:                                               ; preds = %81, %47
  %83 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* @set_temp8.reg, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %89 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %83, i32 %87, i32 %94)
  %96 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %97 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i64, i64* %8, align 8
  ret i64 %99
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temp_to_u8_adt7461(%struct.lm90_data*, i64) #1

declare dso_local i32 @temp_to_u8(i64) #1

declare dso_local i32 @temp_to_s8(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
