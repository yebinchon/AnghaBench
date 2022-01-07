; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atxp1_data = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@ATXP1_VID = common dso_local global i32 0, align 4
@ATXP1_CVID = common dso_local global i32 0, align 4
@ATXP1_GPIO1 = common dso_local global i32 0, align 4
@ATXP1_GPIO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atxp1_data* (%struct.device*)* @atxp1_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atxp1_data* @atxp1_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.atxp1_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.atxp1_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.atxp1_data* %8, %struct.atxp1_data** %4, align 8
  %9 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %10 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %14 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i64 @time_after(i32 %12, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %22 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %27 = load i32, i32* @ATXP1_VID, align 4
  %28 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %26, i32 %27)
  %29 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %30 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i8* %28, i8** %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load i32, i32* @ATXP1_CVID, align 4
  %34 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  %35 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %36 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i8* %34, i8** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = load i32, i32* @ATXP1_GPIO1, align 4
  %40 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  %41 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %42 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = load i32, i32* @ATXP1_GPIO2, align 4
  %46 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %45)
  %47 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %48 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %51 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %25, %20
  %53 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  %54 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.atxp1_data*, %struct.atxp1_data** %4, align 8
  ret %struct.atxp1_data* %56
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.atxp1_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
