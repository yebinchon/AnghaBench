; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1025.c_adm1025_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm1025_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Updating data.\0A\00", align 1
@ADM1025_REG_STATUS1 = common dso_local global i32 0, align 4
@ADM1025_REG_STATUS2 = common dso_local global i32 0, align 4
@ADM1025_REG_VID = common dso_local global i32 0, align 4
@ADM1025_REG_VID4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adm1025_data* (%struct.device*)* @adm1025_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adm1025_data* @adm1025_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adm1025_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.adm1025_data* %9, %struct.adm1025_data** %4, align 8
  %10 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %11 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %10, i32 0, i32 9
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %15 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %14, i32 0, i32 10
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %25 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %135, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %66, %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ADM1025_REG_IN(i32 %37)
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %36, i32 %38)
  %40 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %41 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @ADM1025_REG_IN_MIN(i32 %47)
  %49 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %48)
  %50 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %51 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ADM1025_REG_IN_MAX(i32 %57)
  %59 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %58)
  %60 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %61 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %35
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %32

69:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %104, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 2
  br i1 %72, label %73, label %107

73:                                               ; preds = %70
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ADM1025_REG_TEMP(i32 %75)
  %77 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %74, i32 %76)
  %78 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %79 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ADM1025_REG_TEMP_LOW(i32 %85)
  %87 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %84, i32 %86)
  %88 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %89 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ADM1025_REG_TEMP_HIGH(i32 %95)
  %97 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %94, i32 %96)
  %98 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %99 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %73
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %70

107:                                              ; preds = %70
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32, i32* @ADM1025_REG_STATUS1, align 4
  %110 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %108, i32 %109)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = load i32, i32* @ADM1025_REG_STATUS2, align 4
  %113 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %112)
  %114 = shl i32 %113, 8
  %115 = or i32 %110, %114
  %116 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %117 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 8
  %118 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %119 = load i32, i32* @ADM1025_REG_VID, align 4
  %120 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %118, i32 %119)
  %121 = and i32 %120, 15
  %122 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %123 = load i32, i32* @ADM1025_REG_VID4, align 4
  %124 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %122, i32 %123)
  %125 = and i32 %124, 1
  %126 = shl i32 %125, 4
  %127 = or i32 %121, %126
  %128 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %129 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load i64, i64* @jiffies, align 8
  %131 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %132 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %131, i32 0, i32 10
  store i64 %130, i64* %132, align 8
  %133 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %134 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %107, %23
  %136 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  %137 = getelementptr inbounds %struct.adm1025_data, %struct.adm1025_data* %136, i32 0, i32 9
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load %struct.adm1025_data*, %struct.adm1025_data** %4, align 8
  ret %struct.adm1025_data* %139
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1025_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1025_REG_IN(i32) #1

declare dso_local i32 @ADM1025_REG_IN_MIN(i32) #1

declare dso_local i32 @ADM1025_REG_IN_MAX(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP_LOW(i32) #1

declare dso_local i32 @ADM1025_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
