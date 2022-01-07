; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm92.c_lm92_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm92.c_lm92_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm92_data = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Updating lm92 data\0A\00", align 1
@LM92_REG_TEMP = common dso_local global i32 0, align 4
@LM92_REG_TEMP_HYST = common dso_local global i32 0, align 4
@LM92_REG_TEMP_CRIT = common dso_local global i32 0, align 4
@LM92_REG_TEMP_LOW = common dso_local global i32 0, align 4
@LM92_REG_TEMP_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm92_data* (%struct.device*)* @lm92_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm92_data* @lm92_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm92_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.lm92_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.lm92_data* %8, %struct.lm92_data** %4, align 8
  %9 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %10 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @time_after(i64 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %22 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @LM92_REG_TEMP, align 4
  %31 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %29, i32 %30)
  %32 = call i8* @swab16(i32 %31)
  %33 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %34 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i32, i32* @LM92_REG_TEMP_HYST, align 4
  %37 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %35, i32 %36)
  %38 = call i8* @swab16(i32 %37)
  %39 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %40 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* @LM92_REG_TEMP_CRIT, align 4
  %43 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %41, i32 %42)
  %44 = call i8* @swab16(i32 %43)
  %45 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %46 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* @LM92_REG_TEMP_LOW, align 4
  %49 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %47, i32 %48)
  %50 = call i8* @swab16(i32 %49)
  %51 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %52 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* @LM92_REG_TEMP_HIGH, align 4
  %55 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %53, i32 %54)
  %56 = call i8* @swab16(i32 %55)
  %57 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %58 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %61 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %63 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %25, %20
  %65 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  %66 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.lm92_data*, %struct.lm92_data** %4, align 8
  ret %struct.lm92_data* %68
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm92_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @swab16(i32) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
