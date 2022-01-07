; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.thmc50_data = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"thmc50: detect failed, kzalloc failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@thmc50_group = common dso_local global i32 0, align 4
@temp3_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @thmc50_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thmc50_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.thmc50_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.thmc50_data* @kzalloc(i32 24, i32 %8)
  store %struct.thmc50_data* %9, %struct.thmc50_data** %6, align 8
  %10 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %11 = icmp ne %struct.thmc50_data* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.thmc50_data* %18)
  %20 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %24 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %26 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @thmc50_init_client(%struct.i2c_client* %28)
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @sysfs_create_group(i32* %32, i32* @thmc50_group)
  store i32 %33, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %82

36:                                               ; preds = %16
  %37 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %38 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @sysfs_create_group(i32* %44, i32* @temp3_group)
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %77

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @hwmon_device_register(%struct.TYPE_2__* %51)
  %53 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %54 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %56 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %62 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %7, align 4
  br label %66

65:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %87

66:                                               ; preds = %60
  %67 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %68 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @sysfs_remove_group(i32* %74, i32* @temp3_group)
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %47
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_remove_group(i32* %80, i32* @thmc50_group)
  br label %82

82:                                               ; preds = %77, %35
  %83 = load %struct.thmc50_data*, %struct.thmc50_data** %6, align 8
  %84 = call i32 @kfree(%struct.thmc50_data* %83)
  br label %85

85:                                               ; preds = %82, %12
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %65
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.thmc50_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.thmc50_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @thmc50_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.thmc50_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
