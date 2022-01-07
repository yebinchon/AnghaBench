; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gsettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gsettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i8*, i8* }
%struct.gfar_private = type { i32, i32, %struct.phy_device* }
%struct.phy_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @gfar_gsettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_gsettings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %6, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 2
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %7, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %14 = icmp eq %struct.phy_device* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %20 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @get_icft_value(i32 %21)
  %23 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %26 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @get_icft_value(i32 %27)
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %32 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %33 = call i32 @phy_ethtool_gset(%struct.phy_device* %31, %struct.ethtool_cmd* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @get_icft_value(i32) #1

declare dso_local i32 @phy_ethtool_gset(%struct.phy_device*, %struct.ethtool_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
