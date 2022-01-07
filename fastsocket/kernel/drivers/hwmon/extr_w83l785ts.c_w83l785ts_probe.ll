; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83l785ts.c_w83l785ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83l785ts_data = type { i32, i64*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sensor_dev_attr_temp1_input = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sensor_dev_attr_temp1_max = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83l785ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l785ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.w83l785ts_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.w83l785ts_data* @kzalloc(i32 32, i32 %8)
  store %struct.w83l785ts_data* %9, %struct.w83l785ts_data** %6, align 8
  %10 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %11 = icmp ne %struct.w83l785ts_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.w83l785ts_data* %17)
  %19 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %20 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %22 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %25 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %29 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i32 @device_create_file(i32* %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sensor_dev_attr_temp1_input, i32 0, i32 0))
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %62

38:                                               ; preds = %15
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @device_create_file(i32* %40, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensor_dev_attr_temp1_max, i32 0, i32 0))
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %62

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @hwmon_device_register(i32* %47)
  %49 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %50 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %52 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %45
  %57 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %58 = getelementptr inbounds %struct.w83l785ts_data, %struct.w83l785ts_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %73

62:                                               ; preds = %56, %44, %37
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @device_remove_file(i32* %64, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sensor_dev_attr_temp1_input, i32 0, i32 0))
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = call i32 @device_remove_file(i32* %67, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sensor_dev_attr_temp1_max, i32 0, i32 0))
  %69 = load %struct.w83l785ts_data*, %struct.w83l785ts_data** %6, align 8
  %70 = call i32 @kfree(%struct.w83l785ts_data* %69)
  br label %71

71:                                               ; preds = %62, %12
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %61
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.w83l785ts_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83l785ts_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.w83l785ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
