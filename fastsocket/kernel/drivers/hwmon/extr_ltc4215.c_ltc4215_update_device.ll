; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4215.c_ltc4215_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4215.c_ltc4215_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4215_data = type { i32, i32, i64, i64* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting ltc4215 update\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4215_data* (%struct.device*)* @ltc4215_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4215_data* @ltc4215_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ltc4215_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.ltc4215_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.ltc4215_data* %10, %struct.ltc4215_data** %4, align 8
  %11 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %12 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %16 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 10
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_after(i64 %14, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %26 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %65, %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %36 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @ARRAY_SIZE(i64* %37)
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %51 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %50, i32 0, i32 3
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 0, i64* %55, align 8
  br label %64

56:                                               ; preds = %40
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %59 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %33

68:                                               ; preds = %33
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %71 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %73 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %24
  %75 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  %76 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.ltc4215_data*, %struct.ltc4215_data** %4, align 8
  ret %struct.ltc4215_data* %78
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ltc4215_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
