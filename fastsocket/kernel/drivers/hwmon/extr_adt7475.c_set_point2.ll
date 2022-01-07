; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_point2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7475.c_set_point2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32, i32**, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@REG_CONFIG5 = common dso_local global i32 0, align 4
@AUTOMIN = common dso_local global i64 0, align 8
@autorange_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_point2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_point2(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.adt7475_data* %18, %struct.adt7475_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strict_strtol(i8* %21, i32 10, i64* %14)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %144

27:                                               ; preds = %4
  %28 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %29 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %28, i32 0, i32 3
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @REG_CONFIG5, align 4
  %32 = call i32 @adt7475_read(i32 %31)
  %33 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %34 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @TEMP_TMIN_REG(i64 %37)
  %39 = call i32 @adt7475_read(i32 %38)
  %40 = shl i32 %39, 2
  %41 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %42 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* @AUTOMIN, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %40, i32* %50, align 4
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @TEMP_TRANGE_REG(i64 %53)
  %55 = call i32 @adt7475_read(i32 %54)
  %56 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %57 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %60 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %55, i32* %62, align 4
  %63 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %64 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %65 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* @AUTOMIN, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @reg2temp(%struct.adt7475_data* %63, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64*, i64** @autorange_table, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** @autorange_table, align 8
  %86 = load i64*, i64** @autorange_table, align 8
  %87 = call i32 @ARRAY_SIZE(i64* %86)
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %85, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %84, %91
  %93 = call i64 @SENSORS_LIMIT(i64 %76, i64 %82, i64 %92)
  store i64 %93, i64* %14, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %14, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64*, i64** @autorange_table, align 8
  %100 = load i64*, i64** @autorange_table, align 8
  %101 = call i32 @ARRAY_SIZE(i64* %100)
  %102 = call i64 @find_nearest(i64 %98, i64* %99, i32 %101)
  store i64 %102, i64* %14, align 8
  %103 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %104 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -241
  store i32 %111, i32* %109, align 4
  %112 = load i64, i64* %14, align 8
  %113 = shl i64 %112, 4
  %114 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %115 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %118 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = or i64 %122, %113
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %126 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %127 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @TEMP_TRANGE_REG(i64 %128)
  %130 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %131 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %134 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %125, i32 %129, i64 %138)
  %140 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %141 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %140, i32 0, i32 3
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load i64, i64* %9, align 8
  store i64 %143, i64* %5, align 8
  br label %144

144:                                              ; preds = %27, %24
  %145 = load i64, i64* %5, align 8
  ret i64 %145
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @strict_strtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @TEMP_TMIN_REG(i64) #1

declare dso_local i32 @TEMP_TRANGE_REG(i64) #1

declare dso_local i32 @reg2temp(%struct.adt7475_data*, i32) #1

declare dso_local i64 @SENSORS_LIMIT(i64, i64, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @find_nearest(i64, i64*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
