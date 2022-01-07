; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_lm80_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_lm80_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm80_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32, i64, i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting lm80 update\0A\00", align 1
@LM80_REG_FAN1 = common dso_local global i32 0, align 4
@LM80_REG_FAN2 = common dso_local global i32 0, align 4
@LM80_REG_TEMP = common dso_local global i32 0, align 4
@LM80_REG_RES = common dso_local global i32 0, align 4
@LM80_REG_TEMP_OS_MAX = common dso_local global i32 0, align 4
@LM80_REG_TEMP_OS_HYST = common dso_local global i32 0, align 4
@LM80_REG_TEMP_HOT_MAX = common dso_local global i32 0, align 4
@LM80_REG_TEMP_HOT_HYST = common dso_local global i32 0, align 4
@LM80_REG_FANDIV = common dso_local global i32 0, align 4
@LM80_REG_ALARM1 = common dso_local global i32 0, align 4
@LM80_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm80_data* (%struct.device*)* @lm80_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm80_data* @lm80_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.lm80_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.i2c_client* @to_i2c_client(%struct.device* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call %struct.lm80_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.lm80_data* %9, %struct.lm80_data** %4, align 8
  %10 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %11 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %10, i32 0, i32 12
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %15 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %13, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %25 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %161, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %66, %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 6
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @LM80_REG_IN(i32 %37)
  %39 = call i32 @lm80_read_value(%struct.i2c_client* %36, i32 %38)
  %40 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %41 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @LM80_REG_IN_MIN(i32 %47)
  %49 = call i32 @lm80_read_value(%struct.i2c_client* %46, i32 %48)
  %50 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %51 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @LM80_REG_IN_MAX(i32 %57)
  %59 = call i32 @lm80_read_value(%struct.i2c_client* %56, i32 %58)
  %60 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %61 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %60, i32 0, i32 3
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
  %70 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %71 = load i32, i32* @LM80_REG_FAN1, align 4
  %72 = call i32 @lm80_read_value(%struct.i2c_client* %70, i32 %71)
  %73 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %74 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = call i32 @LM80_REG_FAN_MIN(i32 1)
  %79 = call i32 @lm80_read_value(%struct.i2c_client* %77, i32 %78)
  %80 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %81 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %85 = load i32, i32* @LM80_REG_FAN2, align 4
  %86 = call i32 @lm80_read_value(%struct.i2c_client* %84, i32 %85)
  %87 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %88 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %86, i32* %90, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = call i32 @LM80_REG_FAN_MIN(i32 2)
  %93 = call i32 @lm80_read_value(%struct.i2c_client* %91, i32 %92)
  %94 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %95 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 %93, i32* %97, align 4
  %98 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %99 = load i32, i32* @LM80_REG_TEMP, align 4
  %100 = call i32 @lm80_read_value(%struct.i2c_client* %98, i32 %99)
  %101 = shl i32 %100, 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = load i32, i32* @LM80_REG_RES, align 4
  %104 = call i32 @lm80_read_value(%struct.i2c_client* %102, i32 %103)
  %105 = and i32 %104, 240
  %106 = or i32 %101, %105
  %107 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %108 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = load i32, i32* @LM80_REG_TEMP_OS_MAX, align 4
  %111 = call i32 @lm80_read_value(%struct.i2c_client* %109, i32 %110)
  %112 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %113 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %115 = load i32, i32* @LM80_REG_TEMP_OS_HYST, align 4
  %116 = call i32 @lm80_read_value(%struct.i2c_client* %114, i32 %115)
  %117 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %118 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 8
  %119 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %120 = load i32, i32* @LM80_REG_TEMP_HOT_MAX, align 4
  %121 = call i32 @lm80_read_value(%struct.i2c_client* %119, i32 %120)
  %122 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %123 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %125 = load i32, i32* @LM80_REG_TEMP_HOT_HYST, align 4
  %126 = call i32 @lm80_read_value(%struct.i2c_client* %124, i32 %125)
  %127 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %128 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = load i32, i32* @LM80_REG_FANDIV, align 4
  %131 = call i32 @lm80_read_value(%struct.i2c_client* %129, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = ashr i32 %132, 2
  %134 = and i32 %133, 3
  %135 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %136 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %135, i32 0, i32 11
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 4
  %141 = and i32 %140, 3
  %142 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %143 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %142, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %141, i32* %145, align 4
  %146 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %147 = load i32, i32* @LM80_REG_ALARM1, align 4
  %148 = call i32 @lm80_read_value(%struct.i2c_client* %146, i32 %147)
  %149 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %150 = load i32, i32* @LM80_REG_ALARM2, align 4
  %151 = call i32 @lm80_read_value(%struct.i2c_client* %149, i32 %150)
  %152 = shl i32 %151, 8
  %153 = add nsw i32 %148, %152
  %154 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %155 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %154, i32 0, i32 14
  store i32 %153, i32* %155, align 8
  %156 = load i64, i64* @jiffies, align 8
  %157 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %158 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %157, i32 0, i32 13
  store i64 %156, i64* %158, align 8
  %159 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %160 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %161

161:                                              ; preds = %69, %23
  %162 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  %163 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %162, i32 0, i32 12
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.lm80_data*, %struct.lm80_data** %4, align 8
  ret %struct.lm80_data* %165
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm80_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM80_REG_IN(i32) #1

declare dso_local i32 @LM80_REG_IN_MIN(i32) #1

declare dso_local i32 @LM80_REG_IN_MAX(i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
