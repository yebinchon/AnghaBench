; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_adjust_rxrefclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_bcm54xx_adjust_rxrefclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@PHY_ID_BCM57780 = common dso_local global i64 0, align 8
@PHY_ID_BCM50610 = common dso_local global i64 0, align 8
@PHY_ID_BCM50610M = common dso_local global i64 0, align 8
@BCM54XX_SHD_SCR3 = common dso_local global i32 0, align 4
@PHY_BRCM_RX_REFCLK_UNUSED = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR3_DEF_CLK125 = common dso_local global i32 0, align 4
@PHY_BRCM_AUTO_PWRDWN_ENABLE = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR3_DLLAPD_DIS = common dso_local global i32 0, align 4
@PHY_BRCM_DIS_TXCRXC_NOENRGY = common dso_local global i32 0, align 4
@BCM54XX_SHD_SCR3_TRDDAPD = common dso_local global i32 0, align 4
@BCM54XX_SHD_APD = common dso_local global i32 0, align 4
@BCM54XX_SHD_APD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @bcm54xx_adjust_rxrefclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm54xx_adjust_rxrefclk(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %6)
  %8 = load i64, i64* @PHY_ID_BCM57780, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %12 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %11)
  %13 = load i64, i64* @PHY_ID_BCM50610, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %16)
  %18 = load i64, i64* @PHY_ID_BCM50610M, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10, %1
  br label %132

21:                                               ; preds = %15
  %22 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %23 = load i32, i32* @BCM54XX_SHD_SCR3, align 4
  %24 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %132

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %31 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %30)
  %32 = load i64, i64* @PHY_ID_BCM50610, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %36 = call i64 @BRCM_PHY_MODEL(%struct.phy_device* %35)
  %37 = load i64, i64* @PHY_ID_BCM50610M, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %28
  %40 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %41 = call i32 @BRCM_PHY_REV(%struct.phy_device* %40)
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %57

44:                                               ; preds = %39, %34
  %45 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PHY_BRCM_RX_REFCLK_UNUSED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @BCM54XX_SHD_SCR3_DEF_CLK125, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %62 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PHY_BRCM_AUTO_PWRDWN_ENABLE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60, %57
  %68 = load i32, i32* @BCM54XX_SHD_SCR3_DLLAPD_DIS, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @BCM54XX_SHD_SCR3_DLLAPD_DIS, align 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PHY_BRCM_DIS_TXCRXC_NOENRGY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @BCM54XX_SHD_SCR3_TRDDAPD, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %93 = load i32, i32* @BCM54XX_SHD_SCR3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @bcm54xx_shadow_write(%struct.phy_device* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %98 = load i32, i32* @BCM54XX_SHD_APD, align 4
  %99 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %132

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @PHY_BRCM_AUTO_PWRDWN_ENABLE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107, %103
  %115 = load i32, i32* @BCM54XX_SHD_APD_EN, align 4
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %123

118:                                              ; preds = %107
  %119 = load i32, i32* @BCM54XX_SHD_APD_EN, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %3, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %114
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %129 = load i32, i32* @BCM54XX_SHD_APD, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @bcm54xx_shadow_write(%struct.phy_device* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %20, %27, %102, %127, %123
  ret void
}

declare dso_local i64 @BRCM_PHY_MODEL(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_shadow_read(%struct.phy_device*, i32) #1

declare dso_local i32 @BRCM_PHY_REV(%struct.phy_device*) #1

declare dso_local i32 @bcm54xx_shadow_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
