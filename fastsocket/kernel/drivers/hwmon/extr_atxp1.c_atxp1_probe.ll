; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_atxp1.c_atxp1_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.atxp1_data = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atxp1_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Using VRM: %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @atxp1_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atxp1_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.atxp1_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.atxp1_data* @kzalloc(i32 24, i32 %8)
  store %struct.atxp1_data* %9, %struct.atxp1_data** %6, align 8
  %10 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %11 = icmp ne %struct.atxp1_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %69

15:                                               ; preds = %2
  %16 = call i32 (...) @vid_which_vrm()
  %17 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %18 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.atxp1_data* %20)
  %22 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %23 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %25 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %24, i32 0, i32 2
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_create_group(i32* %29, i32* @atxp1_group)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %66

33:                                               ; preds = %15
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @hwmon_device_register(%struct.TYPE_3__* %35)
  %37 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %38 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %40 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %46 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %7, align 4
  br label %61

49:                                               ; preds = %33
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %53 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 10
  %56 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %57 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = srem i32 %58, 10
  %60 = call i32 @dev_info(%struct.TYPE_3__* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %59)
  store i32 0, i32* %3, align 4
  br label %71

61:                                               ; preds = %44
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_remove_group(i32* %64, i32* @atxp1_group)
  br label %66

66:                                               ; preds = %61, %32
  %67 = load %struct.atxp1_data*, %struct.atxp1_data** %6, align 8
  %68 = call i32 @kfree(%struct.atxp1_data* %67)
  br label %69

69:                                               ; preds = %66, %12
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %49
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.atxp1_data* @kzalloc(i32, i32) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.atxp1_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i32, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.atxp1_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
