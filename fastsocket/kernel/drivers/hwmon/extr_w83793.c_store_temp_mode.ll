; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_temp_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_temp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83793_REG_TEMP_MODE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83793_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83793_data* %20, %struct.w83793_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %12, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 4
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 3, i32 1
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 2, %33
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = sub nsw i32 %36, 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i32 [ %34, %32 ], [ %37, %35 ]
  store i32 %39, i32* %15, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @simple_strtoul(i8* %40, i32* null, i32 10)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %48, 3
  store i32 %49, i32* %16, align 4
  br label %72

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %62, label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %16, align 4
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %16, align 4
  br label %71

68:                                               ; preds = %59, %56
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %5, align 8
  br label %134

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 4
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  store i32 %76, i32* %13, align 4
  %77 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %78 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %81 = load i32*, i32** @W83793_REG_TEMP_MODE, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @w83793_read_value(%struct.i2c_client* %80, i32 %85)
  %87 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %88 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = shl i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %98 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %96
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %15, align 4
  %107 = shl i32 %105, %106
  %108 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %109 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %107
  store i32 %115, i32* %113, align 4
  %116 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %117 = load i32*, i32** @W83793_REG_TEMP_MODE, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %123 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @w83793_write_value(%struct.i2c_client* %116, i32 %121, i32 %128)
  %130 = load %struct.w83793_data*, %struct.w83793_data** %11, align 8
  %131 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %130, i32 0, i32 1
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i64, i64* %9, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %72, %68
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
