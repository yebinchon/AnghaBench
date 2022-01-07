; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, %struct.TYPE_4__*, i32, %struct.bnx2x* }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, %struct.link_params*)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i64, i64 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Resetting the link of port %d\0A\00", align 1
@SHMEM_EEE_LP_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ACTIVE_BIT = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@NIG_REG_BMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_EGRESS_EMAC0_OUT_EN = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@LED_MODE_OFF = common dso_local global i32 0, align 4
@EXT_PHY1 = common dso_local global i32 0, align 4
@FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@NIG_REG_LATCH_BC_0 = common dso_local global i64 0, align 8
@NIG_LATCH_BC_ENABLE_MI_INT = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@GRCBASE_MISC = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_CLEAR = common dso_local global i64 0, align 8
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_IN_EN = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_IN_EN = common dso_local global i64 0, align 8
@GRCBASE_XMAC1 = common dso_local global i64 0, align 8
@GRCBASE_XMAC0 = common dso_local global i64 0, align 8
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i64 0, align 8
@XMAC_CTRL_REG_SOFT_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_link_reset(%struct.link_params* %0, %struct.link_vars* %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %13, align 8
  store %struct.bnx2x* %14, %struct.bnx2x** %7, align 8
  %15 = load %struct.link_params*, %struct.link_params** %4, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @NETIF_MSG_LINK, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DP(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %22 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.link_params*, %struct.link_params** %4, align 8
  %24 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %25 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bnx2x_update_mng(%struct.link_params* %23, i64 %26)
  %28 = load i32, i32* @SHMEM_EEE_LP_ADV_STATUS_MASK, align 4
  %29 = load i32, i32* @SHMEM_EEE_ACTIVE_BIT, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %33 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.link_params*, %struct.link_params** %4, align 8
  %37 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %38 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bnx2x_update_mng_eee(%struct.link_params* %36, i32 %39)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %42 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %48 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %41, i64 %46, i32 %53)
  %55 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %56 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %57, 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = call i32 @REG_WR(%struct.bnx2x* %55, i64 %60, i32 1)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %63 = call i32 @CHIP_IS_E3(%struct.bnx2x* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %3
  %66 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %67 = load i64, i64* @NIG_REG_BMAC0_OUT_EN, align 8
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = call i32 @REG_WR(%struct.bnx2x* %66, i64 %71, i32 0)
  %73 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %74 = load i64, i64* @NIG_REG_EGRESS_EMAC0_OUT_EN, align 8
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  %79 = call i32 @REG_WR(%struct.bnx2x* %73, i64 %78, i32 0)
  br label %80

80:                                               ; preds = %65, %3
  %81 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %82 = call i32 @CHIP_IS_E3(%struct.bnx2x* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %86 = load %struct.link_params*, %struct.link_params** %4, align 8
  %87 = getelementptr inbounds %struct.link_params, %struct.link_params* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @bnx2x_set_bmac_rx(%struct.bnx2x* %85, i32 %88, i32 %89, i32 0)
  br label %96

91:                                               ; preds = %80
  %92 = load %struct.link_params*, %struct.link_params** %4, align 8
  %93 = call i32 @bnx2x_set_xmac_rxtx(%struct.link_params* %92, i32 0)
  %94 = load %struct.link_params*, %struct.link_params** %4, align 8
  %95 = call i32 @bnx2x_set_umac_rxtx(%struct.link_params* %94, i32 0)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %98 = call i32 @CHIP_IS_E3(%struct.bnx2x* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %102 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = call i32 @REG_WR(%struct.bnx2x* %101, i64 %106, i32 0)
  br label %108

108:                                              ; preds = %100, %96
  %109 = call i32 @usleep_range(i32 10000, i32 20000)
  %110 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %111 = load %struct.link_params*, %struct.link_params** %4, align 8
  %112 = call i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x* %110, %struct.link_params* %111)
  %113 = load %struct.link_params*, %struct.link_params** %4, align 8
  %114 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %115 = load i32, i32* @LED_MODE_OFF, align 4
  %116 = call i32 @bnx2x_set_led(%struct.link_params* %113, %struct.link_vars* %114, i32 %115, i32 0)
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %180

119:                                              ; preds = %108
  %120 = load i32, i32* @EXT_PHY1, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %176, %119
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.link_params*, %struct.link_params** %4, align 8
  %124 = getelementptr inbounds %struct.link_params, %struct.link_params* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %179

127:                                              ; preds = %121
  %128 = load %struct.link_params*, %struct.link_params** %4, align 8
  %129 = getelementptr inbounds %struct.link_params, %struct.link_params* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %134, align 8
  %136 = icmp ne i32 (%struct.TYPE_4__*, %struct.link_params*)* %135, null
  br i1 %136, label %137, label %162

137:                                              ; preds = %127
  %138 = load %struct.link_params*, %struct.link_params** %4, align 8
  %139 = load %struct.link_params*, %struct.link_params** %4, align 8
  %140 = getelementptr inbounds %struct.link_params, %struct.link_params* %139, i32 0, i32 2
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %138, %struct.TYPE_4__* %144)
  %146 = load %struct.link_params*, %struct.link_params** %4, align 8
  %147 = getelementptr inbounds %struct.link_params, %struct.link_params* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %152, align 8
  %154 = load %struct.link_params*, %struct.link_params** %4, align 8
  %155 = getelementptr inbounds %struct.link_params, %struct.link_params* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = load %struct.link_params*, %struct.link_params** %4, align 8
  %161 = call i32 %153(%struct.TYPE_4__* %159, %struct.link_params* %160)
  br label %162

162:                                              ; preds = %137, %127
  %163 = load %struct.link_params*, %struct.link_params** %4, align 8
  %164 = getelementptr inbounds %struct.link_params, %struct.link_params* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FLAGS_REARM_LATCH_SIGNAL, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  store i32 1, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %121

179:                                              ; preds = %121
  br label %180

180:                                              ; preds = %179, %108
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @bnx2x_rearm_latch_signal(%struct.bnx2x* %184, i32 %185, i32 0)
  %187 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %188 = load i64, i64* @NIG_REG_LATCH_BC_0, align 8
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 %189, 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %188, %191
  %193 = load i32, i32* @NIG_LATCH_BC_ENABLE_MI_INT, align 4
  %194 = shl i32 1, %193
  %195 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %187, i64 %192, i32 %194)
  br label %196

196:                                              ; preds = %183, %180
  %197 = load %struct.link_params*, %struct.link_params** %4, align 8
  %198 = getelementptr inbounds %struct.link_params, %struct.link_params* %197, i32 0, i32 2
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = load i64, i64* @INT_PHY, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %202, align 8
  %204 = icmp ne i32 (%struct.TYPE_4__*, %struct.link_params*)* %203, null
  br i1 %204, label %205, label %220

205:                                              ; preds = %196
  %206 = load %struct.link_params*, %struct.link_params** %4, align 8
  %207 = getelementptr inbounds %struct.link_params, %struct.link_params* %206, i32 0, i32 2
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load i64, i64* @INT_PHY, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32 (%struct.TYPE_4__*, %struct.link_params*)*, i32 (%struct.TYPE_4__*, %struct.link_params*)** %211, align 8
  %213 = load %struct.link_params*, %struct.link_params** %4, align 8
  %214 = getelementptr inbounds %struct.link_params, %struct.link_params* %213, i32 0, i32 2
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i64, i64* @INT_PHY, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %216
  %218 = load %struct.link_params*, %struct.link_params** %4, align 8
  %219 = call i32 %212(%struct.TYPE_4__* %217, %struct.link_params* %218)
  br label %220

220:                                              ; preds = %205, %196
  %221 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %222 = call i32 @CHIP_IS_E3(%struct.bnx2x* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %247, label %224

224:                                              ; preds = %220
  %225 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %226 = load i64, i64* @GRCBASE_MISC, align 8
  %227 = load i64, i64* @MISC_REGISTERS_RESET_REG_2_CLEAR, align 8
  %228 = add nsw i64 %226, %227
  %229 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %230 = load i32, i32* %9, align 4
  %231 = shl i32 %229, %230
  %232 = call i32 @REG_WR(%struct.bnx2x* %225, i64 %228, i32 %231)
  %233 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %234 = load i64, i64* @NIG_REG_BMAC0_IN_EN, align 8
  %235 = load i32, i32* %9, align 4
  %236 = mul nsw i32 %235, 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %234, %237
  %239 = call i32 @REG_WR(%struct.bnx2x* %233, i64 %238, i32 0)
  %240 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %241 = load i64, i64* @NIG_REG_EMAC0_IN_EN, align 8
  %242 = load i32, i32* %9, align 4
  %243 = mul nsw i32 %242, 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %241, %244
  %246 = call i32 @REG_WR(%struct.bnx2x* %240, i64 %245, i32 0)
  br label %274

247:                                              ; preds = %220
  %248 = load %struct.link_params*, %struct.link_params** %4, align 8
  %249 = getelementptr inbounds %struct.link_params, %struct.link_params* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = load i64, i64* @GRCBASE_XMAC1, align 8
  br label %256

254:                                              ; preds = %247
  %255 = load i64, i64* @GRCBASE_XMAC0, align 8
  br label %256

256:                                              ; preds = %254, %252
  %257 = phi i64 [ %253, %252 ], [ %255, %254 ]
  store i64 %257, i64* %11, align 8
  %258 = load %struct.link_params*, %struct.link_params** %4, align 8
  %259 = call i32 @bnx2x_set_xumac_nig(%struct.link_params* %258, i32 0, i32 0)
  %260 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %261 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %262 = call i32 @REG_RD(%struct.bnx2x* %260, i32 %261)
  %263 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %256
  %267 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %268 = load i64, i64* %11, align 8
  %269 = load i64, i64* @XMAC_REG_CTRL, align 8
  %270 = add nsw i64 %268, %269
  %271 = load i32, i32* @XMAC_CTRL_REG_SOFT_RESET, align 4
  %272 = call i32 @REG_WR(%struct.bnx2x* %267, i64 %270, i32 %271)
  br label %273

273:                                              ; preds = %266, %256
  br label %274

274:                                              ; preds = %273, %224
  %275 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %276 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %275, i32 0, i32 2
  store i64 0, i64* %276, align 8
  %277 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %278 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %277, i32 0, i32 1
  store i64 0, i64* %278, align 8
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i64) #1

declare dso_local i32 @bnx2x_update_mng_eee(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_set_bmac_rx(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_set_xmac_rxtx(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_set_umac_rxtx(%struct.link_params*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @bnx2x_set_mdio_emac_per_phy(%struct.bnx2x*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i32) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.TYPE_4__*) #1

declare dso_local i32 @bnx2x_rearm_latch_signal(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_set_xumac_nig(%struct.link_params*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
