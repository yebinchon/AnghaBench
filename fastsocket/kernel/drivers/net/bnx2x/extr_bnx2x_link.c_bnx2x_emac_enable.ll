; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_emac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32 }

@GRCBASE_EMAC1 = common dso_local global i32 0, align 4
@GRCBASE_EMAC0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enabling EMAC\0A\00", align 1
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@PHY_XGXS_FLAG = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"XGXS\0A\00", align 1
@NIG_REG_XGXS_LANE_SEL_P0 = common dso_local global i64 0, align 8
@NIG_REG_XGXS_SERDES0_MODE_SEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"SerDes\0A\00", align 1
@EMAC_REG_EMAC_RX_MODE = common dso_local global i32 0, align 4
@EMAC_RX_MODE_RESET = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_TX_MODE = common dso_local global i32 0, align 4
@EMAC_TX_MODE_RESET = common dso_local global i32 0, align 4
@EMAC_RX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@EMAC_TX_MODE_EXT_PAUSE_EN = common dso_local global i32 0, align 4
@EMAC_TX_MODE_FLOW_EN = common dso_local global i32 0, align 4
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@EMAC_RX_MODE_KEEP_VLAN_TAG = common dso_local global i32 0, align 4
@EMAC_RX_MODE_PROMISCUOUS = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"PFC is enabled\0A\00", align 1
@EMAC_REG_RX_PFC_MODE_RX_EN = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE_TX_EN = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_MODE_PRIORITIES = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT = common dso_local global i32 0, align 4
@EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT = common dso_local global i32 0, align 4
@EMAC_RX_MODE_KEEP_MAC_CONTROL = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MODE = common dso_local global i32 0, align 4
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_RX_MTU_SIZE = common dso_local global i32 0, align 4
@EMAC_RX_MTU_SIZE_JUMBO_ENA = common dso_local global i32 0, align 4
@ETH_MAX_JUMBO_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_OVREHEAD = common dso_local global i32 0, align 4
@NIG_REG_NIG_INGRESS_EMAC0_NO_CRC = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_PAUSE_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i64 0, align 8
@MAC_TYPE_EMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*, i32)* @bnx2x_emac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_emac_enable(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 3
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %7, align 8
  %15 = load %struct.link_params*, %struct.link_params** %4, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @GRCBASE_EMAC1, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @GRCBASE_EMAC0, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %29 = load i64, i64* @GRCBASE_MISC, align 8
  %30 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @REG_WR(%struct.bnx2x* %28, i64 %31, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %37 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = call i32 @REG_WR(%struct.bnx2x* %36, i64 %41, i32 1)
  %43 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %44 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PHY_XGXS_FLAG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %24
  %50 = load %struct.link_params*, %struct.link_params** %4, align 8
  %51 = getelementptr inbounds %struct.link_params, %struct.link_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* @NETIF_MSG_LINK, align 4
  %58 = call i32 @DP(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %60 = load i64, i64* @NIG_REG_XGXS_LANE_SEL_P0, align 8
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @REG_WR(%struct.bnx2x* %59, i64 %64, i32 %65)
  %67 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %68 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @REG_WR(%struct.bnx2x* %67, i64 %72, i32 1)
  br label %84

74:                                               ; preds = %24
  %75 = load i32, i32* @NETIF_MSG_LINK, align 4
  %76 = call i32 @DP(i32 %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %78 = load i64, i64* @NIG_REG_XGXS_SERDES0_MODE_SEL, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %78, %81
  %83 = call i32 @REG_WR(%struct.bnx2x* %77, i64 %82, i32 0)
  br label %84

84:                                               ; preds = %74, %49
  %85 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @EMAC_RX_MODE_RESET, align 4
  %90 = call i32 @bnx2x_bits_en(%struct.bnx2x* %85, i32 %88, i32 %89)
  %91 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @EMAC_TX_MODE_RESET, align 4
  %96 = call i32 @bnx2x_bits_en(%struct.bnx2x* %91, i32 %94, i32 %95)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @EMAC_RX_MODE_FLOW_EN, align 4
  %102 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %97, i32 %100, i32 %101)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @EMAC_TX_MODE_EXT_PAUSE_EN, align 4
  %108 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %103, i32 %106, i32 %109)
  %111 = load %struct.link_params*, %struct.link_params** %4, align 8
  %112 = getelementptr inbounds %struct.link_params, %struct.link_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %148, label %117

117:                                              ; preds = %84
  %118 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %119 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* @EMAC_RX_MODE_FLOW_EN, align 4
  %130 = call i32 @bnx2x_bits_en(%struct.bnx2x* %125, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %124, %117
  %132 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %133 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @EMAC_TX_MODE_EXT_PAUSE_EN, align 4
  %144 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @bnx2x_bits_en(%struct.bnx2x* %139, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %138, %131
  br label %155

148:                                              ; preds = %84
  %149 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @EMAC_REG_EMAC_TX_MODE, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32, i32* @EMAC_TX_MODE_FLOW_EN, align 4
  %154 = call i32 @bnx2x_bits_en(%struct.bnx2x* %149, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %148, %147
  %156 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %159 = add nsw i32 %157, %158
  %160 = call i32 @REG_RD(%struct.bnx2x* %156, i32 %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32, i32* @EMAC_RX_MODE_KEEP_VLAN_TAG, align 4
  %162 = load i32, i32* @EMAC_RX_MODE_PROMISCUOUS, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %10, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %10, align 4
  %166 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %167 = load i32, i32* @EMAC_REG_RX_PFC_MODE, align 4
  %168 = call i32 @EMAC_WR(%struct.bnx2x* %166, i32 %167, i32 0)
  %169 = load %struct.link_params*, %struct.link_params** %4, align 8
  %170 = getelementptr inbounds %struct.link_params, %struct.link_params* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %197

175:                                              ; preds = %155
  %176 = load i32, i32* @NETIF_MSG_LINK, align 4
  %177 = call i32 @DP(i32 %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %178 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %179 = load i32, i32* @EMAC_REG_RX_PFC_MODE, align 4
  %180 = load i32, i32* @EMAC_REG_RX_PFC_MODE_RX_EN, align 4
  %181 = load i32, i32* @EMAC_REG_RX_PFC_MODE_TX_EN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @EMAC_REG_RX_PFC_MODE_PRIORITIES, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @EMAC_WR(%struct.bnx2x* %178, i32 %179, i32 %184)
  %186 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %187 = load i32, i32* @EMAC_REG_RX_PFC_PARAM, align 4
  %188 = load i32, i32* @EMAC_REG_RX_PFC_PARAM_OPCODE_BITSHIFT, align 4
  %189 = shl i32 257, %188
  %190 = load i32, i32* @EMAC_REG_RX_PFC_PARAM_PRIORITY_EN_BITSHIFT, align 4
  %191 = shl i32 255, %190
  %192 = or i32 %189, %191
  %193 = call i32 @EMAC_WR(%struct.bnx2x* %186, i32 %187, i32 %192)
  %194 = load i32, i32* @EMAC_RX_MODE_KEEP_MAC_CONTROL, align 4
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %175, %155
  %198 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %199 = load i32, i32* @EMAC_REG_EMAC_RX_MODE, align 4
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @EMAC_WR(%struct.bnx2x* %198, i32 %199, i32 %200)
  %202 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %205 = add nsw i32 %203, %204
  %206 = call i32 @REG_RD(%struct.bnx2x* %202, i32 %205)
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %197
  %210 = load i32, i32* %10, align 4
  %211 = or i32 %210, 2064
  store i32 %211, i32* %10, align 4
  br label %215

212:                                              ; preds = %197
  %213 = load i32, i32* %10, align 4
  %214 = and i32 %213, -2065
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %212, %209
  %216 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %217 = load i32, i32* @EMAC_REG_EMAC_MODE, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @EMAC_WR(%struct.bnx2x* %216, i32 %217, i32 %218)
  %220 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %221 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %222 = load i32, i32* %8, align 4
  %223 = mul nsw i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %221, %224
  %226 = call i32 @REG_WR(%struct.bnx2x* %220, i64 %225, i32 1)
  %227 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %228 = load i32, i32* @EMAC_REG_EMAC_RX_MTU_SIZE, align 4
  %229 = load i32, i32* @EMAC_RX_MTU_SIZE_JUMBO_ENA, align 4
  %230 = load i32, i32* @ETH_MAX_JUMBO_PACKET_SIZE, align 4
  %231 = load i32, i32* @ETH_OVREHEAD, align 4
  %232 = add nsw i32 %230, %231
  %233 = or i32 %229, %232
  %234 = call i32 @EMAC_WR(%struct.bnx2x* %227, i32 %228, i32 %233)
  %235 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %236 = load i64, i64* @NIG_REG_NIG_INGRESS_EMAC0_NO_CRC, align 8
  %237 = load i32, i32* %8, align 4
  %238 = mul nsw i32 %237, 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %236, %239
  %241 = call i32 @REG_WR(%struct.bnx2x* %235, i64 %240, i32 1)
  %242 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %243 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %244 = load i32, i32* %8, align 4
  %245 = mul nsw i32 %244, 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %243, %246
  %248 = call i32 @REG_WR(%struct.bnx2x* %242, i64 %247, i32 0)
  %249 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %250 = load i64, i64* @NIG_REG_BMAC0_PAUSE_OUT_EN, align 8
  %251 = load i32, i32* %8, align 4
  %252 = mul nsw i32 %251, 4
  %253 = sext i32 %252 to i64
  %254 = add nsw i64 %250, %253
  %255 = call i32 @REG_WR(%struct.bnx2x* %249, i64 %254, i32 0)
  %256 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %257 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %258 = load i32, i32* %8, align 4
  %259 = mul nsw i32 %258, 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %257, %260
  %262 = call i32 @REG_WR(%struct.bnx2x* %256, i64 %261, i32 0)
  %263 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %264 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %265 = load i32, i32* %8, align 4
  %266 = mul nsw i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %264, %267
  %269 = call i32 @REG_WR(%struct.bnx2x* %263, i64 %268, i32 1)
  store i32 0, i32* %10, align 4
  %270 = load %struct.link_params*, %struct.link_params** %4, align 8
  %271 = getelementptr inbounds %struct.link_params, %struct.link_params* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %215
  %277 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %278 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %276, %215
  store i32 1, i32* %10, align 4
  br label %284

284:                                              ; preds = %283, %276
  %285 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %286 = load i64, i64* @NIG_REG_EMAC0_PAUSE_OUT_EN, align 8
  %287 = load i32, i32* %8, align 4
  %288 = mul nsw i32 %287, 4
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %286, %289
  %291 = load i32, i32* %10, align 4
  %292 = call i32 @REG_WR(%struct.bnx2x* %285, i64 %290, i32 %291)
  %293 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %294 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %295 = load i32, i32* %8, align 4
  %296 = mul nsw i32 %295, 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %294, %297
  %299 = call i32 @REG_WR(%struct.bnx2x* %293, i64 %298, i32 1)
  %300 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %301 = load i64, i64* @NIG_REG_BMAC0_REGS_OUT_EN, align 8
  %302 = load i32, i32* %8, align 4
  %303 = mul nsw i32 %302, 4
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %301, %304
  %306 = call i32 @REG_WR(%struct.bnx2x* %300, i64 %305, i32 0)
  %307 = load i32, i32* @MAC_TYPE_EMAC, align 4
  %308 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %309 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @EMAC_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
