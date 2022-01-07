; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_gen6_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_gen6_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }

@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_VOL_EMP_MASK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_400MV_0DB_SNB_B = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_TP1_TO_TP2_48 = common dso_local global i32 0, align 4
@FDI_RX_FDI_DELAY_90 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@snb_b_fdi_train_param = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"FDI_RX_IIR 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"FDI train 1 done.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FDI train 1 fail!\0A\00", align 1
@FDI_LINK_TRAIN_PATTERN_2 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_2_CPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"FDI train 2 done.\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"FDI train 2 fail!\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"FDI train done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @gen6_fdi_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_fdi_link_train(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %3, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %15, align 8
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %4, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %17)
  store %struct.intel_crtc* %18, %struct.intel_crtc** %5, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @FDI_RX_IMR(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @I915_WRITE(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @POSTING_READ(i32 %37)
  %39 = call i32 @udelay(i32 150)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @FDI_TX_CTL(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @I915_READ(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, -3670017
  store i32 %45, i32* %8, align 4
  %46 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = shl i32 %49, 19
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @FDI_LINK_TRAIN_400MV_0DB_SNB_B, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @FDI_TX_ENABLE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @I915_WRITE(i32 %67, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @FDI_RX_MISC(i32 %72)
  %74 = load i32, i32* @FDI_RX_TP1_TO_TP2_48, align 4
  %75 = load i32, i32* @FDI_RX_FDI_DELAY_90, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @I915_WRITE(i32 %73, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @FDI_RX_CTL(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @I915_READ(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %83 = call i64 @HAS_PCH_CPT(%struct.drm_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %1
  %86 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %101

93:                                               ; preds = %1
  %94 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %93, %85
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @FDI_RX_ENABLE, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @I915_WRITE(i32 %102, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @POSTING_READ(i32 %107)
  %109 = call i32 @udelay(i32 150)
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %166, %101
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %111, 4
  br i1 %112, label %113, label %169

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @FDI_TX_CTL(i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @I915_READ(i32 %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @I915_WRITE(i32 %129, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @POSTING_READ(i32 %132)
  %134 = call i32 @udelay(i32 500)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %158, %113
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 5
  br i1 %137, label %138, label %161

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @FDI_RX_IIR(i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @I915_READ(i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %138
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @I915_WRITE(i32 %150, i32 %153)
  %155 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %161

156:                                              ; preds = %138
  %157 = call i32 @udelay(i32 50)
  br label %158

158:                                              ; preds = %156
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %135

161:                                              ; preds = %149, %135
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %169

165:                                              ; preds = %161
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %110

169:                                              ; preds = %164, %110
  %170 = load i32, i32* %9, align 4
  %171 = icmp eq i32 %170, 4
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %169
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @FDI_TX_CTL(i32 %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @I915_READ(i32 %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %8, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %184 = load i32, i32* %8, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %187 = call i64 @IS_GEN6(%struct.drm_device* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %174
  %190 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %8, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* @FDI_LINK_TRAIN_400MV_0DB_SNB_B, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %189, %174
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @I915_WRITE(i32 %198, i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @FDI_RX_CTL(i32 %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @I915_READ(i32 %203)
  store i32 %204, i32* %8, align 4
  %205 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %206 = call i64 @HAS_PCH_CPT(%struct.drm_device* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %197
  %209 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %8, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_CPT, align 4
  %214 = load i32, i32* %8, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %8, align 4
  br label %224

216:                                              ; preds = %197
  %217 = load i32, i32* @FDI_LINK_TRAIN_NONE, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2, align 4
  %222 = load i32, i32* %8, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %8, align 4
  br label %224

224:                                              ; preds = %216, %208
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @I915_WRITE(i32 %225, i32 %226)
  %228 = load i32, i32* %7, align 4
  %229 = call i32 @POSTING_READ(i32 %228)
  %230 = call i32 @udelay(i32 150)
  store i32 0, i32* %9, align 4
  br label %231

231:                                              ; preds = %287, %224
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %232, 4
  br i1 %233, label %234, label %290

234:                                              ; preds = %231
  %235 = load i32, i32* %6, align 4
  %236 = call i32 @FDI_TX_CTL(i32 %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @I915_READ(i32 %237)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %8, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @I915_WRITE(i32 %250, i32 %251)
  %253 = load i32, i32* %7, align 4
  %254 = call i32 @POSTING_READ(i32 %253)
  %255 = call i32 @udelay(i32 500)
  store i32 0, i32* %10, align 4
  br label %256

256:                                              ; preds = %279, %234
  %257 = load i32, i32* %10, align 4
  %258 = icmp slt i32 %257, 5
  br i1 %258, label %259, label %282

259:                                              ; preds = %256
  %260 = load i32, i32* %6, align 4
  %261 = call i32 @FDI_RX_IIR(i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @I915_READ(i32 %262)
  store i32 %263, i32* %8, align 4
  %264 = load i32, i32* %8, align 4
  %265 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %259
  %271 = load i32, i32* %7, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %274 = or i32 %272, %273
  %275 = call i32 @I915_WRITE(i32 %271, i32 %274)
  %276 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %282

277:                                              ; preds = %259
  %278 = call i32 @udelay(i32 50)
  br label %279

279:                                              ; preds = %277
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %256

282:                                              ; preds = %270, %256
  %283 = load i32, i32* %10, align 4
  %284 = icmp slt i32 %283, 5
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  br label %290

286:                                              ; preds = %282
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %231

290:                                              ; preds = %285, %231
  %291 = load i32, i32* %9, align 4
  %292 = icmp eq i32 %291, 4
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %290
  %296 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_RX_MISC(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i32 @FDI_RX_IIR(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
