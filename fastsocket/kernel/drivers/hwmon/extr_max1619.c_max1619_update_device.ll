; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max1619.c_max1619_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1619_data = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Updating max1619 data.\0A\00", align 1
@MAX1619_REG_R_LOCAL_TEMP = common dso_local global i32 0, align 4
@MAX1619_REG_R_REMOTE_TEMP = common dso_local global i32 0, align 4
@MAX1619_REG_R_REMOTE_HIGH = common dso_local global i32 0, align 4
@MAX1619_REG_R_REMOTE_LOW = common dso_local global i32 0, align 4
@MAX1619_REG_R_REMOTE_CRIT = common dso_local global i32 0, align 4
@MAX1619_REG_R_TCRIT_HYST = common dso_local global i32 0, align 4
@MAX1619_REG_R_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max1619_data* (%struct.device*)* @max1619_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max1619_data* @max1619_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.max1619_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2c_client* @to_i2c_client(%struct.device* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.max1619_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.max1619_data* %8, %struct.max1619_data** %4, align 8
  %9 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %10 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i64, i64* @jiffies, align 8
  %13 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %14 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i64 @time_after(i64 %12, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %24 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %71, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = load i32, i32* @MAX1619_REG_R_LOCAL_TEMP, align 4
  %33 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  %34 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %35 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* @MAX1619_REG_R_REMOTE_TEMP, align 4
  %38 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  %39 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %40 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* @MAX1619_REG_R_REMOTE_HIGH, align 4
  %43 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  %44 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %45 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load i32, i32* @MAX1619_REG_R_REMOTE_LOW, align 4
  %48 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  %49 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %50 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %52 = load i32, i32* @MAX1619_REG_R_REMOTE_CRIT, align 4
  %53 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %51, i32 %52)
  %54 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %55 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* @MAX1619_REG_R_TCRIT_HYST, align 4
  %58 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  %59 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %60 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32, i32* @MAX1619_REG_R_STATUS, align 4
  %63 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 %62)
  %64 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %65 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i64, i64* @jiffies, align 8
  %67 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %68 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %70 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %27, %22
  %72 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  %73 = getelementptr inbounds %struct.max1619_data, %struct.max1619_data* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.max1619_data*, %struct.max1619_data** %4, align 8
  ret %struct.max1619_data* %75
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max1619_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
