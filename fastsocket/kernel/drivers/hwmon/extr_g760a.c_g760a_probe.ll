; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_g760a.c_g760a_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_g760a.c_g760a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.g760a_data = type { i32, i32, i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@G760A_DEFAULT_FAN_DIV = common dso_local global i32 0, align 4
@G760A_DEFAULT_CLK = common dso_local global i32 0, align 4
@g760a_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @g760a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g760a_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.g760a_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.g760a_data* @kzalloc(i32 24, i32 %18)
  store %struct.g760a_data* %19, %struct.g760a_data** %6, align 8
  %20 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %21 = icmp ne %struct.g760a_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %17
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.g760a_data* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %31 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %30, i32 0, i32 4
  store %struct.i2c_client* %29, %struct.i2c_client** %31, align 8
  %32 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %33 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %32, i32 0, i32 3
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load i32, i32* @G760A_DEFAULT_FAN_DIV, align 4
  %36 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %37 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @G760A_DEFAULT_CLK, align 4
  %39 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %40 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_group(i32* %43, i32* @g760a_group)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %70

48:                                               ; preds = %25
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @hwmon_device_register(%struct.TYPE_2__* %50)
  %52 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %53 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %55 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %61 = getelementptr inbounds %struct.g760a_data, %struct.g760a_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %65

64:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %59
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_remove_group(i32* %68, i32* @g760a_group)
  br label %70

70:                                               ; preds = %65, %47
  %71 = load %struct.g760a_data*, %struct.g760a_data** %6, align 8
  %72 = call i32 @kfree(%struct.g760a_data* %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = call i32 @i2c_set_clientdata(%struct.i2c_client* %73, %struct.g760a_data* null)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %64, %22, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.g760a_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.g760a_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.g760a_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
