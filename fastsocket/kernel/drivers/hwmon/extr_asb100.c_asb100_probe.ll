; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_asb100.c_asb100_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.asb100_data = type { i32*, i32, i8**, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"asb100.o: probe failed, kzalloc failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@asb100_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @asb100_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asb100_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.asb100_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.asb100_data* @kzalloc(i32 32, i32 %8)
  store %struct.asb100_data* %9, %struct.asb100_data** %7, align 8
  %10 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %11 = icmp ne %struct.asb100_data* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.asb100_data* %18)
  %20 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %21 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %20, i32 0, i32 4
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %24 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %23, i32 0, i32 3
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @asb100_detect_subclients(%struct.i2c_client* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %96

31:                                               ; preds = %16
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @asb100_init_client(%struct.i2c_client* %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i32 @ASB100_REG_FAN_MIN(i32 0)
  %36 = call i8* @asb100_read_value(%struct.i2c_client* %34, i32 %35)
  %37 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %38 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = call i32 @ASB100_REG_FAN_MIN(i32 1)
  %43 = call i8* @asb100_read_value(%struct.i2c_client* %41, i32 %42)
  %44 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %45 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @ASB100_REG_FAN_MIN(i32 2)
  %50 = call i8* @asb100_read_value(%struct.i2c_client* %48, i32 %49)
  %51 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %52 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  store i8* %50, i8** %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @sysfs_create_group(i32* %57, i32* @asb100_group)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %31
  br label %83

61:                                               ; preds = %31
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @hwmon_device_register(%struct.TYPE_2__* %63)
  %65 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %66 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %68 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %74 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PTR_ERR(i32 %75)
  store i32 %76, i32* %6, align 4
  br label %78

77:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %101

78:                                               ; preds = %72
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @sysfs_remove_group(i32* %81, i32* @asb100_group)
  br label %83

83:                                               ; preds = %78, %60
  %84 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %85 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @i2c_unregister_device(i32 %88)
  %90 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %91 = getelementptr inbounds %struct.asb100_data, %struct.asb100_data* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i2c_unregister_device(i32 %94)
  br label %96

96:                                               ; preds = %83, %30
  %97 = load %struct.asb100_data*, %struct.asb100_data** %7, align 8
  %98 = call i32 @kfree(%struct.asb100_data* %97)
  br label %99

99:                                               ; preds = %96, %12
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %77
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.asb100_data* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.asb100_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @asb100_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @asb100_init_client(%struct.i2c_client*) #1

declare dso_local i8* @asb100_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @ASB100_REG_FAN_MIN(i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.asb100_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
