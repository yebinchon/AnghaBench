; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4245.c_ltc4245_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4245.c_ltc4245_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4245_data = type { i32, i32, i64, i64*, i64* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Starting ltc4245 update\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ltc4245_data* (%struct.device*)* @ltc4245_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ltc4245_data* @ltc4245_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ltc4245_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.ltc4245_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.ltc4245_data* %10, %struct.ltc4245_data** %4, align 8
  %11 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %12 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %16 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %24 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %109, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %63, %27
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %34 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i64* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %31
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %49 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %48, i32 0, i32 4
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  br label %62

54:                                               ; preds = %38
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %57 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %56, i32 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %31

66:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %70 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %69, i32 0, i32 3
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @ARRAY_SIZE(i64* %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %67
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 16
  %78 = call i64 @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = icmp slt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %86 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  br label %99

91:                                               ; preds = %74
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %94 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %92, i64* %98, align 8
  br label %99

99:                                               ; preds = %91, %84
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %67

103:                                              ; preds = %67
  %104 = load i64, i64* @jiffies, align 8
  %105 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %106 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %105, i32 0, i32 2
  store i64 %104, i64* %106, align 8
  %107 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %108 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %22
  %110 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  %111 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  %113 = load %struct.ltc4245_data*, %struct.ltc4245_data** %4, align 8
  ret %struct.ltc4245_data* %113
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ltc4245_data* @i2c_get_clientdata(%struct.i2c_client*) #1

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
