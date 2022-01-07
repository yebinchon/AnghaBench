; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83781d.c_w83781d_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.w83781d_data = type { i64*, i32 }

@w83781d_group = common dso_local global i32 0, align 4
@w83781d_group_opt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83781d_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.w83781d_data*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.w83781d_data* %6, %struct.w83781d_data** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %10 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @hwmon_device_unregister(i32 %11)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = call i32 @sysfs_remove_group(i32* %14, i32* @w83781d_group)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = call i32 @sysfs_remove_group(i32* %17, i32* @w83781d_group_opt)
  %19 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %20 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %27 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @i2c_unregister_device(i64 %30)
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %34 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %41 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @i2c_unregister_device(i64 %44)
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %48 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, i32* null)
  %49 = load %struct.w83781d_data*, %struct.w83781d_data** %3, align 8
  %50 = call i32 @kfree(%struct.w83781d_data* %49)
  ret i32 0
}

declare dso_local %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @i2c_unregister_device(i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, i32*) #1

declare dso_local i32 @kfree(%struct.w83781d_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
