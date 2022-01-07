; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { i32, i32, i64, i32 (%struct.lm93_data*, %struct.i2c_client*)* }
%struct.i2c_client = type opaque
%struct.device = type { i32 }
%struct.i2c_client.0 = type { i32 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm93_data* (%struct.device*)* @lm93_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm93_data* @lm93_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client.0*, align 8
  %4 = alloca %struct.lm93_data*, align 8
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client.0* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client.0* %7, %struct.i2c_client.0** %3, align 8
  %8 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %9 = call %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client.0* %8)
  store %struct.lm93_data* %9, %struct.lm93_data** %4, align 8
  %10 = load i32, i32* @HZ, align 4
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %10, %12
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %16 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %20 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %21, %22
  %24 = call i64 @time_after(i64 %18, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %28 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %33 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %32, i32 0, i32 3
  %34 = load i32 (%struct.lm93_data*, %struct.i2c_client*)*, i32 (%struct.lm93_data*, %struct.i2c_client*)** %33, align 8
  %35 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %36 = load %struct.i2c_client.0*, %struct.i2c_client.0** %3, align 8
  %37 = bitcast %struct.i2c_client.0* %36 to %struct.i2c_client*
  %38 = call i32 %34(%struct.lm93_data* %35, %struct.i2c_client* %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %41 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %43 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %31, %26
  %45 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  %46 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.lm93_data*, %struct.lm93_data** %4, align 8
  ret %struct.lm93_data* %48
}

declare dso_local %struct.i2c_client.0* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm93_data* @i2c_get_clientdata(%struct.i2c_client.0*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
