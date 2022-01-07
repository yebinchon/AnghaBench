; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BCM54XX_ECR = common dso_local global i32 0, align 4
@MII_BCM54XX_ECR_IM = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_DUPLEX = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_SPEED = common dso_local global i32 0, align 4
@MII_BCM54XX_INT_LINK = common dso_local global i32 0, align 4
@MII_BCM54XX_IMR = common dso_local global i32 0, align 4
@PHY_ID_BCM50610 = common dso_local global i64 0, align 8
@PHY_ID_BCM50610M = common dso_local global i64 0, align 8
@PHY_BRCM_CLEAR_RGMII_MODE = common dso_local global i32 0, align 4
@BCM54XX_SHD_RGMII_MODE = common dso_local global i32 0, align 4
@PHY_BRCM_RX_REFCLK_UNUSED = common dso_local global i32 0, align 4
@PHY_BRCM_DIS_TXCRXC_NOENRGY = common dso_local global i32 0, align 4
@PHY_BRCM_AUTO_PWRDWN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm54xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load i32, i32* @MII_BCM54XX_ECR_IM, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_BCM54XX_ECR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %88

25:                                               ; preds = %13
  %26 = load i32, i32* @MII_BCM54XX_INT_DUPLEX, align 4
  %27 = load i32, i32* @MII_BCM54XX_INT_SPEED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MII_BCM54XX_INT_LINK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = load i32, i32* @MII_BCM54XX_IMR, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @phy_write(%struct.phy_device* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %88

40:                                               ; preds = %25
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %41)
  %43 = load i64, i64* @PHY_ID_BCM50610, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %46)
  %48 = load i64, i64* @PHY_ID_BCM50610M, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %40
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PHY_BRCM_CLEAR_RGMII_MODE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = load i32, i32* @BCM54XX_SHD_RGMII_MODE, align 4
  %60 = call i32 @bcm54xx_shadow_write(%struct.phy_device* %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %57, %50, %45
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PHY_BRCM_RX_REFCLK_UNUSED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PHY_BRCM_DIS_TXCRXC_NOENRGY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PHY_BRCM_AUTO_PWRDWN_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75, %68, %61
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = call i32 @bcm54xx_adjust_rxrefclk(%struct.phy_device* %83)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %87 = call i32 @bcm54xx_phydsp_config(%struct.phy_device* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %38, %23, %11
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @BRCM_PHY_MODEL(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_shadow_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm54xx_adjust_rxrefclk(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_phydsp_config(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
