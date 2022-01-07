; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_pwmenable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83791d.c_store_pwmenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83791D_REG_FAN_CFG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwmenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwmenable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.w83791d_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute* %21, %struct.sensor_device_attribute** %10, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call %struct.i2c_client* @to_i2c_client(%struct.device* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %11, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %25 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %24)
  store %struct.w83791d_data* %25, %struct.w83791d_data** %12, align 8
  %26 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @strict_strtoul(i8* %29, i32 10, i64* %14)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load i64, i64* %14, align 8
  %35 = icmp ult i64 %34, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %14, align 8
  %38 = icmp ugt i64 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %33, %4
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %89

42:                                               ; preds = %36
  %43 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %44 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i64, i64* %14, align 8
  %47 = sub i64 %46, 1
  %48 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %49 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %58 [
    i32 0, label %55
    i32 1, label %56
    i32 2, label %57
  ]

55:                                               ; preds = %42
  store i64 0, i64* %16, align 8
  store i64 2, i64* %17, align 8
  store i64 243, i64* %18, align 8
  br label %58

56:                                               ; preds = %42
  store i64 0, i64* %16, align 8
  store i64 4, i64* %17, align 8
  store i64 207, i64* %18, align 8
  br label %58

57:                                               ; preds = %42
  store i64 1, i64* %16, align 8
  store i64 2, i64* %17, align 8
  store i64 243, i64* %18, align 8
  br label %58

58:                                               ; preds = %42, %57, %56, %55
  %59 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %60 = load i32*, i32** @W83791D_REG_FAN_CFG, align 8
  %61 = load i64, i64* %16, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @w83791d_read(%struct.i2c_client* %59, i32 %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %18, align 8
  %67 = and i64 %65, %66
  %68 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %69 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %17, align 8
  %76 = shl i64 %74, %75
  %77 = or i64 %67, %76
  store i64 %77, i64* %15, align 8
  %78 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %79 = load i32*, i32** @W83791D_REG_FAN_CFG, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @w83791d_write(%struct.i2c_client* %78, i32 %82, i64 %83)
  %85 = load %struct.w83791d_data*, %struct.w83791d_data** %12, align 8
  %86 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %58, %39
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w83791d_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
