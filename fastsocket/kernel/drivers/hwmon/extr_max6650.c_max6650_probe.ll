; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_max6650_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_max6650.c_max6650_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.max6650_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"out of memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@max6650_attr_grp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error registering hwmon device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max6650_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6650_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max6650_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.max6650_data* @kzalloc(i32 8, i32 %8)
  store %struct.max6650_data* %9, %struct.max6650_data** %6, align 8
  %10 = icmp ne %struct.max6650_data* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = call i32 @dev_err(%struct.TYPE_3__* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.max6650_data* %19)
  %21 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %22 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %21, i32 0, i32 1
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @max6650_init_client(%struct.i2c_client* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %61

29:                                               ; preds = %17
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @sysfs_create_group(i32* %32, i32* @max6650_attr_grp)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call i32 @hwmon_device_register(%struct.TYPE_3__* %39)
  %41 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %42 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %44 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IS_ERR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %65

49:                                               ; preds = %37
  %50 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %51 = getelementptr inbounds %struct.max6650_data, %struct.max6650_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_3__* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_remove_group(i32* %59, i32* @max6650_attr_grp)
  br label %61

61:                                               ; preds = %49, %36, %28
  %62 = load %struct.max6650_data*, %struct.max6650_data** %6, align 8
  %63 = call i32 @kfree(%struct.max6650_data* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %48, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.max6650_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.max6650_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @max6650_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_3__*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.max6650_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
