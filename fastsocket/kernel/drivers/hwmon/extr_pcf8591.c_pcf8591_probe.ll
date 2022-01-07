; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pcf8591.c_pcf8591_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_pcf8591.c_pcf8591_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pcf8591_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pcf8591_attr_group = common dso_local global i32 0, align 4
@input_mode = common dso_local global i32 0, align 4
@dev_attr_in2_input = common dso_local global i32 0, align 4
@dev_attr_in3_input = common dso_local global i32 0, align 4
@pcf8591_attr_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pcf8591_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8591_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pcf8591_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.pcf8591_data* @kzalloc(i32 4, i32 %8)
  store %struct.pcf8591_data* %9, %struct.pcf8591_data** %6, align 8
  %10 = icmp ne %struct.pcf8591_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %17 = call i32 @i2c_set_clientdata(%struct.i2c_client* %15, %struct.pcf8591_data* %16)
  %18 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %19 = getelementptr inbounds %struct.pcf8591_data, %struct.pcf8591_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = call i32 @pcf8591_init_client(%struct.i2c_client* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @sysfs_create_group(i32* %25, i32* @pcf8591_attr_group)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %60

30:                                               ; preds = %14
  %31 = load i32, i32* @input_mode, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @device_create_file(%struct.TYPE_2__* %35, i32* @dev_attr_in2_input)
  store i32 %36, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %51

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i32, i32* @input_mode, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @device_create_file(%struct.TYPE_2__* %45, i32* @dev_attr_in3_input)
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %51

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %40
  store i32 0, i32* %3, align 4
  br label %65

51:                                               ; preds = %48, %38
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @sysfs_remove_group(i32* %54, i32* @pcf8591_attr_group_opt)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @sysfs_remove_group(i32* %58, i32* @pcf8591_attr_group)
  br label %60

60:                                               ; preds = %51, %29
  %61 = load %struct.pcf8591_data*, %struct.pcf8591_data** %6, align 8
  %62 = call i32 @kfree(%struct.pcf8591_data* %61)
  br label %63

63:                                               ; preds = %60, %11
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %50
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.pcf8591_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pcf8591_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pcf8591_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.pcf8591_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
