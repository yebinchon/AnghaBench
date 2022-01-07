; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_lm85_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm85.c_lm85_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm85_data = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1027_freq_map = common dso_local global i32 0, align 4
@lm85_freq_map = common dso_local global i32 0, align 4
@lm85_group = common dso_local global i32 0, align 4
@LM85_REG_VID = common dso_local global i32 0, align 4
@adt7468 = common dso_local global i32 0, align 4
@lm85_group_in4 = common dso_local global i32 0, align 4
@lm85_group_in567 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm85_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm85_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm85_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lm85_data* @kzalloc(i32 24, i32 %8)
  store %struct.lm85_data* %9, %struct.lm85_data** %6, align 8
  %10 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %11 = icmp ne %struct.lm85_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %134

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.lm85_data* %17)
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %23 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %25 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %24, i32 0, i32 5
  %26 = call i32 @mutex_init(i32* %25)
  %27 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %28 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 131, label %30
    i32 130, label %30
    i32 129, label %30
    i32 128, label %30
  ]

30:                                               ; preds = %15, %15, %15, %15
  %31 = load i32, i32* @adm1027_freq_map, align 4
  %32 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %33 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %15
  %35 = load i32, i32* @lm85_freq_map, align 4
  %36 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %37 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = call i32 (...) @vid_which_vrm()
  %40 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %41 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @lm85_init_client(%struct.i2c_client* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @sysfs_create_group(i32* %46, i32* @lm85_group)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %130

51:                                               ; preds = %38
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @LM85_REG_VID, align 4
  %54 = call i32 @lm85_read_value(%struct.i2c_client* %52, i32 %53)
  %55 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %56 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %58 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %67, label %61

61:                                               ; preds = %51
  %62 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %63 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @adt7468, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %51
  %68 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %69 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @sysfs_create_group(i32* %76, i32* @lm85_group_in4)
  store i32 %77, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %111

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %83 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 129
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @sysfs_create_group(i32* %89, i32* @lm85_group_in567)
  store i32 %90, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %111

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %81
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 @hwmon_device_register(%struct.TYPE_2__* %96)
  %98 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %99 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %101 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %107 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %7, align 4
  br label %111

110:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %134

111:                                              ; preds = %105, %92, %79
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = call i32 @sysfs_remove_group(i32* %114, i32* @lm85_group)
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @sysfs_remove_group(i32* %118, i32* @lm85_group_in4)
  %120 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %121 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 129
  br i1 %123, label %124, label %129

124:                                              ; preds = %111
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @sysfs_remove_group(i32* %127, i32* @lm85_group_in567)
  br label %129

129:                                              ; preds = %124, %111
  br label %130

130:                                              ; preds = %129, %50
  %131 = load %struct.lm85_data*, %struct.lm85_data** %6, align 8
  %132 = call i32 @kfree(%struct.lm85_data* %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %130, %110, %12
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.lm85_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm85_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @lm85_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @lm85_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.lm85_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
