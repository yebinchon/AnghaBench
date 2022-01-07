; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_set_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm9240.c_set_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adm9240_data = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"fan%u low limit set disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"fan%u low limit set minimum %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"fan%u low limit set fan speed %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adm9240_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %9, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.i2c_client* @to_i2c_client(%struct.device* %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.adm9240_data* %21, %struct.adm9240_data** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %28 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %4
  %33 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %34 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 255, i32* %38, align 4
  %39 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %40 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %110

51:                                               ; preds = %4
  %52 = load i64, i64* %12, align 8
  %53 = icmp ult i64 %52, 664
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  store i32 3, i32* %14, align 4
  %55 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %56 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 254, i32* %60, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %14, align 4
  %66 = shl i32 1, %65
  %67 = call i32 @FAN_FROM_REG(i32 254, i32 %66)
  %68 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  br label %109

69:                                               ; preds = %51
  %70 = load i64, i64* %12, align 8
  %71 = udiv i64 1350000, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %81, %69
  %74 = load i32, i32* %15, align 4
  %75 = icmp ugt i32 %74, 192
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 3
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ false, %73 ], [ %78, %76 ]
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = udiv i32 %84, 2
  store i32 %85, i32* %15, align 4
  br label %73

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %95 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = shl i32 1, %105
  %107 = call i32 @FAN_FROM_REG(i32 %104, i32 %106)
  %108 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %92, %54
  br label %110

110:                                              ; preds = %109, %32
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %113 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %111, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %123 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @adm9240_write_fan_div(%struct.i2c_client* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %120, %110
  %133 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @ADM9240_REG_FAN_MIN(i32 %134)
  %136 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %137 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %133, i32 %135, i32 %142)
  %144 = load %struct.adm9240_data*, %struct.adm9240_data** %11, align 8
  %145 = getelementptr inbounds %struct.adm9240_data, %struct.adm9240_data* %144, i32 0, i32 2
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i64, i64* %8, align 8
  ret i64 %147
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.adm9240_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @adm9240_write_fan_div(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADM9240_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
