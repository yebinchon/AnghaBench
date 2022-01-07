; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/fs_enet/extr_fs_enet-main.c_fs_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fs_enet_private = type { i32, %struct.phy_device*, %struct.TYPE_2__*, i64, i64 }
%struct.phy_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@fs_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fs_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_init_phy(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fs_enet_private*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fs_enet_private* %7, %struct.fs_enet_private** %4, align 8
  %8 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %9 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %11 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %13 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %16 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %21 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %14, i32 %19, i32* @fs_adjust_link, i32 0, i32 %20)
  store %struct.phy_device* %21, %struct.phy_device** %5, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %23 = icmp ne %struct.phy_device* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %27 = call %struct.phy_device* @of_phy_connect_fixed_link(%struct.net_device* %25, i32* @fs_adjust_link, i32 %26)
  store %struct.phy_device* %27, %struct.phy_device** %5, align 8
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = icmp ne %struct.phy_device* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %39 = load %struct.fs_enet_private*, %struct.fs_enet_private** %4, align 8
  %40 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %39, i32 0, i32 1
  store %struct.phy_device* %38, %struct.phy_device** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect_fixed_link(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
