; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83793.c_store_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83793_data = type { i32*, i32**, i32 }

@scale_in = common dso_local global i32* null, align 8
@scale_in_add = common dso_local global i32* null, align 8
@W83793_REG_IN_LOW_BITS = common dso_local global i32* null, align 8
@W83793_REG_IN = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83793_data*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %9, align 8
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call %struct.i2c_client* @to_i2c_client(%struct.device* %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %26 = call %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client* %25)
  store %struct.w83793_data* %26, %struct.w83793_data** %13, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @simple_strtoul(i8* %27, i32* null, i32 10)
  %29 = load i32*, i32** @scale_in, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = add nsw i32 %28, %34
  %36 = load i32*, i32** @scale_in, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %35, %40
  store i32 %41, i32* %14, align 4
  %42 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %43 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 2
  br i1 %46, label %47, label %70

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 1, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 2, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %50, %47
  %54 = load i32*, i32** @scale_in_add, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @scale_in, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %58, %63
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %53, %50
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @SENSORS_LIMIT(i32 %68, i32 0, i32 255)
  store i32 %69, i32* %14, align 4
  br label %127

70:                                               ; preds = %4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @SENSORS_LIMIT(i32 %71, i32 0, i32 1023)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %74 = load i32*, i32** @W83793_REG_IN_LOW_BITS, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @w83793_read_value(%struct.i2c_client* %73, i32 %78)
  %80 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %81 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 2, %86
  %88 = shl i32 3, %87
  %89 = xor i32 %88, -1
  %90 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %91 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %89
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %14, align 4
  %99 = and i32 %98, 3
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 2, %100
  %102 = shl i32 %99, %101
  %103 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %104 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %102
  store i32 %110, i32* %108, align 4
  %111 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %112 = load i32*, i32** @W83793_REG_IN_LOW_BITS, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %118 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @w83793_write_value(%struct.i2c_client* %111, i32 %116, i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = ashr i32 %125, 2
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %70, %67
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %130 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %128, i32* %138, align 4
  %139 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %140 = load i32**, i32*** @W83793_REG_IN, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %150 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @w83793_write_value(%struct.i2c_client* %139, i32 %148, i32 %159)
  %161 = load %struct.w83793_data*, %struct.w83793_data** %13, align 8
  %162 = getelementptr inbounds %struct.w83793_data, %struct.w83793_data* %161, i32 0, i32 2
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i64, i64* %8, align 8
  ret i64 %164
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83793_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SENSORS_LIMIT(i32, i32, i32) #1

declare dso_local i32 @w83793_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83793_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
