; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_mac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { i64, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32* }
%struct.sky2_port = type { i32 }

@GPHY_CTRL = common dso_local global i32 0, align 4
@GPC_RST_SET = common dso_local global i32 0, align 4
@GPC_RST_CLR = common dso_local global i32 0, align 4
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_RST_CLR = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_XL = common dso_local global i64 0, align 8
@GMC_RST_SET = common dso_local global i32 0, align 4
@PHY_MARV_ID0 = common dso_local global i32 0, align 4
@PHY_MARV_ID0_VAL = common dso_local global i64 0, align 8
@PHY_MARV_ID1 = common dso_local global i32 0, align 4
@PHY_MARV_ID1_Y2 = common dso_local global i64 0, align 8
@PHY_MARV_INT_MASK = common dso_local global i32 0, align 4
@GMAC_IRQ_SRC = common dso_local global i32 0, align 4
@GMAC_IRQ_MSK = common dso_local global i32 0, align 4
@GMAC_DEF_MSK = common dso_local global i32 0, align 4
@GM_PHY_ADDR = common dso_local global i32 0, align 4
@GM_PAR_MIB_CLR = common dso_local global i32 0, align 4
@GM_MIB_CNT_BASE = common dso_local global i32 0, align 4
@GM_MIB_CNT_END = common dso_local global i32 0, align 4
@GM_TX_CTRL = common dso_local global i32 0, align 4
@TX_COL_DEF = common dso_local global i32 0, align 4
@GM_RX_CTRL = common dso_local global i32 0, align 4
@GM_RXCR_UCF_ENA = common dso_local global i32 0, align 4
@GM_RXCR_CRC_DIS = common dso_local global i32 0, align 4
@GM_RXCR_MCF_ENA = common dso_local global i32 0, align 4
@GM_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@GM_TX_PARAM = common dso_local global i32 0, align 4
@TX_JAM_LEN_DEF = common dso_local global i32 0, align 4
@TX_JAM_IPG_DEF = common dso_local global i32 0, align 4
@TX_IPG_JAM_DEF = common dso_local global i32 0, align 4
@TX_BOF_LIM_DEF = common dso_local global i32 0, align 4
@DATA_BLIND_DEF = common dso_local global i32 0, align 4
@GM_SMOD_VLAN_ENA = common dso_local global i32 0, align 4
@IPG_DATA_DEF = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@GM_SMOD_JUMBO_ENA = common dso_local global i32 0, align 4
@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@GM_SRC_ADDR_2L = common dso_local global i32 0, align 4
@GM_SRC_ADDR_1L = common dso_local global i32 0, align 4
@GM_TX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_RX_IRQ_MSK = common dso_local global i32 0, align 4
@GM_TR_IRQ_MSK = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_RST_CLR = common dso_local global i32 0, align 4
@GMF_OPER_ON = common dso_local global i32 0, align 4
@GMF_RX_F_FL_ON = common dso_local global i32 0, align 4
@CHIP_ID_YUKON_EX = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_FE_P = common dso_local global i64 0, align 8
@GMF_RX_OVER_ON = common dso_local global i32 0, align 4
@RX_GMF_FL_MSK = common dso_local global i32 0, align 4
@GMR_FS_ANY_ERR = common dso_local global i32 0, align 4
@RX_GMF_FL_THR_DEF = common dso_local global i32 0, align 4
@CHIP_REV_YU_FE2_A0 = common dso_local global i64 0, align 8
@RX_GMF_FL_THR = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@SKY2_HW_RAM_BUFFER = common dso_local global i32 0, align 4
@RX_GMF_LP_THR = common dso_local global i32 0, align 4
@RX_GMF_UP_THR = common dso_local global i32 0, align 4
@TX_GMF_EA = common dso_local global i32 0, align 4
@TX_DYN_WM_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_mac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_mac_init(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %11 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.sky2_port* @netdev_priv(%struct.TYPE_2__* %16)
  store %struct.sky2_port* %17, %struct.sky2_port** %5, align 8
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %9, align 8
  %27 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GPHY_CTRL, align 4
  %30 = call i32 @SK_REG(i32 %28, i32 %29)
  %31 = load i32, i32* @GPC_RST_SET, align 4
  %32 = call i32 @sky2_write8(%struct.sky2_hw* %27, i32 %30, i32 %31)
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @GPHY_CTRL, align 4
  %36 = call i32 @SK_REG(i32 %34, i32 %35)
  %37 = load i32, i32* @GPC_RST_CLR, align 4
  %38 = call i32 @sky2_write8(%struct.sky2_hw* %33, i32 %36, i32 %37)
  %39 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @GMAC_CTRL, align 4
  %42 = call i32 @SK_REG(i32 %40, i32 %41)
  %43 = load i32, i32* @GMC_RST_CLR, align 4
  %44 = call i32 @sky2_write8(%struct.sky2_hw* %39, i32 %42, i32 %43)
  %45 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %46 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %2
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %52 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %95

58:                                               ; preds = %55
  %59 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %60 = load i32, i32* @GMAC_CTRL, align 4
  %61 = call i32 @SK_REG(i32 0, i32 %60)
  %62 = load i32, i32* @GMC_RST_CLR, align 4
  %63 = call i32 @sky2_write8(%struct.sky2_hw* %59, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %92, %58
  %65 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %66 = load i32, i32* @GMAC_CTRL, align 4
  %67 = call i32 @SK_REG(i32 1, i32 %66)
  %68 = load i32, i32* @GMC_RST_SET, align 4
  %69 = call i32 @sky2_write8(%struct.sky2_hw* %65, i32 %67, i32 %68)
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %71 = load i32, i32* @GMAC_CTRL, align 4
  %72 = call i32 @SK_REG(i32 1, i32 %71)
  %73 = load i32, i32* @GMC_RST_CLR, align 4
  %74 = call i32 @sky2_write8(%struct.sky2_hw* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %77 = load i32, i32* @PHY_MARV_ID0, align 4
  %78 = call i64 @gm_phy_read(%struct.sky2_hw* %76, i32 1, i32 %77)
  %79 = load i64, i64* @PHY_MARV_ID0_VAL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %75
  %82 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %83 = load i32, i32* @PHY_MARV_ID1, align 4
  %84 = call i64 @gm_phy_read(%struct.sky2_hw* %82, i32 1, i32 %83)
  %85 = load i64, i64* @PHY_MARV_ID1_Y2, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %89 = load i32, i32* @PHY_MARV_INT_MASK, align 4
  %90 = call i64 @gm_phy_read(%struct.sky2_hw* %88, i32 1, i32 %89)
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %87, %81, %75
  %93 = phi i1 [ true, %81 ], [ true, %75 ], [ %91, %87 ]
  br i1 %93, label %64, label %94

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %55, %50, %2
  %96 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @GMAC_IRQ_SRC, align 4
  %99 = call i32 @SK_REG(i32 %97, i32 %98)
  %100 = call i32 @sky2_read16(%struct.sky2_hw* %96, i32 %99)
  %101 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @GMAC_IRQ_MSK, align 4
  %104 = call i32 @SK_REG(i32 %102, i32 %103)
  %105 = load i32, i32* @GMAC_DEF_MSK, align 4
  %106 = call i32 @sky2_write8(%struct.sky2_hw* %101, i32 %104, i32 %105)
  %107 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %108 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @sky2_phy_power_up(%struct.sky2_hw* %110, i32 %111)
  %113 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @sky2_phy_init(%struct.sky2_hw* %113, i32 %114)
  %116 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %117 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @GM_PHY_ADDR, align 4
  %122 = call i32 @gma_read16(%struct.sky2_hw* %119, i32 %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @GM_PHY_ADDR, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* @GM_PAR_MIB_CLR, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @gma_write16(%struct.sky2_hw* %123, i32 %124, i32 %125, i32 %128)
  %130 = load i32, i32* @GM_MIB_CNT_BASE, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %140, %95
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @GM_MIB_CNT_END, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @gma_read16(%struct.sky2_hw* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 4
  store i32 %142, i32* %8, align 4
  br label %131

143:                                              ; preds = %131
  %144 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @GM_PHY_ADDR, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @gma_write16(%struct.sky2_hw* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @GM_TX_CTRL, align 4
  %152 = load i32, i32* @TX_COL_DEF, align 4
  %153 = call i32 @TX_COL_THR(i32 %152)
  %154 = call i32 @gma_write16(%struct.sky2_hw* %149, i32 %150, i32 %151, i32 %153)
  %155 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @GM_RX_CTRL, align 4
  %158 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %159 = load i32, i32* @GM_RXCR_CRC_DIS, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @gma_write16(%struct.sky2_hw* %155, i32 %156, i32 %157, i32 %162)
  %164 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @GM_TX_FLOW_CTRL, align 4
  %167 = call i32 @gma_write16(%struct.sky2_hw* %164, i32 %165, i32 %166, i32 65535)
  %168 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @GM_TX_PARAM, align 4
  %171 = load i32, i32* @TX_JAM_LEN_DEF, align 4
  %172 = call i32 @TX_JAM_LEN_VAL(i32 %171)
  %173 = load i32, i32* @TX_JAM_IPG_DEF, align 4
  %174 = call i32 @TX_JAM_IPG_VAL(i32 %173)
  %175 = or i32 %172, %174
  %176 = load i32, i32* @TX_IPG_JAM_DEF, align 4
  %177 = call i32 @TX_IPG_JAM_DATA(i32 %176)
  %178 = or i32 %175, %177
  %179 = load i32, i32* @TX_BOF_LIM_DEF, align 4
  %180 = call i32 @TX_BACK_OFF_LIM(i32 %179)
  %181 = or i32 %178, %180
  %182 = call i32 @gma_write16(%struct.sky2_hw* %168, i32 %169, i32 %170, i32 %181)
  %183 = load i32, i32* @DATA_BLIND_DEF, align 4
  %184 = call i32 @DATA_BLIND_VAL(i32 %183)
  %185 = load i32, i32* @GM_SMOD_VLAN_ENA, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @IPG_DATA_DEF, align 4
  %188 = call i32 @IPG_DATA_VAL(i32 %187)
  %189 = or i32 %186, %188
  store i32 %189, i32* %6, align 4
  %190 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %191 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %190, i32 0, i32 3
  %192 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %192, i64 %194
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @ETH_DATA_LEN, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %143
  %202 = load i32, i32* @GM_SMOD_JUMBO_ENA, align 4
  %203 = load i32, i32* %6, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %201, %143
  %206 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @GM_SERIAL_MODE, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @gma_write16(%struct.sky2_hw* %206, i32 %207, i32 %208, i32 %209)
  %211 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @GM_SRC_ADDR_2L, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @gma_set_addr(%struct.sky2_hw* %211, i32 %212, i32 %213, i32* %214)
  %216 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @GM_SRC_ADDR_1L, align 4
  %219 = load i32*, i32** %9, align 8
  %220 = call i32 @gma_set_addr(%struct.sky2_hw* %216, i32 %217, i32 %218, i32* %219)
  %221 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @GM_TX_IRQ_MSK, align 4
  %224 = call i32 @gma_write16(%struct.sky2_hw* %221, i32 %222, i32 %223, i32 0)
  %225 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @GM_RX_IRQ_MSK, align 4
  %228 = call i32 @gma_write16(%struct.sky2_hw* %225, i32 %226, i32 %227, i32 0)
  %229 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @GM_TR_IRQ_MSK, align 4
  %232 = call i32 @gma_write16(%struct.sky2_hw* %229, i32 %230, i32 %231, i32 0)
  %233 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %236 = call i32 @SK_REG(i32 %234, i32 %235)
  %237 = load i32, i32* @GMF_RST_CLR, align 4
  %238 = call i32 @sky2_write8(%struct.sky2_hw* %233, i32 %236, i32 %237)
  %239 = load i32, i32* @GMF_OPER_ON, align 4
  %240 = load i32, i32* @GMF_RX_F_FL_ON, align 4
  %241 = or i32 %239, %240
  store i32 %241, i32* %7, align 4
  %242 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %243 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @CHIP_ID_YUKON_EX, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %205
  %248 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %249 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %247, %205
  %254 = load i32, i32* @GMF_RX_OVER_ON, align 4
  %255 = load i32, i32* %7, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %253, %247
  %258 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %261 = call i32 @SK_REG(i32 %259, i32 %260)
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @sky2_write32(%struct.sky2_hw* %258, i32 %261, i32 %262)
  %264 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %265 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @CHIP_ID_YUKON_XL, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %257
  %270 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %273 = call i32 @SK_REG(i32 %271, i32 %272)
  %274 = call i32 @sky2_write16(%struct.sky2_hw* %270, i32 %273, i32 0)
  br label %282

275:                                              ; preds = %257
  %276 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %277 = load i32, i32* %4, align 4
  %278 = load i32, i32* @RX_GMF_FL_MSK, align 4
  %279 = call i32 @SK_REG(i32 %277, i32 %278)
  %280 = load i32, i32* @GMR_FS_ANY_ERR, align 4
  %281 = call i32 @sky2_write16(%struct.sky2_hw* %276, i32 %279, i32 %280)
  br label %282

282:                                              ; preds = %275, %269
  %283 = load i32, i32* @RX_GMF_FL_THR_DEF, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %6, align 4
  %285 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %286 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %297

290:                                              ; preds = %282
  %291 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %292 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  store i32 376, i32* %6, align 4
  br label %297

297:                                              ; preds = %296, %290, %282
  %298 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @RX_GMF_FL_THR, align 4
  %301 = call i32 @SK_REG(i32 %299, i32 %300)
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @sky2_write16(%struct.sky2_hw* %298, i32 %301, i32 %302)
  %304 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %305 = load i32, i32* %4, align 4
  %306 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %307 = call i32 @SK_REG(i32 %305, i32 %306)
  %308 = load i32, i32* @GMF_RST_CLR, align 4
  %309 = call i32 @sky2_write8(%struct.sky2_hw* %304, i32 %307, i32 %308)
  %310 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %313 = call i32 @SK_REG(i32 %311, i32 %312)
  %314 = load i32, i32* @GMF_OPER_ON, align 4
  %315 = call i32 @sky2_write16(%struct.sky2_hw* %310, i32 %313, i32 %314)
  %316 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %317 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @SKY2_HW_RAM_BUFFER, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %336, label %322

322:                                              ; preds = %297
  %323 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* @RX_GMF_LP_THR, align 4
  %326 = call i32 @SK_REG(i32 %324, i32 %325)
  %327 = call i32 @sky2_write8(%struct.sky2_hw* %323, i32 %326, i32 96)
  %328 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* @RX_GMF_UP_THR, align 4
  %331 = call i32 @SK_REG(i32 %329, i32 %330)
  %332 = call i32 @sky2_write8(%struct.sky2_hw* %328, i32 %331, i32 128)
  %333 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %334 = load i32, i32* %4, align 4
  %335 = call i32 @sky2_set_tx_stfwd(%struct.sky2_hw* %333, i32 %334)
  br label %336

336:                                              ; preds = %322, %297
  %337 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %338 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @CHIP_ID_YUKON_FE_P, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %364

342:                                              ; preds = %336
  %343 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %344 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @CHIP_REV_YU_FE2_A0, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %364

348:                                              ; preds = %342
  %349 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %350 = load i32, i32* %4, align 4
  %351 = load i32, i32* @TX_GMF_EA, align 4
  %352 = call i32 @SK_REG(i32 %350, i32 %351)
  %353 = call i32 @sky2_read16(%struct.sky2_hw* %349, i32 %352)
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* @TX_DYN_WM_ENA, align 4
  %355 = xor i32 %354, -1
  %356 = load i32, i32* %6, align 4
  %357 = and i32 %356, %355
  store i32 %357, i32* %6, align 4
  %358 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %359 = load i32, i32* %4, align 4
  %360 = load i32, i32* @TX_GMF_EA, align 4
  %361 = call i32 @SK_REG(i32 %359, i32 %360)
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @sky2_write16(%struct.sky2_hw* %358, i32 %361, i32 %362)
  br label %364

364:                                              ; preds = %348, %342, %336
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.TYPE_2__*) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i64 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_read16(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sky2_phy_power_up(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_phy_init(%struct.sky2_hw*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @gma_read16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.sky2_hw*, i32, i32, i32) #1

declare dso_local i32 @TX_COL_THR(i32) #1

declare dso_local i32 @TX_JAM_LEN_VAL(i32) #1

declare dso_local i32 @TX_JAM_IPG_VAL(i32) #1

declare dso_local i32 @TX_IPG_JAM_DATA(i32) #1

declare dso_local i32 @TX_BACK_OFF_LIM(i32) #1

declare dso_local i32 @DATA_BLIND_VAL(i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @gma_set_addr(%struct.sky2_hw*, i32, i32, i32*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @sky2_set_tx_stfwd(%struct.sky2_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
