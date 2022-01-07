; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_store_temp_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_store_temp_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tmp401_data = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@TMP401_TEMP_LOW_LIMIT_MSB_WRITE = common dso_local global i32* null, align 8
@TMP401_TEMP_LOW_LIMIT_LSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmp401_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.tmp401_data* @tmp401_update_device(%struct.device* %18)
  store %struct.tmp401_data* %19, %struct.tmp401_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strict_strtol(i8* %20, i32 10, i64* %12)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %66

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.tmp401_data*, %struct.tmp401_data** %11, align 8
  %29 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tmp401_temp_to_register(i64 %27, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.tmp401_data*, %struct.tmp401_data** %11, align 8
  %33 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @to_i2c_client(%struct.device* %35)
  %37 = load i32*, i32** @TMP401_TEMP_LOW_LIMIT_MSB_WRITE, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @i2c_smbus_write_byte_data(i32 %36, i32 %41, i32 %43)
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @to_i2c_client(%struct.device* %45)
  %47 = load i32*, i32** @TMP401_TEMP_LOW_LIMIT_LSB, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, 255
  %54 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %51, i32 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.tmp401_data*, %struct.tmp401_data** %11, align 8
  %57 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.tmp401_data*, %struct.tmp401_data** %11, align 8
  %63 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %26, %23
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tmp401_data* @tmp401_update_device(%struct.device*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @tmp401_temp_to_register(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
