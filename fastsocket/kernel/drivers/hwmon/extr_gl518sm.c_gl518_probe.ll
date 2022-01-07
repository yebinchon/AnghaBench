; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_gl518_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl518sm.c_gl518_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gl518_data = type { i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GL518_REG_REVISION = common dso_local global i32 0, align 4
@gl518sm_r80 = common dso_local global i64 0, align 8
@gl518sm_r00 = common dso_local global i64 0, align 8
@gl518_group = common dso_local global i32 0, align 4
@gl518_group_r80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gl518_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl518_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.gl518_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gl518_data* @kzalloc(i32 24, i32 %9)
  store %struct.gl518_data* %10, %struct.gl518_data** %6, align 8
  %11 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %12 = icmp ne %struct.gl518_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  br label %96

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %19 = call i32 @i2c_set_clientdata(%struct.i2c_client* %17, %struct.gl518_data* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load i32, i32* @GL518_REG_REVISION, align 4
  %22 = call i32 @gl518_read_value(%struct.i2c_client* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @gl518sm_r80, align 8
  br label %29

27:                                               ; preds = %16
  %28 = load i64, i64* @gl518sm_r00, align 8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i64 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %32 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %34 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %33, i32 0, i32 3
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %37 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %36, i32 0, i32 1
  store i32 255, i32* %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = call i32 @gl518_init_client(%struct.i2c_client* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @sysfs_create_group(i32* %42, i32* @gl518_group)
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %93

46:                                               ; preds = %29
  %47 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %48 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @gl518sm_r80, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_group(i32* %55, i32* @gl518_group_r80)
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %77

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @hwmon_device_register(%struct.TYPE_2__* %62)
  %64 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %65 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %67 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %73 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %7, align 4
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %98

77:                                               ; preds = %71, %58
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_remove_group(i32* %80, i32* @gl518_group)
  %82 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %83 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @gl518sm_r80, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_group(i32* %90, i32* @gl518_group_r80)
  br label %92

92:                                               ; preds = %87, %77
  br label %93

93:                                               ; preds = %92, %45
  %94 = load %struct.gl518_data*, %struct.gl518_data** %6, align 8
  %95 = call i32 @kfree(%struct.gl518_data* %94)
  br label %96

96:                                               ; preds = %93, %13
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %76
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.gl518_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.gl518_data*) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gl518_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.gl518_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
