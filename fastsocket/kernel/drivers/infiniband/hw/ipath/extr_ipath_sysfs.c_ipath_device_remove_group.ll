; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_ipath_device_remove_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sysfs.c_ipath_device_remove_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ipath_devdata = type { i32 }

@dev_counter_attr_group = common dso_local global i32 0, align 4
@IPATH_HAS_MULT_IB_SPEED = common dso_local global i32 0, align 4
@dev_ibcfg_attr_group = common dso_local global i32 0, align 4
@dev_attr_jint_idle_ticks = common dso_local global i32 0, align 4
@dev_attr_jint_max_packets = common dso_local global i32 0, align 4
@dev_attr_group = common dso_local global i32 0, align 4
@dev_attr_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_device_remove_group(%struct.device* %0, %struct.ipath_devdata* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ipath_devdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ipath_devdata* %1, %struct.ipath_devdata** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = call i32 @sysfs_remove_group(i32* %6, i32* @dev_counter_attr_group)
  %8 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %9 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IPATH_HAS_MULT_IB_SPEED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = call i32 @sysfs_remove_group(i32* %16, i32* @dev_ibcfg_attr_group)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @device_remove_file(%struct.device* %18, i32* @dev_attr_jint_idle_ticks)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_remove_file(%struct.device* %20, i32* @dev_attr_jint_max_packets)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = call i32 @sysfs_remove_group(i32* %24, i32* @dev_attr_group)
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @device_remove_file(%struct.device* %26, i32* @dev_attr_reset)
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
