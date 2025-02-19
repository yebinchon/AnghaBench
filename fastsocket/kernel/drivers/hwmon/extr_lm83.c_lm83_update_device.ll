; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm83.c_lm83_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm83.c_lm83_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm83_data = type { i32, i32*, i32, i64, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Updating lm83 data.\0A\00", align 1
@LM83_REG_R_TEMP = common dso_local global i32* null, align 8
@LM83_REG_R_STATUS1 = common dso_local global i32 0, align 4
@LM83_REG_R_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm83_data* (%struct.device*)* @lm83_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm83_data* @lm83_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm83_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.lm83_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.lm83_data* %9, %struct.lm83_data** %4, align 8
  %10 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %11 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %15 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %25 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %49, %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 9
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32*, i32** @LM83_REG_R_TEMP, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %41)
  %43 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %44 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32, i32* @LM83_REG_R_STATUS1, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* @LM83_REG_R_STATUS2, align 4
  %58 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %63 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* @jiffies, align 8
  %65 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %66 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %68 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %52, %23
  %70 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  %71 = getelementptr inbounds %struct.lm83_data, %struct.lm83_data* %70, i32 0, i32 2
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.lm83_data*, %struct.lm83_data** %4, align 8
  ret %struct.lm83_data* %73
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm83_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
