; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_pwmfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_pwmfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@pwmfreq_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwmfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwmfreq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.adt7475_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %20 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.adt7475_data* %20, %struct.adt7475_data** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strict_strtol(i8* %21, i32 10, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %85

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  %29 = load i32, i32* @pwmfreq_table, align 4
  %30 = load i32, i32* @pwmfreq_table, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @find_nearest(i64 %28, i32 %29, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %34 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %37 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @TEMP_TRANGE_REG(i64 %38)
  %40 = call i32 @adt7475_read(i32 %39)
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %45 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %49 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -8
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %59 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %62 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %57
  store i32 %66, i32* %64, align 4
  %67 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %68 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %69 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @TEMP_TRANGE_REG(i64 %70)
  %72 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %73 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %67, i32 %71, i32 %79)
  %81 = load %struct.adt7475_data*, %struct.adt7475_data** %12, align 8
  %82 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %27, %24
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @find_nearest(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @TEMP_TRANGE_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
