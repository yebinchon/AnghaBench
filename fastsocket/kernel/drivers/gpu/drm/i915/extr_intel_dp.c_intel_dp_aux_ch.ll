; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_aux_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { i32 }

@DPA_AUX_CH_CTL = common dso_local global i32 0, align 4
@DPA_AUX_CH_DATA1 = common dso_local global i32 0, align 4
@PCH_DPB_AUX_CH_CTL = common dso_local global i32 0, align 4
@PCH_DPB_AUX_CH_DATA1 = common dso_local global i32 0, align 4
@PCH_DPC_AUX_CH_CTL = common dso_local global i32 0, align 4
@PCH_DPC_AUX_CH_DATA1 = common dso_local global i32 0, align 4
@PCH_DPD_AUX_CH_CTL = common dso_local global i32 0, align 4
@PCH_DPD_AUX_CH_DATA1 = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_SEND_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dp_aux_ch not started status 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_INTERRUPT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_400us = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_DONE = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_TIME_OUT_ERROR = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_RECEIVE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dp_aux_ch not done status 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"dp_aux_ch receive error status 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dp_aux_ch timeout status 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DP_AUX_CH_CTL_MESSAGE_SIZE_MASK = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, i32*, i32, i32*, i32)* @intel_dp_aux_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_aux_ch(%struct.intel_dp* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_dp*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_digital_port*, align 8
  %13 = alloca %struct.drm_device*, align 8
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %29 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %28)
  store %struct.intel_digital_port* %29, %struct.intel_digital_port** %12, align 8
  %30 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %31 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.drm_device*, %struct.drm_device** %33, align 8
  store %struct.drm_device* %34, %struct.drm_device** %13, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %36, align 8
  store %struct.drm_i915_private* %37, %struct.drm_i915_private** %14, align 8
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 16
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %16, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %43 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 5
  br i1 %46, label %47, label %52

47:                                               ; preds = %5
  %48 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %49 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %5
  %53 = phi i1 [ false, %5 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %24, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 0
  %57 = call i32 @pm_qos_update_request(i32* %56, i32 0)
  %58 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %59 = call i64 @IS_HASWELL(%struct.drm_device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %52
  %62 = load %struct.intel_digital_port*, %struct.intel_digital_port** %12, align 8
  %63 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %77 [
    i32 131, label %65
    i32 130, label %68
    i32 129, label %71
    i32 128, label %74
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @DPA_AUX_CH_CTL, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* @DPA_AUX_CH_DATA1, align 4
  store i32 %67, i32* %16, align 4
  br label %79

68:                                               ; preds = %61
  %69 = load i32, i32* @PCH_DPB_AUX_CH_CTL, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* @PCH_DPB_AUX_CH_DATA1, align 4
  store i32 %70, i32* %16, align 4
  br label %79

71:                                               ; preds = %61
  %72 = load i32, i32* @PCH_DPC_AUX_CH_CTL, align 4
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* @PCH_DPC_AUX_CH_DATA1, align 4
  store i32 %73, i32* %16, align 4
  br label %79

74:                                               ; preds = %61
  %75 = load i32, i32* @PCH_DPD_AUX_CH_CTL, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* @PCH_DPD_AUX_CH_DATA1, align 4
  store i32 %76, i32* %16, align 4
  br label %79

77:                                               ; preds = %61
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %74, %71, %68, %65
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %82 = call i32 @intel_dp_check_edp(%struct.intel_dp* %81)
  %83 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %84 = call i64 @is_cpu_edp(%struct.intel_dp* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %80
  %87 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %88 = call i64 @HAS_DDI(%struct.drm_device* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %92 = call i32 @intel_ddi_get_cdclk_freq(%struct.drm_i915_private* %91)
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %21, align 4
  br label %111

94:                                               ; preds = %86
  %95 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %96 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 100, i32* %21, align 4
  br label %110

99:                                               ; preds = %94
  %100 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %101 = call i64 @IS_GEN6(%struct.drm_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %105 = call i64 @IS_GEN7(%struct.drm_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %99
  store i32 200, i32* %21, align 4
  br label %109

108:                                              ; preds = %103
  store i32 225, i32* %21, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %90
  br label %125

112:                                              ; preds = %80
  %113 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %114 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %118 = call i32 @intel_pch_rawclk(%struct.drm_device* %117)
  %119 = call i32 @DIV_ROUND_UP(i32 %118, i32 2)
  store i32 %119, i32* %21, align 4
  br label %124

120:                                              ; preds = %112
  %121 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %122 = call i32 @intel_hrawclk(%struct.drm_device* %121)
  %123 = sdiv i32 %122, 2
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %124, %111
  %126 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  %127 = call i64 @IS_GEN6(%struct.drm_device* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 3, i32* %23, align 4
  br label %131

130:                                              ; preds = %125
  store i32 5, i32* %23, align 4
  br label %131

131:                                              ; preds = %130, %129
  store i32 0, i32* %22, align 4
  br label %132

132:                                              ; preds = %145, %131
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @I915_READ_NOTRACE(i32 %136)
  store i32 %137, i32* %20, align 4
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %148

143:                                              ; preds = %135
  %144 = call i32 @msleep(i32 1)
  br label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %132

148:                                              ; preds = %142, %132
  %149 = load i32, i32* %22, align 4
  %150 = icmp eq i32 %149, 3
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @I915_READ(i32 %152)
  %154 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @EBUSY, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %18, align 4
  br label %307

157:                                              ; preds = %148
  store i32 0, i32* %22, align 4
  br label %158

158:                                              ; preds = %240, %157
  %159 = load i32, i32* %22, align 4
  %160 = icmp slt i32 %159, 5
  br i1 %160, label %161, label %243

161:                                              ; preds = %158
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %179, %161
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sub nsw i32 %174, %175
  %177 = call i32 @pack_aux(i32* %173, i32 %176)
  %178 = call i32 @I915_WRITE(i32 %169, i32 %177)
  br label %179

179:                                              ; preds = %166
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 4
  store i32 %181, i32* %17, align 4
  br label %162

182:                                              ; preds = %162
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* @DP_AUX_CH_CTL_SEND_BUSY, align 4
  %185 = load i32, i32* %24, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @DP_AUX_CH_CTL_INTERRUPT, align 4
  br label %190

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %187
  %191 = phi i32 [ %188, %187 ], [ 0, %189 ]
  %192 = or i32 %184, %191
  %193 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_400us, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = or i32 %194, %197
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* @DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT, align 4
  %201 = shl i32 %199, %200
  %202 = or i32 %198, %201
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* @DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = or i32 %202, %205
  %207 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @I915_WRITE(i32 %183, i32 %212)
  %214 = load %struct.intel_dp*, %struct.intel_dp** %6, align 8
  %215 = load i32, i32* %24, align 4
  %216 = call i32 @intel_dp_aux_wait_done(%struct.intel_dp* %214, i32 %215)
  store i32 %216, i32* %20, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %220 = or i32 %218, %219
  %221 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %222 = or i32 %220, %221
  %223 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %224 = or i32 %222, %223
  %225 = call i32 @I915_WRITE(i32 %217, i32 %224)
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %228 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %229 = or i32 %227, %228
  %230 = and i32 %226, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %190
  br label %240

233:                                              ; preds = %190
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %243

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %239, %232
  %241 = load i32, i32* %22, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %22, align 4
  br label %158

243:                                              ; preds = %238, %158
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* @DP_AUX_CH_CTL_DONE, align 4
  %246 = and i32 %244, %245
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load i32, i32* %20, align 4
  %250 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @EBUSY, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %18, align 4
  br label %307

253:                                              ; preds = %243
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* @DP_AUX_CH_CTL_RECEIVE_ERROR, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load i32, i32* %20, align 4
  %260 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %259)
  %261 = load i32, i32* @EIO, align 4
  %262 = sub nsw i32 0, %261
  store i32 %262, i32* %18, align 4
  br label %307

263:                                              ; preds = %253
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* @DP_AUX_CH_CTL_TIME_OUT_ERROR, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load i32, i32* %20, align 4
  %270 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* @ETIMEDOUT, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %18, align 4
  br label %307

273:                                              ; preds = %263
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, align 4
  %276 = and i32 %274, %275
  %277 = load i32, i32* @DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT, align 4
  %278 = ashr i32 %276, %277
  store i32 %278, i32* %19, align 4
  %279 = load i32, i32* %19, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %273
  %283 = load i32, i32* %10, align 4
  store i32 %283, i32* %19, align 4
  br label %284

284:                                              ; preds = %282, %273
  store i32 0, i32* %17, align 4
  br label %285

285:                                              ; preds = %302, %284
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %19, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %285
  %290 = load i32, i32* %16, align 4
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %290, %291
  %293 = call i32 @I915_READ(i32 %292)
  %294 = load i32*, i32** %9, align 8
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* %17, align 4
  %300 = sub nsw i32 %298, %299
  %301 = call i32 @unpack_aux(i32 %293, i32* %297, i32 %300)
  br label %302

302:                                              ; preds = %289
  %303 = load i32, i32* %17, align 4
  %304 = add nsw i32 %303, 4
  store i32 %304, i32* %17, align 4
  br label %285

305:                                              ; preds = %285
  %306 = load i32, i32* %19, align 4
  store i32 %306, i32* %18, align 4
  br label %307

307:                                              ; preds = %305, %268, %258, %248, %151
  %308 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %309 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %308, i32 0, i32 0
  %310 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %311 = call i32 @pm_qos_update_request(i32* %309, i32 %310)
  %312 = load i32, i32* %18, align 4
  ret i32 %312
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @pm_qos_update_request(i32*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @intel_dp_check_edp(%struct.intel_dp*) #1

declare dso_local i64 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i32 @intel_ddi_get_cdclk_freq(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @intel_pch_rawclk(%struct.drm_device*) #1

declare dso_local i32 @intel_hrawclk(%struct.drm_device*) #1

declare dso_local i32 @I915_READ_NOTRACE(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @pack_aux(i32*, i32) #1

declare dso_local i32 @intel_dp_aux_wait_done(%struct.intel_dp*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @unpack_aux(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
