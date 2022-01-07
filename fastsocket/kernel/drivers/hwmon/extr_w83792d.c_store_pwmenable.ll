; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_pwmenable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83792d.c_store_pwmenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83792d_data = type { i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83792D_REG_FAN_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwmenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwmenable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83792d_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute* %21, %struct.sensor_device_attribute** %10, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call %struct.i2c_client* @to_i2c_client(%struct.device* %26)
  store %struct.i2c_client* %27, %struct.i2c_client** %12, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %29 = call %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client* %28)
  store %struct.w83792d_data* %29, %struct.w83792d_data** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @simple_strtoul(i8* %30, i32* null, i32 10)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %4
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %103

40:                                               ; preds = %34
  %41 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %42 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32, i32* %14, align 4
  switch i32 %44, label %66 [
    i32 1, label %45
    i32 2, label %52
    i32 3, label %59
  ]

45:                                               ; preds = %40
  %46 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %47 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  br label %66

52:                                               ; preds = %40
  %53 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %54 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 2, i32* %58, align 4
  br label %66

59:                                               ; preds = %40
  %60 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %61 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %40, %59, %52, %45
  %67 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %68 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  %72 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %73 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 2
  store i32 %77, i32* %17, align 4
  %78 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %79 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 4
  store i32 %83, i32* %18, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %85 = load i32, i32* @W83792D_REG_FAN_CFG, align 4
  %86 = call i32 @w83792d_read_value(%struct.i2c_client* %84, i32 %85)
  %87 = and i32 %86, 192
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %18, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %17, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %16, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %15, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %96 = load i32, i32* @W83792D_REG_FAN_CFG, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @w83792d_write_value(%struct.i2c_client* %95, i32 %96, i32 %97)
  %99 = load %struct.w83792d_data*, %struct.w83792d_data** %13, align 8
  %100 = getelementptr inbounds %struct.w83792d_data, %struct.w83792d_data* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i64, i64* %9, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %66, %37
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83792d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83792d_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83792d_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
