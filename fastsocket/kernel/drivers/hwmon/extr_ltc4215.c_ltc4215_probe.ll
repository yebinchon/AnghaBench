; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4215.c_ltc4215_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ltc4215.c_ltc4215_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ltc4215_data = type { i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LTC4215_FAULT = common dso_local global i32 0, align 4
@ltc4215_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc4215_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4215_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ltc4215_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ltc4215_data* @kzalloc(i32 8, i32 %20)
  store %struct.ltc4215_data* %21, %struct.ltc4215_data** %7, align 8
  %22 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %23 = icmp ne %struct.ltc4215_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %69

27:                                               ; preds = %19
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %30 = call i32 @i2c_set_clientdata(%struct.i2c_client* %28, %struct.ltc4215_data* %29)
  %31 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %32 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @LTC4215_FAULT, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %34, i32 %35, i32 0)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @sysfs_create_group(i32* %39, i32* @ltc4215_group)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %66

44:                                               ; preds = %27
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call i32 @hwmon_device_register(%struct.TYPE_2__* %46)
  %48 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %49 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %51 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %44
  %56 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %57 = getelementptr inbounds %struct.ltc4215_data, %struct.ltc4215_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %8, align 4
  br label %61

60:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %71

61:                                               ; preds = %55
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_remove_group(i32* %64, i32* @ltc4215_group)
  br label %66

66:                                               ; preds = %61, %43
  %67 = load %struct.ltc4215_data*, %struct.ltc4215_data** %7, align 8
  %68 = call i32 @kfree(%struct.ltc4215_data* %67)
  br label %69

69:                                               ; preds = %66, %24
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %60, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.ltc4215_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ltc4215_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ltc4215_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
