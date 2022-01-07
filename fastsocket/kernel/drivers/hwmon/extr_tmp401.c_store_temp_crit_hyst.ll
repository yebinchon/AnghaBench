; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_store_temp_crit_hyst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_store_temp_crit_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tmp401_data = type { i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@TMP401_CONFIG_RANGE = common dso_local global i32 0, align 4
@TMP401_TEMP_CRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_crit_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_crit_hyst(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tmp401_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.tmp401_data* @tmp401_update_device(%struct.device* %19)
  store %struct.tmp401_data* %20, %struct.tmp401_data** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strict_strtol(i8* %21, i32 10, i64* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %79

27:                                               ; preds = %4
  %28 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %29 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TMP401_CONFIG_RANGE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @SENSORS_LIMIT(i64 %35, i32 -64000, i32 191000)
  store i64 %36, i64* %13, align 8
  br label %40

37:                                               ; preds = %27
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @SENSORS_LIMIT(i64 %38, i32 0, i32 127000)
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %42 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %45 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %52 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @tmp401_crit_register_to_temp(i32 %50, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 255000
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @SENSORS_LIMIT(i64 %55, i32 %57, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %13, align 8
  %63 = sub nsw i64 %61, %62
  %64 = add nsw i64 %63, 500
  %65 = sdiv i64 %64, 1000
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @to_i2c_client(%struct.device* %67)
  %69 = load i32, i32* @TMP401_TEMP_CRIT_HYST, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @i2c_smbus_write_byte_data(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %74 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tmp401_data*, %struct.tmp401_data** %12, align 8
  %76 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %40, %24
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tmp401_data* @tmp401_update_device(%struct.device*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tmp401_crit_register_to_temp(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
