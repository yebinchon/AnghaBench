; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32*, i32 }

@W83792D_REG_FAN_DIV = common dso_local global i32* null, align 8
@W83792D_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83792d_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %9, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.i2c_client* @to_i2c_client(%struct.device* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %11, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %25 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %24)
  store %struct.w83792d_data* %25, %struct.w83792d_data** %12, align 8
  store i32 0, i32* %14, align 4
  %26 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %27 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %30 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %37 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DIV_FROM_REG(i32 %42)
  %44 = call i64 @FAN_FROM_REG(i32 %35, i32 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @simple_strtoul(i8* %45, i32* null, i32 10)
  %47 = call i32 @DIV_TO_REG(i32 %46)
  %48 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %49 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = load i32*, i32** @W83792D_REG_FAN_DIV, align 8
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @w83792d_read_value(%struct.i2c_client* %54, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 143, i32 248
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %4
  %73 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %74 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 4
  %81 = and i32 %80, 112
  br label %91

82:                                               ; preds = %4
  %83 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %84 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 7
  br label %91

91:                                               ; preds = %82, %72
  %92 = phi i32 [ %81, %72 ], [ %90, %82 ]
  store i32 %92, i32* %15, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %94 = load i32*, i32** @W83792D_REG_FAN_DIV, align 8
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @w83792d_write_value(%struct.i2c_client* %93, i32 %99, i32 %102)
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %106 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DIV_FROM_REG(i32 %111)
  %113 = call i32 @FAN_TO_REG(i64 %104, i32 %112)
  %114 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %115 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %121 = load i32*, i32** @W83792D_REG_FAN_MIN, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %127 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @w83792d_write_value(%struct.i2c_client* %120, i32 %125, i32 %132)
  %134 = load %struct.w83792d_data*, %struct.w83792d_data** %12, align 8
  %135 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i64, i64* %8, align 8
  ret i64 %137
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @DIV_TO_REG(i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
