; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp421.c_tmp421_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmp421_data = type { i32, i32, i32, i32*, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TMP421_CONFIG_REG_1 = common dso_local global i32 0, align 4
@TMP421_TEMP_MSB = common dso_local global i32* null, align 8
@TMP421_TEMP_LSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tmp421_data* (%struct.device*)* @tmp421_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tmp421_data* @tmp421_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tmp421_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.tmp421_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.tmp421_data* %9, %struct.tmp421_data** %4, align 8
  %10 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %11 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %10, i32 0, i32 4
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %15 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %25 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load i32, i32* @TMP421_CONFIG_REG_1, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  %32 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %33 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %70, %28
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %37 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %34
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32*, i32** @TMP421_TEMP_MSB, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %46)
  %48 = shl i32 %47, 8
  %49 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %50 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %56 = load i32*, i32** @TMP421_TEMP_LSB, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %55, i32 %60)
  %62 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %63 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %61
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %40
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %34

73:                                               ; preds = %34
  %74 = load i64, i64* @jiffies, align 8
  %75 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %76 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %75, i32 0, i32 5
  store i64 %74, i64* %76, align 8
  %77 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %78 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %23
  %80 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  %81 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %80, i32 0, i32 4
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.tmp421_data*, %struct.tmp421_data** %4, align 8
  ret %struct.tmp421_data* %83
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.tmp421_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
