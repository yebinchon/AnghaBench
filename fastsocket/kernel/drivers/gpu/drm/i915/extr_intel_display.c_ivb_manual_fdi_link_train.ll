; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ivb_manual_fdi_link_train.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_ivb_manual_fdi_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32, i32 }

@FDI_RX_SYMBOL_LOCK = common dso_local global i32 0, align 4
@FDI_RX_BIT_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FDI_RX_IIR before link train 0x%x\0A\00", align 1
@FDI_LINK_TRAIN_AUTO = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_NONE_IVB = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_IVB = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_VOL_EMP_MASK = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_400MV_0DB_SNB_B = common dso_local global i32 0, align 4
@FDI_COMPOSITE_SYNC = common dso_local global i32 0, align 4
@FDI_TX_ENABLE = common dso_local global i32 0, align 4
@FDI_RX_TP1_TO_TP2_48 = common dso_local global i32 0, align 4
@FDI_RX_FDI_DELAY_90 = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_MASK_CPT = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_1_CPT = common dso_local global i32 0, align 4
@FDI_RX_ENABLE = common dso_local global i32 0, align 4
@snb_b_fdi_train_param = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"FDI_RX_IIR 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"FDI train 1 done, level %i.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"FDI train 1 fail!\0A\00", align 1
@FDI_LINK_TRAIN_PATTERN_2_IVB = common dso_local global i32 0, align 4
@FDI_LINK_TRAIN_PATTERN_2_CPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"FDI train 2 done, level %i.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"FDI train 2 fail!\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FDI train done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ivb_manual_fdi_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivb_manual_fdi_link_train(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %16)
  store %struct.intel_crtc* %17, %struct.intel_crtc** %5, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @FDI_RX_IMR(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @I915_READ(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  %38 = call i32 @udelay(i32 150)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @FDI_RX_IIR(i32 %39)
  %41 = call i32 @I915_READ(i32 %40)
  %42 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @FDI_TX_CTL(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @I915_READ(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, -3670017
  store i32 %48, i32* %8, align 4
  %49 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %50 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = shl i32 %52, 19
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @FDI_LINK_TRAIN_AUTO, align 4
  %57 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_IVB, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @FDI_LINK_TRAIN_400MV_0DB_SNB_B, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @FDI_COMPOSITE_SYNC, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @FDI_TX_ENABLE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @I915_WRITE(i32 %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @FDI_RX_MISC(i32 %80)
  %82 = load i32, i32* @FDI_RX_TP1_TO_TP2_48, align 4
  %83 = load i32, i32* @FDI_RX_FDI_DELAY_90, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @I915_WRITE(i32 %81, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @FDI_RX_CTL(i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @I915_READ(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @FDI_LINK_TRAIN_AUTO, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_1_CPT, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @FDI_COMPOSITE_SYNC, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @FDI_RX_ENABLE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @I915_WRITE(i32 %104, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @POSTING_READ(i32 %109)
  %111 = call i32 @udelay(i32 150)
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %162, %1
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %165

115:                                              ; preds = %112
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @FDI_TX_CTL(i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @I915_READ(i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %8, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @I915_WRITE(i32 %131, i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @POSTING_READ(i32 %134)
  %136 = call i32 @udelay(i32 500)
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @FDI_RX_IIR(i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @I915_READ(i32 %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %115
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @I915_READ(i32 %148)
  %150 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %147, %115
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @FDI_RX_BIT_LOCK, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @I915_WRITE(i32 %154, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %159)
  br label %165

161:                                              ; preds = %147
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %112

165:                                              ; preds = %153, %112
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 4
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %165
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @FDI_TX_CTL(i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @I915_READ(i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* @FDI_LINK_TRAIN_NONE_IVB, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_IVB, align 4
  %180 = load i32, i32* %8, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* @FDI_LINK_TRAIN_400MV_0DB_SNB_B, align 4
  %187 = load i32, i32* %8, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @I915_WRITE(i32 %189, i32 %190)
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @FDI_RX_CTL(i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @I915_READ(i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_MASK_CPT, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* @FDI_LINK_TRAIN_PATTERN_2_CPT, align 4
  %201 = load i32, i32* %8, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %8, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @I915_WRITE(i32 %203, i32 %204)
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @POSTING_READ(i32 %206)
  %208 = call i32 @udelay(i32 150)
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %253, %170
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 4
  br i1 %211, label %212, label %256

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @FDI_TX_CTL(i32 %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @I915_READ(i32 %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* @FDI_LINK_TRAIN_VOL_EMP_MASK, align 4
  %218 = xor i32 %217, -1
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32*, i32** @snb_b_fdi_train_param, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @I915_WRITE(i32 %228, i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @POSTING_READ(i32 %231)
  %233 = call i32 @udelay(i32 500)
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @FDI_RX_IIR(i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @I915_READ(i32 %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %212
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @FDI_RX_SYMBOL_LOCK, align 4
  %248 = or i32 %246, %247
  %249 = call i32 @I915_WRITE(i32 %245, i32 %248)
  %250 = load i32, i32* %9, align 4
  %251 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  br label %256

252:                                              ; preds = %212
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %209

256:                                              ; preds = %244, %209
  %257 = load i32, i32* %9, align 4
  %258 = icmp eq i32 %257, 4
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %261

261:                                              ; preds = %259, %256
  %262 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @FDI_RX_IMR(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @FDI_RX_IIR(i32) #1

declare dso_local i32 @FDI_TX_CTL(i32) #1

declare dso_local i32 @FDI_RX_MISC(i32) #1

declare dso_local i32 @FDI_RX_CTL(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
