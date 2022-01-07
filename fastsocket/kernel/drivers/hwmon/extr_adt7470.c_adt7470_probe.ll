; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_adt7470_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adt7470.c_adt7470_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adt7470_data = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUTO_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@adt7470_attr = common dso_local global i32 0, align 4
@adt7470_update_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adt7470_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7470_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adt7470_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adt7470_data* @kzalloc(i32 28, i32 %8)
  store %struct.adt7470_data* %9, %struct.adt7470_data** %6, align 8
  %10 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %11 = icmp ne %struct.adt7470_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %98

15:                                               ; preds = %2
  %16 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %17 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load i32, i32* @AUTO_UPDATE_INTERVAL, align 4
  %19 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %20 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %23 = call i32 @i2c_set_clientdata(%struct.i2c_client* %21, %struct.adt7470_data* %22)
  %24 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %25 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %24, i32 0, i32 5
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_info(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @adt7470_init_client(%struct.i2c_client* %33)
  %35 = load i32, i32* @adt7470_attr, align 4
  %36 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %37 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %43 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %42, i32 0, i32 1
  %44 = call i32 @sysfs_create_group(i32* %41, %struct.TYPE_5__* %43)
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %15
  br label %95

47:                                               ; preds = %15
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @hwmon_device_register(%struct.TYPE_6__* %49)
  %51 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %52 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %54 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %60 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %7, align 4
  br label %88

63:                                               ; preds = %47
  %64 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %65 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %64, i32 0, i32 4
  %66 = call i32 @init_completion(i32* %65)
  %67 = load i32, i32* @adt7470_update_thread, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %70 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_name(i32 %71)
  %73 = call i32 @kthread_run(i32 %67, %struct.i2c_client* %68, i32 %72)
  %74 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %75 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %77 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %63
  br label %83

82:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %100

83:                                               ; preds = %81
  %84 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %85 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @hwmon_device_unregister(i32 %86)
  br label %88

88:                                               ; preds = %83, %58
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %93 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %92, i32 0, i32 1
  %94 = call i32 @sysfs_remove_group(i32* %91, %struct.TYPE_5__* %93)
  br label %95

95:                                               ; preds = %88, %46
  %96 = load %struct.adt7470_data*, %struct.adt7470_data** %6, align 8
  %97 = call i32 @kfree(%struct.adt7470_data* %96)
  br label %98

98:                                               ; preds = %95, %12
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %82
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.adt7470_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adt7470_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @adt7470_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.i2c_client*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.adt7470_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
