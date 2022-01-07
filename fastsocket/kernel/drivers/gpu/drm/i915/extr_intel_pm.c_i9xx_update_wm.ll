; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i9xx_update_wm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_i9xx_update_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_watermark_params = type { i32, i32, i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.drm_device.0*, i32)* }
%struct.drm_device.0 = type opaque
%struct.drm_crtc = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@i945_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@i915_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@i855_wm_info = common dso_local global %struct.intel_watermark_params zeroinitializer, align 4
@latency_ns = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FIFO watermarks - A: %d, B: %d\0A\00", align 1
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN_MASK = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_SELF_EN = common dso_local global i32 0, align 4
@i9xx_update_wm.sr_latency_ns = internal constant i32 6000, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"self-refresh entries: %d\0A\00", align 1
@FW_BLC_SELF_FIFO_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\0A\00", align 1
@FW_BLC = common dso_local global i32 0, align 4
@FW_BLC2 = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"memory self refresh enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"memory self refresh disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i9xx_update_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_update_wm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_watermark_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_crtc*, align 8
  %13 = alloca %struct.drm_crtc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %3, align 8
  store i32 1, i32* %8, align 4
  store %struct.drm_crtc* null, %struct.drm_crtc** %13, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = call i64 @IS_I945GM(%struct.drm_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.intel_watermark_params* @i945_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %36

29:                                               ; preds = %1
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = call i64 @IS_GEN2(%struct.drm_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store %struct.intel_watermark_params* @i915_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %35

34:                                               ; preds = %29
  store %struct.intel_watermark_params* @i855_wm_info, %struct.intel_watermark_params** %4, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_device.0*, i32)*, i32 (%struct.drm_device.0*, i32)** %39, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = bitcast %struct.drm_device* %41 to %struct.drm_device.0*
  %43 = call i32 %40(%struct.drm_device.0* %42, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %44, i32 0)
  store %struct.drm_crtc* %45, %struct.drm_crtc** %12, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %47 = call i64 @intel_crtc_active(%struct.drm_crtc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %36
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 8
  store i32 %55, i32* %14, align 4
  %56 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %57 = call i64 @IS_GEN2(%struct.drm_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 4, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @latency_ns, align 4
  %69 = call i32 @intel_calculate_wm(i32 %64, %struct.intel_watermark_params* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %70, %struct.drm_crtc** %13, align 8
  br label %77

71:                                               ; preds = %36
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %74 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %71, %60
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32 (%struct.drm_device.0*, i32)*, i32 (%struct.drm_device.0*, i32)** %80, align 8
  %82 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %83 = bitcast %struct.drm_device* %82 to %struct.drm_device.0*
  %84 = call i32 %81(%struct.drm_device.0* %83, i32 1)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %86 = call %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device* %85, i32 1)
  store %struct.drm_crtc* %86, %struct.drm_crtc** %12, align 8
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %88 = call i64 @intel_crtc_active(%struct.drm_crtc* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %77
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %92 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 8
  store i32 %96, i32* %15, align 4
  %97 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %98 = call i64 @IS_GEN2(%struct.drm_device* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 4, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %90
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  %103 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @latency_ns, align 4
  %110 = call i32 @intel_calculate_wm(i32 %105, %struct.intel_watermark_params* %106, i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %112 = icmp eq %struct.drm_crtc* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %114, %struct.drm_crtc** %13, align 8
  br label %116

115:                                              ; preds = %101
  store %struct.drm_crtc* null, %struct.drm_crtc** %13, align 8
  br label %116

116:                                              ; preds = %115, %113
  br label %123

117:                                              ; preds = %77
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %120 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %117, %116
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %125)
  store i32 2, i32* %7, align 4
  %127 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %128 = call i64 @IS_I945G(%struct.drm_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %132 = call i64 @IS_I945GM(%struct.drm_device* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %123
  %135 = load i32, i32* @FW_BLC_SELF, align 4
  %136 = load i32, i32* @FW_BLC_SELF_EN_MASK, align 4
  %137 = call i32 @I915_WRITE(i32 %135, i32 %136)
  br label %151

138:                                              ; preds = %130
  %139 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %140 = call i64 @IS_I915GM(%struct.drm_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i32, i32* @INSTPM, align 4
  %144 = load i32, i32* @INSTPM, align 4
  %145 = call i32 @I915_READ(i32 %144)
  %146 = load i32, i32* @INSTPM_SELF_EN, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = call i32 @I915_WRITE(i32 %143, i32 %148)
  br label %150

150:                                              ; preds = %142, %138
  br label %151

151:                                              ; preds = %150, %134
  %152 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %153 = call i64 @HAS_FW_BLC(%struct.drm_device* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %234

155:                                              ; preds = %151
  %156 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %157 = icmp ne %struct.drm_crtc* %156, null
  br i1 %157, label %158, label %234

158:                                              ; preds = %155
  %159 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %160 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %16, align 4
  %163 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %164 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %17, align 4
  %167 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %168 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %18, align 4
  %171 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %172 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 8
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %17, align 4
  %178 = mul nsw i32 %177, 1000
  %179 = load i32, i32* %16, align 4
  %180 = sdiv i32 %178, %179
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %20, align 8
  %182 = load i64, i64* %20, align 8
  %183 = udiv i64 6000, %182
  %184 = add i64 %183, 1000
  %185 = udiv i64 %184, 1000
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %185, %187
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = mul i64 %188, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %195 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @DIV_ROUND_UP(i32 %193, i32 %196)
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %21, align 4
  %199 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load %struct.intel_watermark_params*, %struct.intel_watermark_params** %4, align 8
  %201 = getelementptr inbounds %struct.intel_watermark_params, %struct.intel_watermark_params* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %21, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  br label %208

208:                                              ; preds = %207, %158
  %209 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %210 = call i64 @IS_I945G(%struct.drm_device* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %214 = call i64 @IS_I945GM(%struct.drm_device* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212, %208
  %217 = load i32, i32* @FW_BLC_SELF, align 4
  %218 = load i32, i32* @FW_BLC_SELF_FIFO_MASK, align 4
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, 255
  %221 = or i32 %218, %220
  %222 = call i32 @I915_WRITE(i32 %217, i32 %221)
  br label %233

223:                                              ; preds = %212
  %224 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %225 = call i64 @IS_I915GM(%struct.drm_device* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i32, i32* @FW_BLC_SELF, align 4
  %229 = load i32, i32* %8, align 4
  %230 = and i32 %229, 63
  %231 = call i32 @I915_WRITE(i32 %228, i32 %230)
  br label %232

232:                                              ; preds = %227, %223
  br label %233

233:                                              ; preds = %232, %216
  br label %234

234:                                              ; preds = %233, %155, %151
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %11, align 4
  %241 = and i32 %240, 63
  %242 = shl i32 %241, 16
  %243 = load i32, i32* %10, align 4
  %244 = and i32 %243, 63
  %245 = or i32 %242, %244
  store i32 %245, i32* %5, align 4
  %246 = load i32, i32* %7, align 4
  %247 = and i32 %246, 31
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %5, align 4
  %249 = or i32 %248, 16777216
  %250 = or i32 %249, 256
  store i32 %250, i32* %5, align 4
  %251 = load i32, i32* %6, align 4
  %252 = or i32 %251, 256
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* @FW_BLC, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 @I915_WRITE(i32 %253, i32 %254)
  %256 = load i32, i32* @FW_BLC2, align 4
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @I915_WRITE(i32 %256, i32 %257)
  %259 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %260 = call i64 @HAS_FW_BLC(%struct.drm_device* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %296

262:                                              ; preds = %234
  %263 = load %struct.drm_crtc*, %struct.drm_crtc** %13, align 8
  %264 = icmp ne %struct.drm_crtc* %263, null
  br i1 %264, label %265, label %293

265:                                              ; preds = %262
  %266 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %267 = call i64 @IS_I945G(%struct.drm_device* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %265
  %270 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %271 = call i64 @IS_I945GM(%struct.drm_device* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %269, %265
  %274 = load i32, i32* @FW_BLC_SELF, align 4
  %275 = load i32, i32* @FW_BLC_SELF_EN_MASK, align 4
  %276 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %277 = or i32 %275, %276
  %278 = call i32 @I915_WRITE(i32 %274, i32 %277)
  br label %291

279:                                              ; preds = %269
  %280 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %281 = call i64 @IS_I915GM(%struct.drm_device* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %279
  %284 = load i32, i32* @INSTPM, align 4
  %285 = load i32, i32* @INSTPM, align 4
  %286 = call i32 @I915_READ(i32 %285)
  %287 = load i32, i32* @INSTPM_SELF_EN, align 4
  %288 = or i32 %286, %287
  %289 = call i32 @I915_WRITE(i32 %284, i32 %288)
  br label %290

290:                                              ; preds = %283, %279
  br label %291

291:                                              ; preds = %290, %273
  %292 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %295

293:                                              ; preds = %262
  %294 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %291
  br label %296

296:                                              ; preds = %295, %234
  ret void
}

declare dso_local i64 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local %struct.drm_crtc* @intel_get_crtc_for_plane(%struct.drm_device*, i32) #1

declare dso_local i64 @intel_crtc_active(%struct.drm_crtc*) #1

declare dso_local i32 @intel_calculate_wm(i32, %struct.intel_watermark_params*, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @IS_I945G(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_I915GM(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @HAS_FW_BLC(%struct.drm_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
