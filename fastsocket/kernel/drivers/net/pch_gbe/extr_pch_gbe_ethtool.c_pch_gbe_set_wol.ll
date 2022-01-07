; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@WAKE_PHY = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@PCH_GBE_WLC_IND = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@PCH_GBE_WLC_MLT = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@PCH_GBE_WLC_BR = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@PCH_GBE_WLC_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @pch_gbe_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %6, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAKE_PHY, align 4
  %13 = load i32, i32* @WAKE_ARP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WAKE_UCAST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* @PCH_GBE_WLC_IND, align 4
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WAKE_MCAST, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @PCH_GBE_WLC_MLT, align 4
  %46 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WAKE_BCAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @PCH_GBE_WLC_BR, align 4
  %59 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WAKE_MAGIC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @PCH_GBE_WLC_MP, align 4
  %72 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %63
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
