; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm77.c_lm77_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm77.c_lm77_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm77_data = type { i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting lm77 update\0A\00", align 1
@LM77_REG_TEMP = common dso_local global i32 0, align 4
@LM77_REG_TEMP_HYST = common dso_local global i32 0, align 4
@LM77_REG_TEMP_CRIT = common dso_local global i32 0, align 4
@LM77_REG_TEMP_MIN = common dso_local global i32 0, align 4
@LM77_REG_TEMP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm77_data* (%struct.device*)* @lm77_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm77_data* @lm77_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm77_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.lm77_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.lm77_data* %8, %struct.lm77_data** %4, align 8
  %9 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %10 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %14 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @HZ, align 4
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i64 @time_after(i64 %12, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %27 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @LM77_REG_TEMP, align 4
  %36 = call i32 @lm77_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = call i8* @LM77_TEMP_FROM_REG(i32 %36)
  %38 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %39 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %41 = load i32, i32* @LM77_REG_TEMP_HYST, align 4
  %42 = call i32 @lm77_read_value(%struct.i2c_client* %40, i32 %41)
  %43 = call i8* @LM77_TEMP_FROM_REG(i32 %42)
  %44 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %45 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load i32, i32* @LM77_REG_TEMP_CRIT, align 4
  %48 = call i32 @lm77_read_value(%struct.i2c_client* %46, i32 %47)
  %49 = call i8* @LM77_TEMP_FROM_REG(i32 %48)
  %50 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %51 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i32, i32* @LM77_REG_TEMP_MIN, align 4
  %54 = call i32 @lm77_read_value(%struct.i2c_client* %52, i32 %53)
  %55 = call i8* @LM77_TEMP_FROM_REG(i32 %54)
  %56 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %57 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %59 = load i32, i32* @LM77_REG_TEMP_MAX, align 4
  %60 = call i32 @lm77_read_value(%struct.i2c_client* %58, i32 %59)
  %61 = call i8* @LM77_TEMP_FROM_REG(i32 %60)
  %62 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %63 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* @LM77_REG_TEMP, align 4
  %66 = call i32 @lm77_read_value(%struct.i2c_client* %64, i32 %65)
  %67 = and i32 %66, 7
  %68 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %69 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* @jiffies, align 8
  %71 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %72 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  %73 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %74 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %30, %25
  %76 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  %77 = getelementptr inbounds %struct.lm77_data, %struct.lm77_data* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.lm77_data*, %struct.lm77_data** %4, align 8
  ret %struct.lm77_data* %79
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm77_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @LM77_TEMP_FROM_REG(i32) #1

declare dso_local i32 @lm77_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
