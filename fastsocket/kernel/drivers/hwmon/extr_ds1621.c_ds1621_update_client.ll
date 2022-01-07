; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ds1621.c_ds1621_update_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ds1621.c_ds1621_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds1621_data = type { i32, i32, i64, i32, i32* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Starting ds1621 update\0A\00", align 1
@DS1621_REG_CONF = common dso_local global i32 0, align 4
@DS1621_REG_TEMP = common dso_local global i32* null, align 8
@DS1621_ALARM_TEMP_LOW = common dso_local global i32 0, align 4
@DS1621_ALARM_TEMP_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ds1621_data* (%struct.device*)* @ds1621_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ds1621_data* @ds1621_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ds1621_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2c_client* @to_i2c_client(%struct.device* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %3, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.ds1621_data* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.ds1621_data* %10, %struct.ds1621_data** %4, align 8
  %11 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %12 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %16 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %14, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %29 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %119, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* @DS1621_REG_CONF, align 4
  %38 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %37)
  %39 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %40 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %62, %32
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %44 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load i32*, i32** @DS1621_REG_TEMP, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ds1621_read_temp(%struct.i2c_client* %49, i32 %54)
  %56 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %57 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %67 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %5, align 4
  %69 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %70 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %75 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load i32, i32* @DS1621_ALARM_TEMP_LOW, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %65
  %86 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %87 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %92 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %90, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load i32, i32* @DS1621_ALARM_TEMP_HIGH, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %85
  %103 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %104 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* @DS1621_REG_CONF, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %102
  %114 = load i64, i64* @jiffies, align 8
  %115 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %116 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %118 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %27
  %120 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  %121 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load %struct.ds1621_data*, %struct.ds1621_data** %4, align 8
  ret %struct.ds1621_data* %123
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1621_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ds1621_read_temp(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
