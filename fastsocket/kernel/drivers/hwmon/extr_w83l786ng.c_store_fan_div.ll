; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l786ng.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83l786ng_data = type { i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83l786ng_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %10, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %24 = call %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client* %23)
  store %struct.w83l786ng_data* %24, %struct.w83l786ng_data** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %26 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %29 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %36 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @DIV_FROM_REG(i32 %41)
  %43 = call i64 @FAN_FROM_REG(i32 %34, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @simple_strtoul(i8* %44, i32* null, i32 10)
  %46 = call i32 @DIV_TO_REG(i32 %45)
  %47 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %48 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %56 [
    i32 0, label %54
    i32 1, label %55
  ]

54:                                               ; preds = %4
  store i32 248, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %56

55:                                               ; preds = %4
  store i32 143, i32* %15, align 4
  store i32 4, i32* %16, align 4
  br label %56

56:                                               ; preds = %4, %55, %54
  %57 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %58 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %59 = call i32 @w83l786ng_read_value(%struct.i2c_client* %57, i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %14, align 4
  %62 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %63 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %75 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @w83l786ng_write_value(%struct.i2c_client* %74, i32 %75, i32 %78)
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %82 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @DIV_FROM_REG(i32 %87)
  %89 = call i32 @FAN_TO_REG(i64 %80, i32 %88)
  %90 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %91 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @W83L786NG_REG_FAN_MIN(i32 %97)
  %99 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %100 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @w83l786ng_write_value(%struct.i2c_client* %96, i32 %98, i32 %105)
  %107 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %11, align 8
  %108 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %107, i32 0, i32 2
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i64, i64* %8, align 8
  ret i64 %110
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83l786ng_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83l786ng_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
