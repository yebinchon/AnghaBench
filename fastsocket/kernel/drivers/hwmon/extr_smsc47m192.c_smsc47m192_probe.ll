; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.smsc47m192_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smsc47m192_group = common dso_local global i32 0, align 4
@SMSC47M192_REG_CONFIG = common dso_local global i32 0, align 4
@smsc47m192_group_in4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @smsc47m192_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc47m192_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.smsc47m192_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.smsc47m192_data* @kzalloc(i32 12, i32 %9)
  store %struct.smsc47m192_data* %10, %struct.smsc47m192_data** %6, align 8
  %11 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %12 = icmp ne %struct.smsc47m192_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  br label %78

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.smsc47m192_data* %18)
  %20 = call i32 (...) @vid_which_vrm()
  %21 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %22 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %24 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %23, i32 0, i32 1
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @smsc47m192_init_client(%struct.i2c_client* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @sysfs_create_group(i32* %30, i32* @smsc47m192_group)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %75

34:                                               ; preds = %16
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @SMSC47M192_REG_CONFIG, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_create_group(i32* %44, i32* @smsc47m192_group_in4)
  store i32 %45, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %66

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @hwmon_device_register(%struct.TYPE_2__* %51)
  %53 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %54 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %56 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %62 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %80

66:                                               ; preds = %60, %47
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @sysfs_remove_group(i32* %69, i32* @smsc47m192_group)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @sysfs_remove_group(i32* %73, i32* @smsc47m192_group_in4)
  br label %75

75:                                               ; preds = %66, %33
  %76 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %6, align 8
  %77 = call i32 @kfree(%struct.smsc47m192_data* %76)
  br label %78

78:                                               ; preds = %75, %13
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %65
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.smsc47m192_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.smsc47m192_data*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @smsc47m192_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.smsc47m192_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
