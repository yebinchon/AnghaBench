; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1031.c_adm1031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.adm1031_data = type { i64, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1030 = common dso_local global i64 0, align 8
@auto_channel_select_table_adm1030 = common dso_local global i32 0, align 4
@auto_channel_select_table_adm1031 = common dso_local global i32 0, align 4
@adm1031_group = common dso_local global i32 0, align 4
@adm1031 = common dso_local global i64 0, align 8
@adm1031_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1031_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adm1031_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adm1031_data* @kzalloc(i32 32, i32 %8)
  store %struct.adm1031_data* %9, %struct.adm1031_data** %6, align 8
  %10 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %11 = icmp ne %struct.adm1031_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %90

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.adm1031_data* %17)
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %23 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %25 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %28 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @adm1030, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %34 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %33, i32 0, i32 2
  store i32* @auto_channel_select_table_adm1030, i32** %34, align 8
  br label %38

35:                                               ; preds = %15
  %36 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %37 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %36, i32 0, i32 2
  store i32* @auto_channel_select_table_adm1031, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @adm1031_init_client(%struct.i2c_client* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_group(i32* %43, i32* @adm1031_group)
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %87

47:                                               ; preds = %38
  %48 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %49 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @adm1031, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @sysfs_create_group(i32* %56, i32* @adm1031_group_opt)
  store i32 %57, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %78

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @hwmon_device_register(%struct.TYPE_2__* %63)
  %65 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %66 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %68 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %74 = getelementptr inbounds %struct.adm1031_data, %struct.adm1031_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %7, align 4
  br label %78

77:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %92

78:                                               ; preds = %72, %59
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @sysfs_remove_group(i32* %81, i32* @adm1031_group)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @sysfs_remove_group(i32* %85, i32* @adm1031_group_opt)
  br label %87

87:                                               ; preds = %78, %46
  %88 = load %struct.adm1031_data*, %struct.adm1031_data** %6, align 8
  %89 = call i32 @kfree(%struct.adm1031_data* %88)
  br label %90

90:                                               ; preds = %87, %12
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %77
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.adm1031_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1031_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1031_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.adm1031_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
