; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_phy_reconfigure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_phy_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PMA_CTRL1_LOOPBACK = common dso_local global i32 0, align 4
@LOOPBACK_PMAPMD = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL1_LOOPBACK = common dso_local global i32 0, align 4
@LOOPBACK_PCS = common dso_local global i64 0, align 8
@MDIO_MMD_PHYXS = common dso_local global i32 0, align 4
@MDIO_PHYXS_CTRL1_LOOPBACK = common dso_local global i32 0, align 4
@LOOPBACK_PHYXS_WS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mdio_phy_reconfigure(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %5 = load i32, i32* @MDIO_CTRL1, align 4
  %6 = load i32, i32* @MDIO_PMA_CTRL1_LOOPBACK, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LOOPBACK_PMAPMD, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %3, i32 %4, i32 %5, i32 %6, i32 %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = load i32, i32* @MDIO_MMD_PCS, align 4
  %16 = load i32, i32* @MDIO_CTRL1, align 4
  %17 = load i32, i32* @MDIO_PCS_CTRL1_LOOPBACK, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LOOPBACK_PCS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %14, i32 %15, i32 %16, i32 %17, i32 %23)
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = load i32, i32* @MDIO_MMD_PHYXS, align 4
  %27 = load i32, i32* @MDIO_CTRL1, align 4
  %28 = load i32, i32* @MDIO_PHYXS_CTRL1_LOOPBACK, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @LOOPBACK_PHYXS_WS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %25, i32 %26, i32 %27, i32 %28, i32 %34)
  ret void
}

declare dso_local i32 @efx_mdio_set_flag(%struct.efx_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
