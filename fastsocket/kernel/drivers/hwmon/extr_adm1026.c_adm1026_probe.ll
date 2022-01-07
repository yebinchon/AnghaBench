; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_adm1026.c_adm1026_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adm1026_data = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adm1026_group = common dso_local global i32 0, align 4
@CFG1_AIN8_9 = common dso_local global i32 0, align 4
@adm1026_group_in8_9 = common dso_local global i32 0, align 4
@adm1026_group_temp3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adm1026_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1026_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adm1026_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.adm1026_data* @kzalloc(i32 16, i32 %8)
  store %struct.adm1026_data* %9, %struct.adm1026_data** %6, align 8
  %10 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %11 = icmp ne %struct.adm1026_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.adm1026_data* %17)
  %19 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %20 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %19, i32 0, i32 3
  %21 = call i32 @mutex_init(i32* %20)
  %22 = call i32 (...) @vid_which_vrm()
  %23 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %24 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @adm1026_init_client(%struct.i2c_client* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @sysfs_create_group(i32* %29, i32* @adm1026_group)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %93

33:                                               ; preds = %15
  %34 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %35 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CFG1_AIN8_9, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_create_group(i32* %43, i32* @adm1026_group_in8_9)
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @sysfs_create_group(i32* %48, i32* @adm1026_group_temp3)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %71

54:                                               ; preds = %50
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @hwmon_device_register(%struct.TYPE_2__* %56)
  %58 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %59 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %61 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %67 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %98

71:                                               ; preds = %65, %53
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @sysfs_remove_group(i32* %74, i32* @adm1026_group)
  %76 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %77 = getelementptr inbounds %struct.adm1026_data, %struct.adm1026_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CFG1_AIN8_9, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @sysfs_remove_group(i32* %85, i32* @adm1026_group_in8_9)
  br label %92

87:                                               ; preds = %71
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_group(i32* %90, i32* @adm1026_group_temp3)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %32
  %94 = load %struct.adm1026_data*, %struct.adm1026_data** %6, align 8
  %95 = call i32 @kfree(%struct.adm1026_data* %94)
  br label %96

96:                                               ; preds = %93, %12
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %70
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.adm1026_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adm1026_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @adm1026_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.adm1026_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
