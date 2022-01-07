; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_ds1682.c_ds1682_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/chips/extr_ds1682.c_ds1682_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ds1682_store() called on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"input string not a number\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"register write failed; reg=0x%x, size=%i\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ds1682_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1682_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @simple_strtoull(i8* %26, i8** %12, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %70

36:                                               ; preds = %4
  %37 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @do_div(i32 %42, i32 250)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %48 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %47, i32 %50, i32 %53, i32* %14)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %44
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %60 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %63 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i64, i64* @EIO, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %5, align 8
  br label %70

68:                                               ; preds = %44
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %68, %57, %31
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
