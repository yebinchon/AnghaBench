; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_catc.c_catc_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.catc = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @catc_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catc_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.catc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.catc* @netdev_priv(%struct.net_device* %7)
  store %struct.catc* %8, %struct.catc** %6, align 8
  %9 = load %struct.catc*, %struct.catc** %6, align 8
  %10 = getelementptr inbounds %struct.catc, %struct.catc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %18 = load i32, i32* @SUPPORTED_TP, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %23 = load i32, i32* @ADVERTISED_TP, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @SPEED_10, align 4
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @DUPLEX_HALF, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PORT_TP, align 4
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @XCVR_INTERNAL, align 4
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @AUTONEG_DISABLE, align 4
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %16, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.catc* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
