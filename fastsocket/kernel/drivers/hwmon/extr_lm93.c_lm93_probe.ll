; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm93.c_lm93_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm93_data = type { void (%struct.lm93_data*, %struct.i2c_client.0*)*, i32, i32, i64 }
%struct.i2c_client.0 = type opaque

@LM93_SMBUS_FUNC_FULL = common dso_local global i32 0, align 4
@disable_block = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"using SMBus block data transactions\0A\00", align 1
@LM93_SMBUS_FUNC_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"disabled SMBus block data transactions\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"detect failed, smbus byte and/or word data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"out of memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lm93_attr_grp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"error registering hwmon device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm93_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm93_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm93_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.lm93_data*, %struct.i2c_client*)*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i2c_get_functionality(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @LM93_SMBUS_FUNC_FULL, align 4
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @LM93_SMBUS_FUNC_FULL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @disable_block, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_full, void (%struct.lm93_data*, %struct.i2c_client*)** %9, align 8
  br label %43

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @LM93_SMBUS_FUNC_MIN, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @LM93_SMBUS_FUNC_MIN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(%struct.TYPE_4__* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_min, void (%struct.lm93_data*, %struct.i2c_client*)** %9, align 8
  br label %42

36:                                               ; preds = %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %103

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.lm93_data* @kzalloc(i32 24, i32 %44)
  store %struct.lm93_data* %45, %struct.lm93_data** %6, align 8
  %46 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %47 = icmp ne %struct.lm93_data* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_dbg(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %103

54:                                               ; preds = %43
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %57 = call i32 @i2c_set_clientdata(%struct.i2c_client* %55, %struct.lm93_data* %56)
  %58 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %59 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load void (%struct.lm93_data*, %struct.i2c_client*)*, void (%struct.lm93_data*, %struct.i2c_client*)** %9, align 8
  %61 = bitcast void (%struct.lm93_data*, %struct.i2c_client*)* %60 to void (%struct.lm93_data*, %struct.i2c_client.0*)*
  %62 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %63 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %62, i32 0, i32 0
  store void (%struct.lm93_data*, %struct.i2c_client.0*)* %61, void (%struct.lm93_data*, %struct.i2c_client.0*)** %63, align 8
  %64 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %65 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %64, i32 0, i32 2
  %66 = call i32 @mutex_init(i32* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = call i32 @lm93_init_client(%struct.i2c_client* %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @sysfs_create_group(i32* %71, i32* @lm93_attr_grp)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %54
  br label %100

76:                                               ; preds = %54
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 @hwmon_device_register(%struct.TYPE_4__* %78)
  %80 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %81 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %83 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @IS_ERR(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %105

88:                                               ; preds = %76
  %89 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %90 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_4__* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @sysfs_remove_group(i32* %98, i32* @lm93_attr_grp)
  br label %100

100:                                              ; preds = %88, %75
  %101 = load %struct.lm93_data*, %struct.lm93_data** %6, align 8
  %102 = call i32 @kfree(%struct.lm93_data* %101)
  br label %103

103:                                              ; preds = %100, %48, %36
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %87
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @i2c_get_functionality(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_4__*, i8*) #1

declare dso_local void @lm93_update_client_full(%struct.lm93_data*, %struct.i2c_client*) #1

declare dso_local void @lm93_update_client_min(%struct.lm93_data*, %struct.i2c_client*) #1

declare dso_local %struct.lm93_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm93_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm93_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.lm93_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
