; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_set_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_set_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.gl518_data = type { i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Invalid fan clock divider %lu, choose one of 1, 2, 4 or 8\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@GL518_REG_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_fan_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.gl518_data*, align 8
  %12 = alloca i32, align 4
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
  %18 = call %struct.gl518_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.gl518_data* %18, %struct.gl518_data** %11, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @simple_strtoul(i8* %23, i32* null, i32 10)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %14, align 8
  switch i64 %25, label %30 [
    i64 1, label %26
    i64 2, label %27
    i64 4, label %28
    i64 8, label %29
  ]

26:                                               ; preds = %4
  store i64 0, i64* %14, align 8
  br label %36

27:                                               ; preds = %4
  store i64 1, i64* %14, align 8
  br label %36

28:                                               ; preds = %4
  store i64 2, i64* %14, align 8
  br label %36

29:                                               ; preds = %4
  store i64 3, i64* %14, align 8
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %79

36:                                               ; preds = %29, %28, %27, %26
  %37 = load %struct.gl518_data*, %struct.gl518_data** %11, align 8
  %38 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = load i32, i32* @GL518_REG_MISC, align 4
  %42 = call i32 @gl518_read_value(%struct.i2c_client* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.gl518_data*, %struct.gl518_data** %11, align 8
  %45 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %43, i64* %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 2, %51
  %53 = ashr i32 192, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.gl518_data*, %struct.gl518_data** %11, align 8
  %58 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = mul nsw i32 2, %64
  %66 = sub nsw i32 6, %65
  %67 = zext i32 %66 to i64
  %68 = shl i64 %63, %67
  %69 = or i64 %56, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %72 = load i32, i32* @GL518_REG_MISC, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @gl518_write_value(%struct.i2c_client* %71, i32 %72, i32 %73)
  %75 = load %struct.gl518_data*, %struct.gl518_data** %11, align 8
  %76 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %36, %30
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.gl518_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @gl518_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
