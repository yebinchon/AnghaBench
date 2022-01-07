; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_gl520sm.c_gl520_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gl520_data = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gl520_group = common dso_local global i32 0, align 4
@sensor_dev_attr_temp2_input = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@sensor_dev_attr_temp2_max = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@sensor_dev_attr_temp2_max_hyst = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@sensor_dev_attr_temp2_alarm = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@sensor_dev_attr_temp2_beep = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@sensor_dev_attr_in4_input = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@sensor_dev_attr_in4_min = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@sensor_dev_attr_in4_max = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@sensor_dev_attr_in4_alarm = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@sensor_dev_attr_in4_beep = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@gl520_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gl520_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl520_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.gl520_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gl520_data* @kzalloc(i32 24, i32 %8)
  store %struct.gl520_data* %9, %struct.gl520_data** %6, align 8
  %10 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %11 = icmp ne %struct.gl520_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %118

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.gl520_data* %17)
  %19 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %20 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_init(i32* %20)
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call i32 @gl520_init_client(%struct.i2c_client* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_create_group(i32* %26, i32* @gl520_group)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %115

30:                                               ; preds = %15
  %31 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %32 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @device_create_file(%struct.TYPE_14__* %37, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sensor_dev_attr_temp2_input, i32 0, i32 0))
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @device_create_file(%struct.TYPE_14__* %42, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sensor_dev_attr_temp2_max, i32 0, i32 0))
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %40
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @device_create_file(%struct.TYPE_14__* %47, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sensor_dev_attr_temp2_max_hyst, i32 0, i32 0))
  store i32 %48, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call i32 @device_create_file(%struct.TYPE_14__* %52, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @sensor_dev_attr_temp2_alarm, i32 0, i32 0))
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @device_create_file(%struct.TYPE_14__* %57, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sensor_dev_attr_temp2_beep, i32 0, i32 0))
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50, %45, %40, %35
  br label %106

61:                                               ; preds = %55
  br label %89

62:                                               ; preds = %30
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @device_create_file(%struct.TYPE_14__* %64, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @sensor_dev_attr_in4_input, i32 0, i32 0))
  store i32 %65, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @device_create_file(%struct.TYPE_14__* %69, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sensor_dev_attr_in4_min, i32 0, i32 0))
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %67
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @device_create_file(%struct.TYPE_14__* %74, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @sensor_dev_attr_in4_max, i32 0, i32 0))
  store i32 %75, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i32 @device_create_file(%struct.TYPE_14__* %79, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sensor_dev_attr_in4_alarm, i32 0, i32 0))
  store i32 %80, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = call i32 @device_create_file(%struct.TYPE_14__* %84, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @sensor_dev_attr_in4_beep, i32 0, i32 0))
  store i32 %85, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %77, %72, %67, %62
  br label %106

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %61
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = call i32 @hwmon_device_register(%struct.TYPE_14__* %91)
  %93 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %94 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %96 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @IS_ERR(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %102 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @PTR_ERR(i32 %103)
  store i32 %104, i32* %7, align 4
  br label %106

105:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %120

106:                                              ; preds = %100, %87, %60
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = call i32 @sysfs_remove_group(i32* %109, i32* @gl520_group)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = call i32 @sysfs_remove_group(i32* %113, i32* @gl520_group_opt)
  br label %115

115:                                              ; preds = %106, %29
  %116 = load %struct.gl520_data*, %struct.gl520_data** %6, align 8
  %117 = call i32 @kfree(%struct.gl520_data* %116)
  br label %118

118:                                              ; preds = %115, %12
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %105
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.gl520_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.gl520_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gl520_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.gl520_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
