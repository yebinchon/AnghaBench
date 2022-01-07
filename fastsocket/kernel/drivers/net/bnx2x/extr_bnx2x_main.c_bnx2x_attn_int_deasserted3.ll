; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bnx2x = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EVEREST_GEN_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@BNX2X_PMF_LINK_ASSERT = common dso_local global i32 0, align 4
@MISC_REG_AEU_GENERAL_ATTN_12 = common dso_local global i64 0, align 8
@func_mf_config = common dso_local global %struct.TYPE_7__* null, align 8
@func_mb = common dso_local global %struct.TYPE_8__* null, align 8
@DRV_STATUS_DCC_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_SET_MF_BW = common dso_local global i32 0, align 4
@DRV_STATUS_DRV_INFO_REQ = common dso_local global i32 0, align 4
@DRV_STATUS_VF_DISABLED = common dso_local global i32 0, align 4
@DRV_STATUS_PMF = common dso_local global i32 0, align 4
@DRV_STATUS_DCBX_NEGOTIATION_RESULTS = common dso_local global i32 0, align 4
@BNX2X_DCBX_STATE_NEG_RECEIVED = common dso_local global i32 0, align 4
@DRV_STATUS_AFEX_EVENT_MASK = common dso_local global i32 0, align 4
@DRV_STATUS_EEE_NEGOTIATION_RESULTS = common dso_local global i32 0, align 4
@PERIODIC_FLAGS_LINK_EVENT = common dso_local global i32 0, align 4
@BNX2X_MC_ASSERT_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"MC assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_10 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_9 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_8 = common dso_local global i64 0, align 8
@MISC_REG_AEU_GENERAL_ATTN_7 = common dso_local global i64 0, align 8
@BNX2X_MCP_ASSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MCP assert!\0A\00", align 1
@MISC_REG_AEU_GENERAL_ATTN_11 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown HW assert! (attn 0x%x)\0A\00", align 1
@EVEREST_LATCHED_ATTN_IN_USE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"LATCHED attention 0x%08x (masked)\0A\00", align 1
@BNX2X_GRC_TIMEOUT = common dso_local global i32 0, align 4
@MISC_REG_GRC_TIMEOUT_ATTN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"GRC time-out 0x%08x\0A\00", align 1
@BNX2X_GRC_RSV = common dso_local global i32 0, align 4
@MISC_REG_GRC_RSV_ATTN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"GRC reserved 0x%08x\0A\00", align 1
@MISC_REG_AEU_CLR_LATCH_SIGNAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted3(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EVEREST_GEN_ATTN_IN_USE_MASK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %209

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BNX2X_PMF_LINK_ASSERT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %169

16:                                               ; preds = %11
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i32 @BP_FUNC(%struct.bnx2x* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @REG_WR(%struct.bnx2x* %19, i64 %24, i32 0)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = call i32 @bnx2x_read_mf_cfg(%struct.bnx2x* %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @func_mf_config, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = call i64 @BP_ABS_FUNC(%struct.bnx2x* %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MF_CFG_RD(%struct.bnx2x* %28, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = call i64 @BP_VN(%struct.bnx2x* %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @func_mb, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %44)
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SHMEM_RD(%struct.bnx2x* %42, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %16
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DRV_STATUS_DCC_EVENT_MASK, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @bnx2x_dcc_event(%struct.bnx2x* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %16
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @DRV_STATUS_SET_MF_BW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %67 = call i32 @bnx2x_set_mf_bw(%struct.bnx2x* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DRV_STATUS_DRV_INFO_REQ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %75 = call i32 @bnx2x_handle_drv_info_req(%struct.bnx2x* %74)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @DRV_STATUS_VF_DISABLED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call i32 @bnx2x_vf_handle_flr_event(%struct.bnx2x* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @DRV_STATUS_PMF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = call i32 @bnx2x_pmf_update(%struct.bnx2x* %96)
  br label %98

98:                                               ; preds = %95, %90, %84
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @DRV_STATUS_DCBX_NEGOTIATION_RESULTS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %116 = load i32, i32* @BNX2X_DCBX_STATE_NEG_RECEIVED, align 4
  %117 = call i32 @bnx2x_dcbx_set_params(%struct.bnx2x* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109, %104, %98
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @DRV_STATUS_AFEX_EVENT_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @DRV_STATUS_AFEX_EVENT_MASK, align 4
  %127 = and i32 %125, %126
  %128 = call i32 @bnx2x_handle_afex_cmd(%struct.bnx2x* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @DRV_STATUS_EEE_NEGOTIATION_RESULTS, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %136 = call i32 @bnx2x_handle_eee_event(%struct.bnx2x* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %139 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PERIODIC_FLAGS_LINK_EVENT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %137
  %146 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %147 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %146)
  %148 = load i32, i32* @PERIODIC_FLAGS_LINK_EVENT, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %151 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %156 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %155)
  %157 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %158 = call i64 @IS_MF(%struct.bnx2x* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %145
  %161 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %162 = call i32 @bnx2x_link_sync_notify(%struct.bnx2x* %161)
  br label %163

163:                                              ; preds = %160, %145
  %164 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %165 = call i32 @bnx2x_link_report(%struct.bnx2x* %164)
  br label %166

166:                                              ; preds = %163, %137
  %167 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %168 = call i32 @bnx2x__link_status_update(%struct.bnx2x* %167)
  br label %208

169:                                              ; preds = %11
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @BNX2X_MC_ASSERT_BITS, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %169
  %175 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %177 = call i32 @bnx2x_mc_assert(%struct.bnx2x* %176)
  %178 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %179 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_10, align 8
  %180 = call i32 @REG_WR(%struct.bnx2x* %178, i64 %179, i32 0)
  %181 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %182 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_9, align 8
  %183 = call i32 @REG_WR(%struct.bnx2x* %181, i64 %182, i32 0)
  %184 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %185 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_8, align 8
  %186 = call i32 @REG_WR(%struct.bnx2x* %184, i64 %185, i32 0)
  %187 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %188 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_7, align 8
  %189 = call i32 @REG_WR(%struct.bnx2x* %187, i64 %188, i32 0)
  %190 = call i32 (...) @bnx2x_panic()
  br label %207

191:                                              ; preds = %169
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @BNX2X_MCP_ASSERT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = load i64, i64* @MISC_REG_AEU_GENERAL_ATTN_11, align 8
  %200 = call i32 @REG_WR(%struct.bnx2x* %198, i64 %199, i32 0)
  %201 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %202 = call i32 @bnx2x_fw_dump(%struct.bnx2x* %201)
  br label %206

203:                                              ; preds = %191
  %204 = load i32, i32* %4, align 4
  %205 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %196
  br label %207

207:                                              ; preds = %206, %174
  br label %208

208:                                              ; preds = %207, %166
  br label %209

209:                                              ; preds = %208, %2
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @EVEREST_LATCHED_ATTN_IN_USE_MASK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %256

214:                                              ; preds = %209
  %215 = load i32, i32* %4, align 4
  %216 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* @BNX2X_GRC_TIMEOUT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %214
  %222 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %223 = call i64 @CHIP_IS_E1(%struct.bnx2x* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %230

226:                                              ; preds = %221
  %227 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %228 = load i32, i32* @MISC_REG_GRC_TIMEOUT_ATTN, align 4
  %229 = call i32 @REG_RD(%struct.bnx2x* %227, i32 %228)
  br label %230

230:                                              ; preds = %226, %225
  %231 = phi i32 [ 0, %225 ], [ %229, %226 ]
  store i32 %231, i32* %5, align 4
  %232 = load i32, i32* %5, align 4
  %233 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %230, %214
  %235 = load i32, i32* %4, align 4
  %236 = load i32, i32* @BNX2X_GRC_RSV, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %234
  %240 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %241 = call i64 @CHIP_IS_E1(%struct.bnx2x* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %248

244:                                              ; preds = %239
  %245 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %246 = load i32, i32* @MISC_REG_GRC_RSV_ATTN, align 4
  %247 = call i32 @REG_RD(%struct.bnx2x* %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %243
  %249 = phi i32 [ 0, %243 ], [ %247, %244 ]
  store i32 %249, i32* %5, align 4
  %250 = load i32, i32* %5, align 4
  %251 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %248, %234
  %253 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %254 = load i64, i64* @MISC_REG_AEU_CLR_LATCH_SIGNAL, align 8
  %255 = call i32 @REG_WR(%struct.bnx2x* %253, i64 %254, i32 2047)
  br label %256

256:                                              ; preds = %252, %209
  ret void
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_read_mf_cfg(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcc_event(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_set_mf_bw(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_handle_drv_info_req(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf_handle_flr_event(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_pmf_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_set_params(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_handle_afex_cmd(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_handle_eee_event(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_sync_notify(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x__link_status_update(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_mc_assert(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local i32 @bnx2x_fw_dump(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
