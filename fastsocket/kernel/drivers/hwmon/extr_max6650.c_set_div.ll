; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_set_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max6650_data = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"illegal value for fan divider (%d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@MAX6650_REG_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_div(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.max6650_data*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %16 = call %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.max6650_data* %16, %struct.max6650_data** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @simple_strtoul(i8* %17, i32* null, i32 10)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %20 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %12, align 4
  switch i32 %22, label %35 [
    i32 1, label %23
    i32 2, label %26
    i32 4, label %29
    i32 8, label %32
  ]

23:                                               ; preds = %4
  %24 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %25 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  br label %45

26:                                               ; preds = %4
  %27 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %28 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %45

29:                                               ; preds = %4
  %30 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %31 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %30, i32 0, i32 0
  store i32 2, i32* %31, align 4
  br label %45

32:                                               ; preds = %4
  %33 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %34 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %33, i32 0, i32 0
  store i32 3, i32* %34, align 4
  br label %45

35:                                               ; preds = %4
  %36 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %37 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %56

45:                                               ; preds = %32, %29, %26, %23
  %46 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %47 = load i32, i32* @MAX6650_REG_COUNT, align 4
  %48 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %49 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %46, i32 %47, i32 %50)
  %52 = load %struct.max6650_data*, %struct.max6650_data** %11, align 8
  %53 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %45, %35
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.max6650_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
