; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_g760a.c_g760a_update_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_g760a.c_g760a_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g760a_data = type { i32, i32, i64, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@G760A_UPDATE_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Starting g760a update\0A\00", align 1
@G760A_REG_SET_CNT = common dso_local global i32 0, align 4
@G760A_REG_ACT_CNT = common dso_local global i32 0, align 4
@G760A_REG_FAN_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g760a_data* (%struct.device*)* @g760a_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g760a_data* @g760a_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.g760a_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.g760a_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.g760a_data* %8, %struct.g760a_data** %4, align 8
  %9 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %10 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %14 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @G760A_UPDATE_INTERVAL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @time_after(i64 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %22 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @G760A_REG_SET_CNT, align 4
  %31 = call i8* @g760a_read_value(%struct.i2c_client* %29, i32 %30)
  %32 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %33 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @G760A_REG_ACT_CNT, align 4
  %36 = call i8* @g760a_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %38 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* @G760A_REG_FAN_STA, align 4
  %41 = call i8* @g760a_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %43 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %46 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %48 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %25, %20
  %50 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  %51 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.g760a_data*, %struct.g760a_data** %4, align 8
  ret %struct.g760a_data* %53
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.g760a_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @g760a_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
