; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_get_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_ethtool_get_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }
%struct.ethtool_eee = type { i8*, i8*, i32 }

@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_ethtool_get_eee(%struct.phy_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %11 = load i32, i32* @MDIO_MMD_PCS, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @phy_read_mmd_indirect(i32 %9, i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %21)
  %23 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %29 = load i32, i32* @MDIO_MMD_AN, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @phy_read_mmd_indirect(i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %61

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %39)
  %41 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %47 = load i32, i32* @MDIO_MMD_AN, align 4
  %48 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %49 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @phy_read_mmd_indirect(i32 %45, i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %38
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @mmd_eee_adv_to_ethtool_adv_t(i32 %57)
  %59 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %54, %36, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @phy_read_mmd_indirect(i32, i32, i32, i32) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i8* @mmd_eee_adv_to_ethtool_adv_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
