; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_set_temp_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_set_temp_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.smsc47m192_data = type { i32*, i32 }

@SMSC47M192_REG_SFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp_offset(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.smsc47m192_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %9, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.i2c_client* @to_i2c_client(%struct.device* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %23 = call %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client* %22)
  store %struct.smsc47m192_data* %23, %struct.smsc47m192_data** %12, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %25 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %26 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @simple_strtol(i8* %27, i32* null, i32 10)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %30 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @TEMP_TO_REG(i64 %32)
  %34 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %35 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %4
  %43 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %44)
  %46 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %47 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %43, i32 %45, i32 %52)
  br label %107

54:                                               ; preds = %4
  %55 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %56 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %54
  %64 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %65 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 239
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 16, i32 0
  %72 = or i32 %67, %71
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i32 %65, i32 %72)
  %74 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %75 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %82)
  %84 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %85 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %81, i32 %83, i32 %90)
  br label %106

92:                                               ; preds = %54
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, 16
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 16, i32 0
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %102)
  %104 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %101, i32 %103, i32 0)
  br label %105

105:                                              ; preds = %100, %92
  br label %106

106:                                              ; preds = %105, %63
  br label %107

107:                                              ; preds = %106, %42
  %108 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %109 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %108, i32 0, i32 1
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i64, i64* %8, align 8
  ret i64 %111
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i64 @simple_strtol(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @SMSC47M192_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
