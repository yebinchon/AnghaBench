; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83781d_data = type { i64*, i32, i32, %struct.i2c_client*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@w83781d_group = common dso_local global i32 0, align 4
@w83781d_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83781d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.w83781d_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.w83781d_data* @kzalloc(i32 32, i32 %11)
  store %struct.w83781d_data* %12, %struct.w83781d_data** %7, align 8
  %13 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %14 = icmp ne %struct.w83781d_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %21 = call i32 @i2c_set_clientdata(%struct.i2c_client* %19, %struct.w83781d_data* %20)
  %22 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %23 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %22, i32 0, i32 5
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %26 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %25, i32 0, i32 4
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %32 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 3
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @w83781d_detect_subclients(%struct.i2c_client* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %103

41:                                               ; preds = %18
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @w83781d_init_device(%struct.device* %42)
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %46 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @w83781d_create_files(%struct.device* %44, i32 %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %68

52:                                               ; preds = %41
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @hwmon_device_register(%struct.device* %53)
  %55 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %56 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %58 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @IS_ERR(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %64 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %8, align 4
  br label %68

67:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %110

68:                                               ; preds = %62, %51
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = getelementptr inbounds %struct.device, %struct.device* %69, i32 0, i32 0
  %71 = call i32 @sysfs_remove_group(i32* %70, i32* @w83781d_group)
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = call i32 @sysfs_remove_group(i32* %73, i32* @w83781d_group_opt)
  %75 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %76 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %83 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @i2c_unregister_device(i64 %86)
  br label %88

88:                                               ; preds = %81, %68
  %89 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %90 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %97 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @i2c_unregister_device(i64 %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %103

103:                                              ; preds = %102, %40
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = call i32 @i2c_set_clientdata(%struct.i2c_client* %104, %struct.w83781d_data* null)
  %106 = load %struct.w83781d_data*, %struct.w83781d_data** %7, align 8
  %107 = call i32 @kfree(%struct.w83781d_data* %106)
  br label %108

108:                                              ; preds = %103, %15
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %67
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.w83781d_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.w83781d_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83781d_detect_subclients(%struct.i2c_client*) #1

declare dso_local i32 @w83781d_init_device(%struct.device*) #1

declare dso_local i32 @w83781d_create_files(%struct.device*, i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

declare dso_local i32 @kfree(%struct.w83781d_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
