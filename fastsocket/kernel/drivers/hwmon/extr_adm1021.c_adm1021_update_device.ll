; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1021_data = type { i32, i32*, i32*, i32*, i32, i64, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting adm1021 update\0A\00", align 1
@ADM1021_REG_STATUS = common dso_local global i32 0, align 4
@adm1023 = common dso_local global i64 0, align 8
@ADM1023_REG_REM_TEMP_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_TOS_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_THYST_PREC = common dso_local global i32 0, align 4
@ADM1023_REG_REM_OFFSET = common dso_local global i32 0, align 4
@ADM1023_REG_REM_OFFSET_PREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1021_data* (%struct.device*)* @adm1021_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1021_data* @adm1021_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adm1021_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.adm1021_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.adm1021_data* %9, %struct.adm1021_data** %4, align 8
  %10 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %11 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %10, i32 0, i32 8
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %15 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %14, i32 0, i32 9
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @time_after(i64 %13, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %28 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %137, label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %72, %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %75

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ADM1021_REG_TEMP(i32 %40)
  %42 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %41)
  %43 = mul nsw i32 1000, %42
  %44 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %45 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ADM1021_REG_TOS_R(i32 %51)
  %53 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %52)
  %54 = mul nsw i32 1000, %53
  %55 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %56 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ADM1021_REG_THYST_R(i32 %62)
  %64 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %61, i32 %63)
  %65 = mul nsw i32 1000, %64
  %66 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %67 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %38
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %35

75:                                               ; preds = %35
  %76 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %77 = load i32, i32* @ADM1021_REG_STATUS, align 4
  %78 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %76, i32 %77)
  %79 = and i32 %78, 124
  %80 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %81 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %83 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @adm1023, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %75
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32, i32* @ADM1023_REG_REM_TEMP_PREC, align 4
  %90 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %88, i32 %89)
  %91 = ashr i32 %90, 5
  %92 = mul nsw i32 125, %91
  %93 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %94 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %92
  store i32 %98, i32* %96, align 4
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = load i32, i32* @ADM1023_REG_REM_TOS_PREC, align 4
  %101 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %99, i32 %100)
  %102 = ashr i32 %101, 5
  %103 = mul nsw i32 125, %102
  %104 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %105 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load i32, i32* @ADM1023_REG_REM_THYST_PREC, align 4
  %112 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i32 %111)
  %113 = ashr i32 %112, 5
  %114 = mul nsw i32 125, %113
  %115 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %116 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %122 = load i32, i32* @ADM1023_REG_REM_OFFSET, align 4
  %123 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %121, i32 %122)
  %124 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %125 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %127 = load i32, i32* @ADM1023_REG_REM_OFFSET_PREC, align 4
  %128 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %126, i32 %127)
  %129 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %130 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %87, %75
  %132 = load i64, i64* @jiffies, align 8
  %133 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %134 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %133, i32 0, i32 9
  store i64 %132, i64* %134, align 8
  %135 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %136 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %131, %26
  %138 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  %139 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %138, i32 0, i32 8
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.adm1021_data*, %struct.adm1021_data** %4, align 8
  ret %struct.adm1021_data* %141
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1021_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1021_REG_TEMP(i32) #1

declare dso_local i32 @ADM1021_REG_TOS_R(i32) #1

declare dso_local i32 @ADM1021_REG_THYST_R(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
