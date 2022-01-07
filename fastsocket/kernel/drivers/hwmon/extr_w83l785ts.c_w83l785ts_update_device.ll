; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83l785ts_data = type { i32, i32, i64, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Updating w83l785ts data.\0A\00", align 1
@W83L785TS_REG_TEMP = common dso_local global i32 0, align 4
@W83L785TS_REG_TEMP_OVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83l785ts_data* (%struct.device*)* @w83l785ts_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83l785ts_data* @w83l785ts_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.w83l785ts_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.w83l785ts_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.w83l785ts_data* %8, %struct.w83l785ts_data** %4, align 8
  %9 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %10 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %13 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %19 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %17, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %16, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* @W83L785TS_REG_TEMP, align 4
  %33 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %34 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %33, i32 0, i32 3
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @w83l785ts_read_value(%struct.i2c_client* %31, i32 %32, i8* %37)
  %39 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %40 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %39, i32 0, i32 3
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  store i8* %38, i8** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* @W83L785TS_REG_TEMP_OVER, align 4
  %45 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %46 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %45, i32 0, i32 3
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @w83l785ts_read_value(%struct.i2c_client* %43, i32 %44, i8* %49)
  %51 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %52 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %51, i32 0, i32 3
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  store i8* %50, i8** %54, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %57 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %59 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %27, %16
  %61 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  %62 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %4, align 8
  ret %struct.w83l785ts_data* %64
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83l785ts_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @w83l785ts_read_value(%struct.i2c_client*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
