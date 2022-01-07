; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_phydsp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_phydsp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA = common dso_local global i32 0, align 4
@MII_BCM54XX_AUXCTL_ACTL_TX_6DB = common dso_local global i32 0, align 4
@PHY_ID_BCM50610 = common dso_local global i64 0, align 8
@PHY_ID_BCM50610M = common dso_local global i64 0, align 8
@MII_BCM54XX_EXP_EXP08 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP08_RJCT_2MHZ = common dso_local global i32 0, align 4
@PHY_ID_BCM57780 = common dso_local global i64 0, align 8
@MII_BCM54XX_EXP_EXP75 = common dso_local global i32 0, align 4
@MII_BCM54XX_EXP_EXP75_CM_OSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @bcm54xx_phydsp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm54xx_phydsp_config(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL, align 4
  %9 = load i32, i32* @MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA, align 4
  %10 = load i32, i32* @MII_BCM54XX_AUXCTL_ACTL_TX_6DB, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %7, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %18)
  %20 = load i64, i64* @PHY_ID_BCM50610, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %23)
  %25 = load i64, i64* @PHY_ID_BCM50610M, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %22, %17
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = load i32, i32* @MII_BCM54XX_EXP_EXP08, align 4
  %30 = load i32, i32* @MII_BCM54XX_EXP_EXP08_RJCT_2MHZ, align 4
  %31 = call i32 @bcm54xx_exp_write(%struct.phy_device* %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %72

35:                                               ; preds = %27
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PHY_ID_BCM50610, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = call i32 @bcm50610_a0_workaround(%struct.phy_device* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %72

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %52)
  %54 = load i64, i64* @PHY_ID_BCM57780, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = load i32, i32* @MII_BCM54XX_EXP_EXP75, align 4
  %59 = call i32 @bcm54xx_exp_read(%struct.phy_device* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %72

63:                                               ; preds = %56
  %64 = load i32, i32* @MII_BCM54XX_EXP_EXP75_CM_OSC, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = load i32, i32* @MII_BCM54XX_EXP_EXP75, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @bcm54xx_exp_write(%struct.phy_device* %67, i32 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %51
  br label %72

72:                                               ; preds = %71, %62, %48, %34
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = load i32, i32* @MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL, align 4
  %75 = load i32, i32* @MII_BCM54XX_AUXCTL_ACTL_TX_6DB, align 4
  %76 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %4, align 4
  br label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @bcm54xx_auxctl_write(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @BRCM_PHY_MODEL(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_exp_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @bcm50610_a0_workaround(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_exp_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
