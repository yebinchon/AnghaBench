; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1021.c_adm1021_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.adm1021_data = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"adm1021: detect failed, kzalloc failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lm84 = common dso_local global i64 0, align 8
@read_only = common dso_local global i32 0, align 4
@adm1021_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1021_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1021_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adm1021_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adm1021_data* @kzalloc(i32 16, i32 %8)
  store %struct.adm1021_data* %9, %struct.adm1021_data** %6, align 8
  %10 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %11 = icmp ne %struct.adm1021_data* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %71

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.adm1021_data* %18)
  %20 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %24 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %26 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %29 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @lm84, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %16
  %34 = load i32, i32* @read_only, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = call i32 @adm1021_init_client(%struct.i2c_client* %37)
  br label %39

39:                                               ; preds = %36, %33, %16
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @sysfs_create_group(i32* %42, i32* @adm1021_group)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @hwmon_device_register(%struct.TYPE_2__* %48)
  %50 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %51 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %53 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %59 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %63

62:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %73

63:                                               ; preds = %57
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @sysfs_remove_group(i32* %66, i32* @adm1021_group)
  br label %68

68:                                               ; preds = %63, %45
  %69 = load %struct.adm1021_data*, %struct.adm1021_data** %6, align 8
  %70 = call i32 @kfree(%struct.adm1021_data* %69)
  br label %71

71:                                               ; preds = %68, %12
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.adm1021_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1021_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @adm1021_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.adm1021_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
