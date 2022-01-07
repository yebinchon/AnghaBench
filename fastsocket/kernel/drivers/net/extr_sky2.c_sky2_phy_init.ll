; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i32, i32, i64, i8, i32* }
%struct.sky2_port = type { i32, i32, i32, i64, i64 }

@SKY2_FLAG_AUTO_SPEED = common dso_local global i32 0, align 4
@SKY2_HW_NEWER_PHY = common dso_local global i32 0, align 4
@PHY_MARV_EXT_CTRL = common dso_local global i32 0, align 4
@PHY_M_EC_M_DSC_MSK = common dso_local global i32 0, align 4
@PHY_M_EC_S_DSC_MSK = common dso_local global i32 0, align 4
@PHY_M_EC_MAC_S_MSK = common dso_local global i32 0, align 4
@MAC_TX_CLK_25_MHZ = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EC = common dso_local global i32 0, align 4
@PHY_M_EC_DOWN_S_ENA = common dso_local global i32 0, align 4
@PHY_MARV_PHY_CTRL = common dso_local global i32 0, align 4
@SKY2_HW_GIGABIT = common dso_local global i32 0, align 4
@PHY_M_PC_ENA_AUTO = common dso_local global i32 0, align 4
@CHIP_REV_YU_FE2_A0 = common dso_local global i64 0, align 8
@PHY_MARV_FE_SPEC_2 = common dso_local global i32 0, align 4
@PHY_M_FESC_SEL_CL_A = common dso_local global i32 0, align 4
@PHY_M_PC_EN_DET_MSK = common dso_local global i32 0, align 4
@PHY_M_PC_DSC_MSK = common dso_local global i32 0, align 4
@PHY_M_PC_DOWN_S_ENA = common dso_local global i32 0, align 4
@PHY_M_PC_MDIX_MSK = common dso_local global i32 0, align 4
@SKY2_HW_FIBRE_PHY = common dso_local global i32 0, align 4
@PHY_MARV_EXT_ADR = common dso_local global i32 0, align 4
@PHY_M_MAC_MD_MSK = common dso_local global i32 0, align 4
@PHY_M_MAC_MD_1000BX = common dso_local global i32 0, align 4
@PHY_M_FIB_SIGD_POL = common dso_local global i32 0, align 4
@PHY_CT_RESET = common dso_local global i32 0, align 4
@PHY_AN_CSMA = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PHY_M_1000C_AFD = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@PHY_M_1000C_AHD = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PHY_M_AN_100_FD = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@PHY_M_AN_100_HD = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@PHY_M_AN_10_FD = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@PHY_M_AN_10_HD = common dso_local global i32 0, align 4
@PHY_M_AN_1000X_AFD = common dso_local global i32 0, align 4
@PHY_M_AN_1000X_AHD = common dso_local global i32 0, align 4
@PHY_CT_ANE = common dso_local global i32 0, align 4
@PHY_CT_RE_CFG = common dso_local global i32 0, align 4
@PHY_M_1000C_MSE = common dso_local global i32 0, align 4
@GM_GPCR_AU_DUP_DIS = common dso_local global i32 0, align 4
@GM_GPCR_AU_SPD_DIS = common dso_local global i32 0, align 4
@PHY_CT_SP1000 = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_1000 = common dso_local global i32 0, align 4
@PHY_CT_SP100 = common dso_local global i32 0, align 4
@GM_GPCR_SPEED_100 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@GM_GPCR_DUP_FULL = common dso_local global i32 0, align 4
@PHY_CT_DUP_MD = common dso_local global i32 0, align 4
@FC_NONE = common dso_local global i64 0, align 8
@SKY2_FLAG_AUTO_PAUSE = common dso_local global i32 0, align 4
@copper_fc_adv = common dso_local global i32* null, align 8
@fiber_fc_adv = common dso_local global i32* null, align 8
@GM_GPCR_AU_FCT_DIS = common dso_local global i32 0, align 4
@gm_fc_disable = common dso_local global i32* null, align 8
@FC_RX = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_ON = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@GM_GP_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_1000T_CTRL = common dso_local global i32 0, align 4
@PHY_MARV_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_MARV_CTRL = common dso_local global i32 0, align 4
@PULS_170MS = common dso_local global i32 0, align 4
@BLINK_84MS = common dso_local global i32 0, align 4
@PHY_MARV_FE_LED_PAR = common dso_local global i32 0, align 4
@PHY_M_FELP_LED1_MSK = common dso_local global i32 0, align 4
@LED_PAR_CTRL_ACT_BL = common dso_local global i32 0, align 4
@PHY_M_PC_ENA_LIP_NP = common dso_local global i32 0, align 4
@PHY_M_PC_ENA_ENE_DT = common dso_local global i32 0, align 4
@PHY_M_PC_DIS_SCRAMB = common dso_local global i32 0, align 4
@LED_PAR_CTRL_LINK = common dso_local global i32 0, align 4
@LED_PAR_CTRL_SPEED = common dso_local global i32 0, align 4
@PHY_MARV_PHY_STAT = common dso_local global i32 0, align 4
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@PHY_M_LEDC_TX_CTRL = common dso_local global i32 0, align 4
@MO_LED_OFF = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_UL_2 = common dso_local global i32 0, align 4
@PHY_MARV_PAGE_ADDR = common dso_local global i32 0, align 4
@PHY_MARV_PAGE_DATA = common dso_local global i32 0, align 4
@PHY_MARV_LED_CTRL = common dso_local global i32 0, align 4
@MO_LED_ON = common dso_local global i32 0, align 4
@PHY_MARV_LED_OVER = common dso_local global i32 0, align 4
@PHY_M_IS_AN_COMPL = common dso_local global i32 0, align 4
@PHY_M_DEF_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_init(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %16 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sky2_port* @netdev_priv(i32 %21)
  store %struct.sky2_port* %22, %struct.sky2_port** %5, align 8
  %23 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %2
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SKY2_HW_NEWER_PHY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %29
  %37 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PHY_MARV_EXT_CTRL, align 4
  %40 = call i32 @gm_phy_read(%struct.sky2_hw* %37, i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @PHY_M_EC_M_DSC_MSK, align 4
  %42 = load i32, i32* @PHY_M_EC_S_DSC_MSK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @PHY_M_EC_MAC_S_MSK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* @MAC_TX_CLK_25_MHZ, align 4
  %50 = call i32 @PHY_M_EC_MAC_S(i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %54 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CHIP_ID_YUKON_EC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %36
  %59 = call i32 @PHY_M_EC_DSC_2(i32 2)
  %60 = load i32, i32* @PHY_M_EC_DOWN_S_ENA, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %70

64:                                               ; preds = %36
  %65 = call i32 @PHY_M_EC_M_DSC(i32 0)
  %66 = call i32 @PHY_M_EC_S_DSC(i32 1)
  %67 = or i32 %65, %66
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PHY_MARV_EXT_CTRL, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @gm_phy_write(%struct.sky2_hw* %71, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %29, %2
  %77 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %80 = call i32 @gm_phy_read(%struct.sky2_hw* %77, i32 %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %82 = call i64 @sky2_is_copper(%struct.sky2_hw* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %76
  %85 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %86 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @SKY2_HW_GIGABIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* @PHY_M_PC_ENA_AUTO, align 4
  %93 = call i32 @PHY_M_PC_MDI_XMODE(i32 %92)
  %94 = ashr i32 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %98 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 132
  br i1 %100, label %101, label %120

101:                                              ; preds = %91
  %102 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %103 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %101
  %108 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PHY_MARV_FE_SPEC_2, align 4
  %111 = call i32 @gm_phy_read(%struct.sky2_hw* %108, i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* @PHY_M_FESC_SEL_CL_A, align 4
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %14, align 4
  %115 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @PHY_MARV_FE_SPEC_2, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @gm_phy_write(%struct.sky2_hw* %115, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %107, %101, %91
  br label %154

121:                                              ; preds = %84
  %122 = load i32, i32* @PHY_M_PC_EN_DET_MSK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @PHY_M_PC_ENA_AUTO, align 4
  %127 = call i32 @PHY_M_PC_MDI_XMODE(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %131 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %121
  %137 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %138 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SKY2_HW_NEWER_PHY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %136
  %144 = load i32, i32* @PHY_M_PC_DSC_MSK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = call i32 @PHY_M_PC_DSC(i32 2)
  %149 = load i32, i32* @PHY_M_PC_DOWN_S_ENA, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %143, %136, %121
  br label %154

154:                                              ; preds = %153, %120
  br label %160

155:                                              ; preds = %76
  %156 = load i32, i32* @PHY_M_PC_MDIX_MSK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %155, %154
  %161 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @gm_phy_write(%struct.sky2_hw* %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %167 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 130
  br i1 %169, label %170, label %231

170:                                              ; preds = %160
  %171 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %172 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SKY2_HW_FIBRE_PHY, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %231

177:                                              ; preds = %170
  %178 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %181 = call i32 @gm_phy_read(%struct.sky2_hw* %178, i32 %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %185 = call i32 @gm_phy_write(%struct.sky2_hw* %182, i32 %183, i32 %184, i32 2)
  %186 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %189 = call i32 @gm_phy_read(%struct.sky2_hw* %186, i32 %187, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* @PHY_M_MAC_MD_MSK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %6, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* @PHY_M_MAC_MD_1000BX, align 4
  %195 = call i32 @PHY_M_MAC_MODE_SEL(i32 %194)
  %196 = load i32, i32* %6, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %6, align 4
  %198 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %199 = load i32, i32* %4, align 4
  %200 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @gm_phy_write(%struct.sky2_hw* %198, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %204 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %203, i32 0, i32 3
  %205 = load i8, i8* %204, align 8
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 80
  br i1 %207, label %208, label %225

208:                                              ; preds = %177
  %209 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %212 = call i32 @gm_phy_write(%struct.sky2_hw* %209, i32 %210, i32 %211, i32 1)
  %213 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %216 = call i32 @gm_phy_read(%struct.sky2_hw* %213, i32 %214, i32 %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* @PHY_M_FIB_SIGD_POL, align 4
  %218 = load i32, i32* %6, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %6, align 4
  %220 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @gm_phy_write(%struct.sky2_hw* %220, i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %208, %177
  %226 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @gm_phy_write(%struct.sky2_hw* %226, i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %225, %170, %160
  %232 = load i32, i32* @PHY_CT_RESET, align 4
  store i32 %232, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %233 = load i32, i32* @PHY_AN_CSMA, align 4
  store i32 %233, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %234 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %235 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %340

240:                                              ; preds = %231
  %241 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %242 = call i64 @sky2_is_copper(%struct.sky2_hw* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %311

244:                                              ; preds = %240
  %245 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %246 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @PHY_M_1000C_AFD, align 4
  %253 = load i32, i32* %7, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %251, %244
  %256 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %257 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @PHY_M_1000C_AHD, align 4
  %264 = load i32, i32* %7, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %7, align 4
  br label %266

266:                                              ; preds = %262, %255
  %267 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %268 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load i32, i32* @PHY_M_AN_100_FD, align 4
  %275 = load i32, i32* %8, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %8, align 4
  br label %277

277:                                              ; preds = %273, %266
  %278 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %279 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %277
  %285 = load i32, i32* @PHY_M_AN_100_HD, align 4
  %286 = load i32, i32* %8, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %284, %277
  %289 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %290 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %288
  %296 = load i32, i32* @PHY_M_AN_10_FD, align 4
  %297 = load i32, i32* %8, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %8, align 4
  br label %299

299:                                              ; preds = %295, %288
  %300 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %301 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %299
  %307 = load i32, i32* @PHY_M_AN_10_HD, align 4
  %308 = load i32, i32* %8, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %8, align 4
  br label %310

310:                                              ; preds = %306, %299
  br label %334

311:                                              ; preds = %240
  %312 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %313 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %311
  %319 = load i32, i32* @PHY_M_AN_1000X_AFD, align 4
  %320 = load i32, i32* %8, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %318, %311
  %323 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %324 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %322
  %330 = load i32, i32* @PHY_M_AN_1000X_AHD, align 4
  %331 = load i32, i32* %8, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %8, align 4
  br label %333

333:                                              ; preds = %329, %322
  br label %334

334:                                              ; preds = %333, %310
  %335 = load i32, i32* @PHY_CT_ANE, align 4
  %336 = load i32, i32* @PHY_CT_RE_CFG, align 4
  %337 = or i32 %335, %336
  %338 = load i32, i32* %6, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %6, align 4
  br label %388

340:                                              ; preds = %231
  %341 = load i32, i32* @PHY_M_1000C_MSE, align 4
  store i32 %341, i32* %7, align 4
  %342 = load i32, i32* @GM_GPCR_AU_DUP_DIS, align 4
  %343 = load i32, i32* @GM_GPCR_AU_SPD_DIS, align 4
  %344 = or i32 %342, %343
  %345 = load i32, i32* %12, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %12, align 4
  %347 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %348 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  switch i32 %349, label %364 [
    i32 128, label %350
    i32 129, label %357
  ]

350:                                              ; preds = %340
  %351 = load i32, i32* @PHY_CT_SP1000, align 4
  %352 = load i32, i32* %6, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* @GM_GPCR_SPEED_1000, align 4
  %355 = load i32, i32* %12, align 4
  %356 = or i32 %355, %354
  store i32 %356, i32* %12, align 4
  br label %364

357:                                              ; preds = %340
  %358 = load i32, i32* @PHY_CT_SP100, align 4
  %359 = load i32, i32* %6, align 4
  %360 = or i32 %359, %358
  store i32 %360, i32* %6, align 4
  %361 = load i32, i32* @GM_GPCR_SPEED_100, align 4
  %362 = load i32, i32* %12, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %12, align 4
  br label %364

364:                                              ; preds = %340, %357, %350
  %365 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %366 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @DUPLEX_FULL, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %364
  %371 = load i32, i32* @GM_GPCR_DUP_FULL, align 4
  %372 = load i32, i32* %12, align 4
  %373 = or i32 %372, %371
  store i32 %373, i32* %12, align 4
  %374 = load i32, i32* @PHY_CT_DUP_MD, align 4
  %375 = load i32, i32* %6, align 4
  %376 = or i32 %375, %374
  store i32 %376, i32* %6, align 4
  br label %387

377:                                              ; preds = %364
  %378 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %379 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp slt i32 %380, 128
  br i1 %381, label %382, label %386

382:                                              ; preds = %377
  %383 = load i64, i64* @FC_NONE, align 8
  %384 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %385 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %384, i32 0, i32 4
  store i64 %383, i64* %385, align 8
  br label %386

386:                                              ; preds = %382, %377
  br label %387

387:                                              ; preds = %386, %370
  br label %388

388:                                              ; preds = %387, %334
  %389 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %390 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @SKY2_FLAG_AUTO_PAUSE, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %418

395:                                              ; preds = %388
  %396 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %397 = call i64 @sky2_is_copper(%struct.sky2_hw* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %395
  %400 = load i32*, i32** @copper_fc_adv, align 8
  %401 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %402 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %8, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %8, align 4
  br label %417

408:                                              ; preds = %395
  %409 = load i32*, i32** @fiber_fc_adv, align 8
  %410 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %411 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %410, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %8, align 4
  %416 = or i32 %415, %414
  store i32 %416, i32* %8, align 4
  br label %417

417:                                              ; preds = %408, %399
  br label %452

418:                                              ; preds = %388
  %419 = load i32, i32* @GM_GPCR_AU_FCT_DIS, align 4
  %420 = load i32, i32* %12, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %12, align 4
  %422 = load i32*, i32** @gm_fc_disable, align 8
  %423 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %424 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %423, i32 0, i32 4
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %12, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %12, align 4
  %430 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %431 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %430, i32 0, i32 4
  %432 = load i64, i64* %431, align 8
  %433 = load i32, i32* @FC_RX, align 4
  %434 = sext i32 %433 to i64
  %435 = and i64 %432, %434
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %444

437:                                              ; preds = %418
  %438 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %439 = load i32, i32* %4, align 4
  %440 = load i32, i32* @GMAC_CTRL, align 4
  %441 = call i32 @SK_REG(i32 %439, i32 %440)
  %442 = load i32, i32* @GMC_PAUSE_ON, align 4
  %443 = call i32 @sky2_write8(%struct.sky2_hw* %438, i32 %441, i32 %442)
  br label %451

444:                                              ; preds = %418
  %445 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %446 = load i32, i32* %4, align 4
  %447 = load i32, i32* @GMAC_CTRL, align 4
  %448 = call i32 @SK_REG(i32 %446, i32 %447)
  %449 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %450 = call i32 @sky2_write8(%struct.sky2_hw* %445, i32 %448, i32 %449)
  br label %451

451:                                              ; preds = %444, %437
  br label %452

452:                                              ; preds = %451, %417
  %453 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %454 = load i32, i32* %4, align 4
  %455 = load i32, i32* @GM_GP_CTRL, align 4
  %456 = load i32, i32* %12, align 4
  %457 = call i32 @gma_write16(%struct.sky2_hw* %453, i32 %454, i32 %455, i32 %456)
  %458 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %459 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @SKY2_HW_GIGABIT, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %452
  %465 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %466 = load i32, i32* %4, align 4
  %467 = load i32, i32* @PHY_MARV_1000T_CTRL, align 4
  %468 = load i32, i32* %7, align 4
  %469 = call i32 @gm_phy_write(%struct.sky2_hw* %465, i32 %466, i32 %467, i32 %468)
  br label %470

470:                                              ; preds = %464, %452
  %471 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %472 = load i32, i32* %4, align 4
  %473 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %474 = load i32, i32* %8, align 4
  %475 = call i32 @gm_phy_write(%struct.sky2_hw* %471, i32 %472, i32 %473, i32 %474)
  %476 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %477 = load i32, i32* %4, align 4
  %478 = load i32, i32* @PHY_MARV_CTRL, align 4
  %479 = load i32, i32* %6, align 4
  %480 = call i32 @gm_phy_write(%struct.sky2_hw* %476, i32 %477, i32 %478, i32 %479)
  %481 = load i32, i32* @PULS_170MS, align 4
  %482 = call i32 @PHY_M_LED_PULS_DUR(i32 %481)
  store i32 %482, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %483 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %484 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  switch i32 %485, label %614 [
    i32 133, label %486
    i32 132, label %509
    i32 130, label %541
    i32 135, label %581
    i32 134, label %581
    i32 131, label %581
  ]

486:                                              ; preds = %470
  %487 = load i32, i32* @BLINK_84MS, align 4
  %488 = call i32 @PHY_M_LED_BLINK_RT(i32 %487)
  %489 = shl i32 %488, 1
  %490 = load i32, i32* %10, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* %10, align 4
  %492 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %493 = load i32, i32* %4, align 4
  %494 = load i32, i32* @PHY_MARV_FE_LED_PAR, align 4
  %495 = call i32 @gm_phy_read(%struct.sky2_hw* %492, i32 %493, i32 %494)
  store i32 %495, i32* %6, align 4
  %496 = load i32, i32* @PHY_M_FELP_LED1_MSK, align 4
  %497 = xor i32 %496, -1
  %498 = load i32, i32* %6, align 4
  %499 = and i32 %498, %497
  store i32 %499, i32* %6, align 4
  %500 = load i32, i32* @LED_PAR_CTRL_ACT_BL, align 4
  %501 = call i32 @PHY_M_FELP_LED1_CTRL(i32 %500)
  %502 = load i32, i32* %6, align 4
  %503 = or i32 %502, %501
  store i32 %503, i32* %6, align 4
  %504 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %505 = load i32, i32* %4, align 4
  %506 = load i32, i32* @PHY_MARV_FE_LED_PAR, align 4
  %507 = load i32, i32* %6, align 4
  %508 = call i32 @gm_phy_write(%struct.sky2_hw* %504, i32 %505, i32 %506, i32 %507)
  br label %625

509:                                              ; preds = %470
  %510 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %511 = load i32, i32* %4, align 4
  %512 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %513 = call i32 @gm_phy_read(%struct.sky2_hw* %510, i32 %511, i32 %512)
  store i32 %513, i32* %6, align 4
  %514 = load i32, i32* @PHY_M_PC_ENA_LIP_NP, align 4
  %515 = load i32, i32* %6, align 4
  %516 = or i32 %515, %514
  store i32 %516, i32* %6, align 4
  %517 = load i32, i32* @PHY_M_PC_ENA_ENE_DT, align 4
  %518 = load i32, i32* @PHY_M_PC_DIS_SCRAMB, align 4
  %519 = or i32 %517, %518
  %520 = xor i32 %519, -1
  %521 = load i32, i32* %6, align 4
  %522 = and i32 %521, %520
  store i32 %522, i32* %6, align 4
  %523 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %524 = load i32, i32* %4, align 4
  %525 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %526 = load i32, i32* %6, align 4
  %527 = call i32 @gm_phy_write(%struct.sky2_hw* %523, i32 %524, i32 %525, i32 %526)
  %528 = load i32, i32* @LED_PAR_CTRL_ACT_BL, align 4
  %529 = call i32 @PHY_M_FELP_LED2_CTRL(i32 %528)
  %530 = load i32, i32* @LED_PAR_CTRL_LINK, align 4
  %531 = call i32 @PHY_M_FELP_LED1_CTRL(i32 %530)
  %532 = or i32 %529, %531
  %533 = load i32, i32* @LED_PAR_CTRL_SPEED, align 4
  %534 = call i32 @PHY_M_FELP_LED0_CTRL(i32 %533)
  %535 = or i32 %532, %534
  store i32 %535, i32* %6, align 4
  %536 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* @PHY_MARV_FE_LED_PAR, align 4
  %539 = load i32, i32* %6, align 4
  %540 = call i32 @gm_phy_write(%struct.sky2_hw* %536, i32 %537, i32 %538, i32 %539)
  br label %625

541:                                              ; preds = %470
  %542 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %543 = load i32, i32* %4, align 4
  %544 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %545 = call i32 @gm_phy_read(%struct.sky2_hw* %542, i32 %543, i32 %544)
  store i32 %545, i32* %9, align 4
  %546 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %547 = load i32, i32* %4, align 4
  %548 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %549 = call i32 @gm_phy_write(%struct.sky2_hw* %546, i32 %547, i32 %548, i32 3)
  %550 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %551 = load i32, i32* %4, align 4
  %552 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %553 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 1)
  %554 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 7)
  %555 = or i32 %553, %554
  %556 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 7)
  %557 = or i32 %555, %556
  %558 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 7)
  %559 = or i32 %557, %558
  %560 = call i32 @gm_phy_write(%struct.sky2_hw* %550, i32 %551, i32 %552, i32 %559)
  %561 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %562 = load i32, i32* %4, align 4
  %563 = load i32, i32* @PHY_MARV_PHY_STAT, align 4
  %564 = call i32 @PHY_M_POLC_LS1_P_MIX(i32 4)
  %565 = call i32 @PHY_M_POLC_IS0_P_MIX(i32 4)
  %566 = or i32 %564, %565
  %567 = call i32 @PHY_M_POLC_LOS_CTRL(i32 2)
  %568 = or i32 %566, %567
  %569 = call i32 @PHY_M_POLC_INIT_CTRL(i32 2)
  %570 = or i32 %568, %569
  %571 = call i32 @PHY_M_POLC_STA1_CTRL(i32 2)
  %572 = or i32 %570, %571
  %573 = call i32 @PHY_M_POLC_STA0_CTRL(i32 2)
  %574 = or i32 %572, %573
  %575 = call i32 @gm_phy_write(%struct.sky2_hw* %561, i32 %562, i32 %563, i32 %574)
  %576 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %577 = load i32, i32* %4, align 4
  %578 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %579 = load i32, i32* %9, align 4
  %580 = call i32 @gm_phy_write(%struct.sky2_hw* %576, i32 %577, i32 %578, i32 %579)
  br label %625

581:                                              ; preds = %470, %470, %470
  %582 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %583 = load i32, i32* %4, align 4
  %584 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %585 = call i32 @gm_phy_read(%struct.sky2_hw* %582, i32 %583, i32 %584)
  store i32 %585, i32* %9, align 4
  %586 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %587 = load i32, i32* %4, align 4
  %588 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %589 = call i32 @gm_phy_write(%struct.sky2_hw* %586, i32 %587, i32 %588, i32 3)
  %590 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %591 = load i32, i32* %4, align 4
  %592 = load i32, i32* @PHY_MARV_PHY_CTRL, align 4
  %593 = call i32 @PHY_M_LEDC_LOS_CTRL(i32 1)
  %594 = call i32 @PHY_M_LEDC_INIT_CTRL(i32 8)
  %595 = or i32 %593, %594
  %596 = call i32 @PHY_M_LEDC_STA1_CTRL(i32 7)
  %597 = or i32 %595, %596
  %598 = call i32 @PHY_M_LEDC_STA0_CTRL(i32 7)
  %599 = or i32 %597, %598
  %600 = call i32 @gm_phy_write(%struct.sky2_hw* %590, i32 %591, i32 %592, i32 %599)
  %601 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %602 = load i32, i32* %4, align 4
  %603 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %604 = load i32, i32* %10, align 4
  %605 = load i32, i32* @BLINK_84MS, align 4
  %606 = call i32 @PHY_M_LED_BLINK_RT(i32 %605)
  %607 = or i32 %604, %606
  %608 = call i32 @gm_phy_write(%struct.sky2_hw* %601, i32 %602, i32 %603, i32 %607)
  %609 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %610 = load i32, i32* %4, align 4
  %611 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %612 = load i32, i32* %9, align 4
  %613 = call i32 @gm_phy_write(%struct.sky2_hw* %609, i32 %610, i32 %611, i32 %612)
  br label %625

614:                                              ; preds = %470
  %615 = load i32, i32* @BLINK_84MS, align 4
  %616 = call i32 @PHY_M_LED_BLINK_RT(i32 %615)
  %617 = load i32, i32* @PHY_M_LEDC_TX_CTRL, align 4
  %618 = or i32 %616, %617
  %619 = load i32, i32* %10, align 4
  %620 = or i32 %619, %618
  store i32 %620, i32* %10, align 4
  %621 = load i32, i32* @MO_LED_OFF, align 4
  %622 = call i32 @PHY_M_LED_MO_RX(i32 %621)
  %623 = load i32, i32* %11, align 4
  %624 = or i32 %623, %622
  store i32 %624, i32* %11, align 4
  br label %625

625:                                              ; preds = %614, %581, %541, %509, %486
  %626 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %627 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %626, i32 0, i32 1
  %628 = load i32, i32* %627, align 4
  %629 = icmp eq i32 %628, 135
  br i1 %629, label %636, label %630

630:                                              ; preds = %625
  %631 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %632 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %631, i32 0, i32 1
  %633 = load i32, i32* %632, align 4
  %634 = load i32, i32* @CHIP_ID_YUKON_UL_2, align 4
  %635 = icmp eq i32 %633, %634
  br i1 %635, label %636, label %663

636:                                              ; preds = %630, %625
  %637 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %638 = load i32, i32* %4, align 4
  %639 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %640 = call i32 @gm_phy_write(%struct.sky2_hw* %637, i32 %638, i32 %639, i32 255)
  %641 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %642 = load i32, i32* %4, align 4
  %643 = call i32 @gm_phy_write(%struct.sky2_hw* %641, i32 %642, i32 24, i32 43673)
  %644 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %645 = load i32, i32* %4, align 4
  %646 = call i32 @gm_phy_write(%struct.sky2_hw* %644, i32 %645, i32 23, i32 8209)
  %647 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %648 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %647, i32 0, i32 1
  %649 = load i32, i32* %648, align 4
  %650 = icmp eq i32 %649, 135
  br i1 %650, label %651, label %658

651:                                              ; preds = %636
  %652 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %653 = load i32, i32* %4, align 4
  %654 = call i32 @gm_phy_write(%struct.sky2_hw* %652, i32 %653, i32 24, i32 41476)
  %655 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %656 = load i32, i32* %4, align 4
  %657 = call i32 @gm_phy_write(%struct.sky2_hw* %655, i32 %656, i32 23, i32 8194)
  br label %658

658:                                              ; preds = %651, %636
  %659 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %660 = load i32, i32* %4, align 4
  %661 = load i32, i32* @PHY_MARV_EXT_ADR, align 4
  %662 = call i32 @gm_phy_write(%struct.sky2_hw* %659, i32 %660, i32 %661, i32 0)
  br label %727

663:                                              ; preds = %630
  %664 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %665 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 132
  br i1 %667, label %668, label %683

668:                                              ; preds = %663
  %669 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %670 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %669, i32 0, i32 2
  %671 = load i64, i64* %670, align 8
  %672 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %673 = icmp eq i64 %671, %672
  br i1 %673, label %674, label %683

674:                                              ; preds = %668
  %675 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %676 = load i32, i32* %4, align 4
  %677 = load i32, i32* @PHY_MARV_PAGE_ADDR, align 4
  %678 = call i32 @gm_phy_write(%struct.sky2_hw* %675, i32 %676, i32 %677, i32 17)
  %679 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %680 = load i32, i32* %4, align 4
  %681 = load i32, i32* @PHY_MARV_PAGE_DATA, align 4
  %682 = call i32 @gm_phy_write(%struct.sky2_hw* %679, i32 %680, i32 %681, i32 16224)
  br label %726

683:                                              ; preds = %668, %663
  %684 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %685 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %684, i32 0, i32 1
  %686 = load i32, i32* %685, align 4
  %687 = icmp ne i32 %686, 134
  br i1 %687, label %688, label %725

688:                                              ; preds = %683
  %689 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %690 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = icmp slt i32 %691, 131
  br i1 %692, label %693, label %725

693:                                              ; preds = %688
  %694 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %695 = load i32, i32* %4, align 4
  %696 = load i32, i32* @PHY_MARV_LED_CTRL, align 4
  %697 = load i32, i32* %10, align 4
  %698 = call i32 @gm_phy_write(%struct.sky2_hw* %694, i32 %695, i32 %696, i32 %697)
  %699 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %700 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %703 = and i32 %701, %702
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %710

705:                                              ; preds = %693
  %706 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %707 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = icmp eq i32 %708, 129
  br i1 %709, label %710, label %715

710:                                              ; preds = %705, %693
  %711 = load i32, i32* @MO_LED_ON, align 4
  %712 = call i32 @PHY_M_LED_MO_100(i32 %711)
  %713 = load i32, i32* %11, align 4
  %714 = or i32 %713, %712
  store i32 %714, i32* %11, align 4
  br label %715

715:                                              ; preds = %710, %705
  %716 = load i32, i32* %11, align 4
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %724

718:                                              ; preds = %715
  %719 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %720 = load i32, i32* %4, align 4
  %721 = load i32, i32* @PHY_MARV_LED_OVER, align 4
  %722 = load i32, i32* %11, align 4
  %723 = call i32 @gm_phy_write(%struct.sky2_hw* %719, i32 %720, i32 %721, i32 %722)
  br label %724

724:                                              ; preds = %718, %715
  br label %725

725:                                              ; preds = %724, %688, %683
  br label %726

726:                                              ; preds = %725, %674
  br label %727

727:                                              ; preds = %726, %658
  %728 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %729 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 8
  %731 = load i32, i32* @SKY2_FLAG_AUTO_SPEED, align 4
  %732 = and i32 %730, %731
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %734, label %740

734:                                              ; preds = %727
  %735 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %736 = load i32, i32* %4, align 4
  %737 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %738 = load i32, i32* @PHY_M_IS_AN_COMPL, align 4
  %739 = call i32 @gm_phy_write(%struct.sky2_hw* %735, i32 %736, i32 %737, i32 %738)
  br label %746

740:                                              ; preds = %727
  %741 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %742 = load i32, i32* %4, align 4
  %743 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %744 = load i32, i32* @PHY_M_DEF_MSK, align 4
  %745 = call i32 @gm_phy_write(%struct.sky2_hw* %741, i32 %742, i32 %743, i32 %744)
  br label %746

746:                                              ; preds = %740, %734
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(i32) #1

declare dso_local i32 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @PHY_M_EC_MAC_S(i32) #1

declare dso_local i32 @PHY_M_EC_DSC_2(i32) #1

declare dso_local i32 @PHY_M_EC_M_DSC(i32) #1

declare dso_local i32 @PHY_M_EC_S_DSC(i32) #1

declare dso_local i32 @gm_phy_write(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i64 @sky2_is_copper(%struct.sky2_hw*) #1

declare dso_local i32 @PHY_M_PC_MDI_XMODE(i32) #1

declare dso_local i32 @PHY_M_PC_DSC(i32) #1

declare dso_local i32 @PHY_M_MAC_MODE_SEL(i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @PHY_M_LED_PULS_DUR(i32) #1

declare dso_local i32 @PHY_M_LED_BLINK_RT(i32) #1

declare dso_local i32 @PHY_M_FELP_LED1_CTRL(i32) #1

declare dso_local i32 @PHY_M_FELP_LED2_CTRL(i32) #1

declare dso_local i32 @PHY_M_FELP_LED0_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_LOS_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_INIT_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_STA1_CTRL(i32) #1

declare dso_local i32 @PHY_M_LEDC_STA0_CTRL(i32) #1

declare dso_local i32 @PHY_M_POLC_LS1_P_MIX(i32) #1

declare dso_local i32 @PHY_M_POLC_IS0_P_MIX(i32) #1

declare dso_local i32 @PHY_M_POLC_LOS_CTRL(i32) #1

declare dso_local i32 @PHY_M_POLC_INIT_CTRL(i32) #1

declare dso_local i32 @PHY_M_POLC_STA1_CTRL(i32) #1

declare dso_local i32 @PHY_M_POLC_STA0_CTRL(i32) #1

declare dso_local i32 @PHY_M_LED_MO_RX(i32) #1

declare dso_local i32 @PHY_M_LED_MO_100(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
