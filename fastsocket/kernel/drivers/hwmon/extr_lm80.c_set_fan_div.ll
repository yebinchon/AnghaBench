; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm80.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm80_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@LM80_REG_FANDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.lm80_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.i2c_client* @to_i2c_client(%struct.device* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %23 = call %struct.lm80_data* @i2c_get_clientdata(%struct.i2c_client* %22)
  store %struct.lm80_data* %23, %struct.lm80_data** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @simple_strtoul(i8* %24, i32* null, i32 10)
  store i64 %25, i64* %14, align 8
  %26 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %27 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %30 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %37 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DIV_FROM_REG(i32 %42)
  %44 = call i64 @FAN_FROM_REG(i32 %35, i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %14, align 8
  switch i64 %45, label %74 [
    i64 1, label %46
    i64 2, label %53
    i64 4, label %60
    i64 8, label %67
  ]

46:                                               ; preds = %4
  %47 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %48 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 0, i32* %52, align 4
  br label %84

53:                                               ; preds = %4
  %54 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %55 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 1, i32* %59, align 4
  br label %84

60:                                               ; preds = %4
  %61 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %62 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 2, i32* %66, align 4
  br label %84

67:                                               ; preds = %4
  %68 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %69 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 3, i32* %73, align 4
  br label %84

74:                                               ; preds = %4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = load i64, i64* %14, align 8
  %78 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %77)
  %79 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %80 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i64, i64* @EINVAL, align 8
  %83 = sub i64 0, %82
  store i64 %83, i64* %5, align 8
  br label %142

84:                                               ; preds = %67, %60, %53, %46
  %85 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %86 = load i32, i32* @LM80_REG_FANDIV, align 4
  %87 = call i32 @lm80_read_value(%struct.i2c_client* %85, i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  %90 = mul nsw i32 2, %89
  %91 = shl i32 3, %90
  %92 = xor i32 %91, -1
  %93 = and i32 %87, %92
  %94 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %95 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  %103 = mul nsw i32 2, %102
  %104 = shl i32 %100, %103
  %105 = or i32 %93, %104
  store i32 %105, i32* %15, align 4
  %106 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %107 = load i32, i32* @LM80_REG_FANDIV, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @lm80_write_value(%struct.i2c_client* %106, i32 %107, i32 %108)
  %110 = load i64, i64* %13, align 8
  %111 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %112 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @DIV_FROM_REG(i32 %117)
  %119 = call i32 @FAN_TO_REG(i64 %110, i32 %118)
  %120 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %121 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @LM80_REG_FAN_MIN(i32 %128)
  %130 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %131 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @lm80_write_value(%struct.i2c_client* %126, i32 %129, i32 %136)
  %138 = load %struct.lm80_data*, %struct.lm80_data** %12, align 8
  %139 = getelementptr inbounds %struct.lm80_data, %struct.lm80_data* %138, i32 0, i32 2
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i64, i64* %9, align 8
  store i64 %141, i64* %5, align 8
  br label %142

142:                                              ; preds = %84, %74
  %143 = load i64, i64* %5, align 8
  ret i64 %143
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm80_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm80_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @lm80_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @LM80_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
