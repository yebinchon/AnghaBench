; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.netxen_adapter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETXEN_WOL_CONFIG_NV = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@NETXEN_WOL_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @netxen_nic_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_nic_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @NX_IS_REVISION_P2(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %54

20:                                               ; preds = %2
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %22 = load i32, i32* @NETXEN_WOL_CONFIG_NV, align 4
  %23 = call i64 @NXRD32(%struct.netxen_adapter* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = shl i64 1, %27
  %29 = and i64 %24, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32, i32* @WAKE_MAGIC, align 4
  %33 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %39 = load i32, i32* @NETXEN_WOL_CONFIG, align 4
  %40 = call i64 @NXRD32(%struct.netxen_adapter* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 1, %44
  %46 = and i64 %41, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i32, i32* @WAKE_MAGIC, align 4
  %50 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %19, %48, %37
  ret void
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i32) #1

declare dso_local i64 @NXRD32(%struct.netxen_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
