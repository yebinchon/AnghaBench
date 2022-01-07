; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl520_data = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GL520_REG_FAN_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.gl520_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.gl520_data* %18, %struct.gl520_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  switch i64 %25, label %30 [
    i64 1, label %26
    i64 2, label %27
    i64 4, label %28
    i64 8, label %29
  ]

26:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %37

27:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %37

28:                                               ; preds = %4
  store i32 2, i32* %14, align 4
  br label %37

29:                                               ; preds = %4
  store i32 3, i32* %14, align 4
  br label %37

30:                                               ; preds = %4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %77

37:                                               ; preds = %29, %28, %27, %26
  %38 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %39 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %43 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %37
  %51 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %52 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %54 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %55 = call i32 @gl520_read_value(%struct.i2c_client* %53, i32 %54)
  %56 = and i32 %55, -193
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 6
  %59 = or i32 %56, %58
  %60 = call i32 @gl520_write_value(%struct.i2c_client* %51, i32 %52, i32 %59)
  br label %72

61:                                               ; preds = %37
  %62 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %63 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %65 = load i32, i32* @GL520_REG_FAN_DIV, align 4
  %66 = call i32 @gl520_read_value(%struct.i2c_client* %64, i32 %65)
  %67 = and i32 %66, -49
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 %68, 4
  %70 = or i32 %67, %69
  %71 = call i32 @gl520_write_value(%struct.i2c_client* %62, i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %61, %50
  %73 = load %struct.gl520_data*, %struct.gl520_data** %11, align 8
  %74 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %9, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %72, %30
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl520_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
