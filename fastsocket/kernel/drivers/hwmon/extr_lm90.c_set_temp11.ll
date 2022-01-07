; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temp11.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm90.c_set_temp11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.lm90_data = type { i64, i32*, i32 }

@set_temp11.reg = internal constant [6 x i32] [i32 131, i32 130, i32 133, i32 132, i32 129, i32 128], align 16
@lm99 = common dso_local global i64 0, align 8
@adt7461 = common dso_local global i64 0, align 8
@max6657 = common dso_local global i64 0, align 8
@max6680 = common dso_local global i64 0, align 8
@max6646 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp11(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.lm90_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = call %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.lm90_data* %19, %struct.lm90_data** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @simple_strtol(i8* %20, i32* null, i32 10)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %26 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @lm99, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %4
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = sub nsw i64 %36, 16000
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %35, %30, %4
  %39 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %40 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %43 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @adt7461, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @temp_to_u16_adt7461(%struct.lm90_data* %48, i64 %49)
  %51 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %52 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  br label %106

57:                                               ; preds = %38
  %58 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %59 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @max6657, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %65 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @max6680, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63, %57
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @temp_to_s8(i64 %70)
  %72 = shl i32 %71, 8
  %73 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %74 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %105

79:                                               ; preds = %63
  %80 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %81 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @max6646, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @temp_to_u8(i64 %86)
  %88 = shl i32 %87, 8
  %89 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %90 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %104

95:                                               ; preds = %79
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @temp_to_s16(i64 %96)
  %98 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %99 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %95, %85
  br label %105

105:                                              ; preds = %104, %69
  br label %106

106:                                              ; preds = %105, %47
  %107 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %108, 1
  %110 = mul nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* @set_temp11.reg, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %115 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 8
  %122 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %113, i32 %121)
  %123 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %124 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @max6657, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %158

128:                                              ; preds = %106
  %129 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %130 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @max6680, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  %135 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %136 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @max6646, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %134
  %141 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sub nsw i32 %142, 1
  %144 = mul nsw i32 %143, 2
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x i32], [6 x i32]* @set_temp11.reg, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %150 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 255
  %157 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %141, i32 %148, i32 %156)
  br label %158

158:                                              ; preds = %140, %134, %128, %106
  %159 = load %struct.lm90_data*, %struct.lm90_data** %11, align 8
  %160 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %159, i32 0, i32 2
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i64, i64* %8, align 8
  ret i64 %162
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.lm90_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temp_to_u16_adt7461(%struct.lm90_data*, i64) #1

declare dso_local i32 @temp_to_s8(i64) #1

declare dso_local i32 @temp_to_u8(i64) #1

declare dso_local i32 @temp_to_s16(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
