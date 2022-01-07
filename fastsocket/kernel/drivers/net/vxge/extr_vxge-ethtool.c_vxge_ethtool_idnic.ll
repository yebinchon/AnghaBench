; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_idnic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-ethtool.c_vxge_ethtool_idnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { i32 }
%struct.__vxge_hw_device = type { i32 }

@VXGE_FLICKER_ON = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@VXGE_MAX_FLICKER_TIME = common dso_local global i32 0, align 4
@VXGE_FLICKER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vxge_ethtool_idnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_ethtool_idnic(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxgedev*, align 8
  %6 = alloca %struct.__vxge_hw_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call i64 @netdev_priv(%struct.net_device* %7)
  %9 = inttoptr i64 %8 to %struct.vxgedev*
  store %struct.vxgedev* %9, %struct.vxgedev** %5, align 8
  %10 = load %struct.vxgedev*, %struct.vxgedev** %5, align 8
  %11 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_get_drvdata(i32 %12)
  %14 = inttoptr i64 %13 to %struct.__vxge_hw_device*
  store %struct.__vxge_hw_device* %14, %struct.__vxge_hw_device** %6, align 8
  %15 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %16 = load i32, i32* @VXGE_FLICKER_ON, align 4
  %17 = call i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HZ, align 4
  %23 = mul nsw i32 %21, %22
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VXGE_MAX_FLICKER_TIME, align 4
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  %28 = call i32 @msleep_interruptible(i32 %27)
  %29 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %30 = load i32, i32* @VXGE_FLICKER_OFF, align 4
  %31 = call i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device* %29, i32 %30)
  ret i32 0
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pci_get_drvdata(i32) #1

declare dso_local i32 @vxge_hw_device_flick_link_led(%struct.__vxge_hw_device*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
