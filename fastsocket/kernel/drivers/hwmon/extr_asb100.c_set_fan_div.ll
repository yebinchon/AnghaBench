; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.asb100_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@ASB100_REG_VID_FANDIV = common dso_local global i32 0, align 4
@ASB100_REG_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.asb100_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.i2c_client* @to_i2c_client(%struct.device* %19)
  store %struct.i2c_client* %20, %struct.i2c_client** %10, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %22 = call %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client* %21)
  store %struct.asb100_data* %22, %struct.asb100_data** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %26 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %29 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %36 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DIV_FROM_REG(i32 %41)
  %43 = call i64 @FAN_FROM_REG(i32 %34, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @DIV_TO_REG(i64 %44)
  %46 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %47 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %104 [
    i32 0, label %53
    i32 1, label %70
    i32 2, label %87
  ]

53:                                               ; preds = %4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %55 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %56 = call i32 @asb100_read_value(%struct.i2c_client* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = and i32 %57, 207
  %59 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %60 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 4
  %65 = or i32 %58, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %67 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @asb100_write_value(%struct.i2c_client* %66, i32 %67, i32 %68)
  br label %104

70:                                               ; preds = %4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %72 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %73 = call i32 @asb100_read_value(%struct.i2c_client* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %74, 63
  %76 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %77 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 6
  %82 = or i32 %75, %81
  store i32 %82, i32* %14, align 4
  %83 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %84 = load i32, i32* @ASB100_REG_VID_FANDIV, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @asb100_write_value(%struct.i2c_client* %83, i32 %84, i32 %85)
  br label %104

87:                                               ; preds = %4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %89 = load i32, i32* @ASB100_REG_PIN, align 4
  %90 = call i32 @asb100_read_value(%struct.i2c_client* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = and i32 %91, 63
  %93 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %94 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 6
  %99 = or i32 %92, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %101 = load i32, i32* @ASB100_REG_PIN, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @asb100_write_value(%struct.i2c_client* %100, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %4, %87, %70, %53
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %107 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @DIV_FROM_REG(i32 %112)
  %114 = call i32 @FAN_TO_REG(i64 %105, i32 %113)
  %115 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %116 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @ASB100_REG_FAN_MIN(i32 %122)
  %124 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %125 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @asb100_write_value(%struct.i2c_client* %121, i32 %123, i32 %130)
  %132 = load %struct.asb100_data*, %struct.asb100_data** %11, align 8
  %133 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %132, i32 0, i32 2
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i64, i64* %8, align 8
  ret i64 %135
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.asb100_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i64) #1

declare dso_local i32 @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @asb100_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @ASB100_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
