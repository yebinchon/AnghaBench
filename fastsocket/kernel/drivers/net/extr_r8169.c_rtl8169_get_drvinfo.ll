; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8169_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.rtl8169_private = type { i32, %struct.rtl_fw* }
%struct.rtl_fw = type { i32 }

@MODULENAME = common dso_local global i32 0, align 4
@RTL8169_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @rtl8169_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8169_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.rtl8169_private*, align 8
  %6 = alloca %struct.rtl_fw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rtl8169_private* %8, %struct.rtl8169_private** %5, align 8
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 1
  %11 = load %struct.rtl_fw*, %struct.rtl_fw** %10, align 8
  store %struct.rtl_fw* %11, %struct.rtl_fw** %6, align 8
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MODULENAME, align 4
  %16 = call i32 @strlcpy(i32 %14, i32 %15, i32 4)
  %17 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RTL8169_VERSION, align 4
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %5, align 8
  %26 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pci_name(i32 %27)
  %29 = call i32 @strlcpy(i32 %24, i32 %28, i32 4)
  %30 = call i32 @BUILD_BUG_ON(i32 0)
  %31 = load %struct.rtl_fw*, %struct.rtl_fw** %6, align 8
  %32 = call i32 @IS_ERR_OR_NULL(%struct.rtl_fw* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtl_fw*, %struct.rtl_fw** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strlcpy(i32 %37, i32 %40, i32 4)
  br label %42

42:                                               ; preds = %34, %2
  ret void
}

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.rtl_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
