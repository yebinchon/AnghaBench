; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_brcm_fet_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_broadcom.c_brcm_fet_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_BRCM_FET_INTREG = common dso_local global i32 0, align 4
@MII_BRCM_FET_IR_DUPLEX_EN = common dso_local global i32 0, align 4
@MII_BRCM_FET_IR_SPEED_EN = common dso_local global i32 0, align 4
@MII_BRCM_FET_IR_LINK_EN = common dso_local global i32 0, align 4
@MII_BRCM_FET_IR_ENABLE = common dso_local global i32 0, align 4
@MII_BRCM_FET_IR_MASK = common dso_local global i32 0, align 4
@MII_BRCM_FET_BRCMTEST = common dso_local global i32 0, align 4
@MII_BRCM_FET_BT_SRE = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_AUXMODE4 = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_AM4_LED_MASK = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_AM4_LED_MODE1 = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_MISCCTRL = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_MC_FAME = common dso_local global i32 0, align 4
@PHY_BRCM_AUTO_PWRDWN_ENABLE = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_AUXSTAT2 = common dso_local global i32 0, align 4
@MII_BRCM_FET_SHDW_AS2_APDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @brcm_fet_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcm_fet_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = load i32, i32* @MII_BMCR, align 4
  %10 = load i32, i32* @BMCR_RESET, align 4
  %11 = call i32 @phy_write(%struct.phy_device* %8, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %117

16:                                               ; preds = %1
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_BRCM_FET_INTREG, align 4
  %19 = call i32 @phy_read(%struct.phy_device* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %16
  %25 = load i32, i32* @MII_BRCM_FET_IR_DUPLEX_EN, align 4
  %26 = load i32, i32* @MII_BRCM_FET_IR_SPEED_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MII_BRCM_FET_IR_LINK_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MII_BRCM_FET_IR_ENABLE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MII_BRCM_FET_IR_MASK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = load i32, i32* @MII_BRCM_FET_INTREG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @phy_write(%struct.phy_device* %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %117

42:                                               ; preds = %24
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @MII_BRCM_FET_BRCMTEST, align 4
  %45 = call i32 @phy_read(%struct.phy_device* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %117

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MII_BRCM_FET_BT_SRE, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* @MII_BRCM_FET_BRCMTEST, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @phy_write(%struct.phy_device* %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %117

62:                                               ; preds = %50
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = load i32, i32* @MII_BRCM_FET_SHDW_AUXMODE4, align 4
  %65 = call i32 @phy_read(%struct.phy_device* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %5, align 4
  br label %106

70:                                               ; preds = %62
  %71 = load i32, i32* @MII_BRCM_FET_SHDW_AM4_LED_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @MII_BRCM_FET_SHDW_AM4_LED_MODE1, align 4
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %79 = load i32, i32* @MII_BRCM_FET_SHDW_AUXMODE4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @phy_write(%struct.phy_device* %78, i32 %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %106

85:                                               ; preds = %70
  %86 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %87 = load i32, i32* @MII_BRCM_FET_SHDW_MISCCTRL, align 4
  %88 = load i32, i32* @MII_BRCM_FET_SHDW_MC_FAME, align 4
  %89 = call i32 @brcm_phy_setbits(%struct.phy_device* %86, i32 %87, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %106

93:                                               ; preds = %85
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PHY_BRCM_AUTO_PWRDWN_ENABLE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %102 = load i32, i32* @MII_BRCM_FET_SHDW_AUXSTAT2, align 4
  %103 = load i32, i32* @MII_BRCM_FET_SHDW_AS2_APDE, align 4
  %104 = call i32 @brcm_phy_setbits(%struct.phy_device* %101, i32 %102, i32 %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %93
  br label %106

106:                                              ; preds = %105, %92, %84, %68
  %107 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %108 = load i32, i32* @MII_BRCM_FET_BRCMTEST, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @phy_write(%struct.phy_device* %107, i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %106
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %60, %48, %40, %22, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @brcm_phy_setbits(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
