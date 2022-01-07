; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_autoneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64 }

@MDIO_REG_BANK_COMBO_IEEE0 = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEE0_MII_CONTROL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@MDIO_COMBO_IEEO_MII_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_SERDES_DIGITAL = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1 = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_SIGNAL_DETECT_EN = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_INVERT_SIGNAL_DETECT = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_FIBER_MODE = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_AUTODET = common dso_local global i32 0, align 4
@MDIO_REG_BANK_BAM_NEXT_PAGE = common dso_local global i32 0, align 4
@MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL = common dso_local global i32 0, align 4
@MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_BAM_MODE = common dso_local global i32 0, align 4
@MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_TETON_AN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_USERB0 = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_UCTRL = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_BAM_CTRL1 = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_EN = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_STATION_MNGR_EN = common dso_local global i32 0, align 4
@MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_NP_AFTER_BP_EN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB1 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2 = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4 = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN = common dso_local global i32 0, align 4
@MDIO_REG_BANK_CL73_IEEEB0 = common dso_local global i32 0, align 4
@MDIO_CL73_IEEEB0_CL73_AN_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i64)* @bnx2x_set_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_autoneg(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.link_params*, %struct.link_params** %6, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %9, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %16 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %17 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %18 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %14, %struct.bnx2x_phy* %15, i32 %16, i32 %17, i32* %10)
  %19 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %20 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_AN_EN, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %35

28:                                               ; preds = %4
  %29 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_AN_EN, align 4
  %30 = load i32, i32* @MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %37 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %38 = load i32, i32* @MDIO_REG_BANK_COMBO_IEEE0, align 4
  %39 = load i32, i32* @MDIO_COMBO_IEEE0_MII_CONTROL, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %36, %struct.bnx2x_phy* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %44 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %45 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1, align 4
  %46 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %44, i32 %45, i32* %10)
  %47 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_SIGNAL_DETECT_EN, align 4
  %48 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_INVERT_SIGNAL_DETECT, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_FIBER_MODE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %57 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_AUTODET, align 4
  %63 = load i32, i32* %10, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %70

65:                                               ; preds = %35
  %66 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1_AUTODET, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %72 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %73 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %74 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_CONTROL1, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %71, %struct.bnx2x_phy* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %78 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %79 = load i32, i32* @MDIO_REG_BANK_BAM_NEXT_PAGE, align 4
  %80 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL, align 4
  %81 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %77, %struct.bnx2x_phy* %78, i32 %79, i32 %80, i32* %10)
  %82 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %83 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %70
  %88 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_BAM_MODE, align 4
  %89 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_TETON_AN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %100

93:                                               ; preds = %70
  %94 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_BAM_MODE, align 4
  %95 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL_TETON_AN, align 4
  %96 = or i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %10, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %102 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %103 = load i32, i32* @MDIO_REG_BANK_BAM_NEXT_PAGE, align 4
  %104 = load i32, i32* @MDIO_BAM_NEXT_PAGE_MP5_NEXT_PAGE_CTRL, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %101, %struct.bnx2x_phy* %102, i32 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %159

109:                                              ; preds = %100
  %110 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %111 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %112 = load i32, i32* @MDIO_REG_BANK_CL73_USERB0, align 4
  %113 = load i32, i32* @MDIO_CL73_USERB0_CL73_UCTRL, align 4
  %114 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %110, %struct.bnx2x_phy* %111, i32 %112, i32 %113, i32 14)
  %115 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %116 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %117 = load i32, i32* @MDIO_REG_BANK_CL73_USERB0, align 4
  %118 = load i32, i32* @MDIO_CL73_USERB0_CL73_BAM_CTRL1, align 4
  %119 = load i32, i32* @MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_EN, align 4
  %120 = load i32, i32* @MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_STATION_MNGR_EN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MDIO_CL73_USERB0_CL73_BAM_CTRL1_BAM_NP_AFTER_BP_EN, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %115, %struct.bnx2x_phy* %116, i32 %117, i32 %118, i32 %123)
  %125 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %126 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %127 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %128 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2, align 4
  %129 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %125, %struct.bnx2x_phy* %126, i32 %127, i32 %128, i32* %10)
  %130 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %131 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %109
  %137 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_10G_KX4, align 4
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %136, %109
  %141 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %142 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2_ADVR_1000M_KX, align 4
  %149 = load i32, i32* %10, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %10, align 4
  br label %151

151:                                              ; preds = %147, %140
  %152 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %153 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %154 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB1, align 4
  %155 = load i32, i32* @MDIO_CL73_IEEEB1_AN_ADV2, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %152, %struct.bnx2x_phy* %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN, align 4
  store i32 %158, i32* %10, align 4
  br label %160

159:                                              ; preds = %100
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %159, %151
  %161 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %162 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %163 = load i32, i32* @MDIO_REG_BANK_CL73_IEEEB0, align 4
  %164 = load i32, i32* @MDIO_CL73_IEEEB0_CL73_AN_CONTROL, align 4
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %161, %struct.bnx2x_phy* %162, i32 %163, i32 %164, i32 %165)
  ret void
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
