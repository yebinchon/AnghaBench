; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.jme_adapter = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@TXPFC_PF_EN = common dso_local global i32 0, align 4
@RXMCS_FLOWCTRL = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @jme_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.jme_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %5, align 8
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TXPFC_PF_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RXMCS_FLOWCTRL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %27, i32 0, i32 2
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MII_ADVERTISE, align 4
  %38 = call i32 @jme_mdio_read(i32 %32, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 2
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %44 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %50 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @jme_mdio_read(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
