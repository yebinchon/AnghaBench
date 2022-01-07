; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_ipath_device_create_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_ipath_device_create_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipath_devdata = type { i32 }

@dev_attr_group = common dso_local global i32 0, align 4
@dev_counter_attr_group = common dso_local global i32 0, align 4
@IPATH_HAS_MULT_IB_SPEED = common dso_local global i32 0, align 4
@dev_attr_jint_idle_ticks = common dso_local global i32 0, align 4
@dev_attr_jint_max_packets = common dso_local global i32 0, align 4
@dev_ibcfg_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_device_create_group(%struct.device* %0, %struct.ipath_devdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ipath_devdata* %1, %struct.ipath_devdata** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = call i32 @sysfs_create_group(i32* %8, i32* @dev_attr_group)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = call i32 @sysfs_create_group(i32* %15, i32* @dev_counter_attr_group)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %58

20:                                               ; preds = %13
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPATH_HAS_MULT_IB_SPEED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @device_create_file(%struct.device* %28, i32* @dev_attr_jint_idle_ticks)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %54

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @device_create_file(%struct.device* %34, i32* @dev_attr_jint_max_packets)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %51

39:                                               ; preds = %33
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = call i32 @sysfs_create_group(i32* %41, i32* @dev_ibcfg_attr_group)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %20
  store i32 0, i32* %3, align 4
  br label %64

48:                                               ; preds = %45
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @device_remove_file(%struct.device* %49, i32* @dev_attr_jint_max_packets)
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @device_remove_file(%struct.device* %52, i32* @dev_attr_jint_idle_ticks)
  br label %54

54:                                               ; preds = %51, %32
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = call i32 @sysfs_remove_group(i32* %56, i32* @dev_counter_attr_group)
  br label %58

58:                                               ; preds = %54, %19
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = call i32 @sysfs_remove_group(i32* %60, i32* @dev_attr_group)
  br label %62

62:                                               ; preds = %58, %12
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %47
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
