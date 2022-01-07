; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm1026_data = type { i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADM1026_REG_FAN_DIV_0_3 = common dso_local global i32 0, align 4
@ADM1026_REG_FAN_DIV_4_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.adm1026_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call %struct.i2c_client* @to_i2c_client(%struct.device* %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %26 = call %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client* %25)
  store %struct.adm1026_data* %26, %struct.adm1026_data** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @simple_strtol(i8* %27, i32* null, i32 10)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @DIV_TO_REG(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %111

36:                                               ; preds = %4
  %37 = load %struct.adm1026_data*, %struct.adm1026_data** %13, align 8
  %38 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.adm1026_data*, %struct.adm1026_data** %13, align 8
  %41 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @DIV_FROM_REG(i32 %47)
  %49 = load %struct.adm1026_data*, %struct.adm1026_data** %13, align 8
  %50 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %73

57:                                               ; preds = %36
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 2, %58
  store i32 %59, i32* %17, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %61 = load i32, i32* @ADM1026_REG_FAN_DIV_0_3, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @DIV_TO_REG(i32 %62)
  %64 = load i32, i32* %17, align 4
  %65 = shl i32 3, %64
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = call i32 @adm1026_write_value(%struct.i2c_client* %60, i32 %61, i32 %71)
  br label %91

73:                                               ; preds = %36
  %74 = load i32, i32* %11, align 4
  %75 = sub nsw i32 %74, 4
  %76 = mul nsw i32 2, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %78 = load i32, i32* @ADM1026_REG_FAN_DIV_4_7, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @DIV_TO_REG(i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = mul nsw i32 2, %81
  %83 = shl i32 3, %82
  %84 = xor i32 %83, -1
  %85 = and i32 %80, %84
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %85, %88
  %90 = call i32 @adm1026_write_value(%struct.i2c_client* %77, i32 %78, i32 %89)
  br label %91

91:                                               ; preds = %73, %57
  %92 = load %struct.adm1026_data*, %struct.adm1026_data** %13, align 8
  %93 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @fixup_fan_min(%struct.device* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.adm1026_data*, %struct.adm1026_data** %13, align 8
  %108 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %106, %33
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm1026_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @DIV_TO_REG(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @adm1026_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @fixup_fan_min(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
