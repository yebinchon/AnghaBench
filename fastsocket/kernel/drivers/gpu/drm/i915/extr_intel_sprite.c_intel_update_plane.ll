; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_update_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sprite.c_intel_update_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_plane = type { i32, i32, i32 (%struct.drm_plane.0*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*, i32, i32, i32, i32, i32, i32, i32, i32)*, %struct.drm_i915_gem_object.2*, i32 }
%struct.drm_plane.0 = type opaque
%struct.drm_framebuffer.1 = type opaque
%struct.drm_i915_gem_object = type opaque
%struct.drm_i915_gem_object.2 = type { i32 }
%struct.intel_framebuffer = type { %struct.drm_i915_gem_object.2* }

@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32)* @intel_update_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_update_plane(%struct.drm_plane* %0, %struct.drm_crtc* %1, %struct.drm_framebuffer* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_plane*, align 8
  %14 = alloca %struct.drm_crtc*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.drm_device*, align 8
  %25 = alloca %struct.drm_i915_private*, align 8
  %26 = alloca %struct.intel_crtc*, align 8
  %27 = alloca %struct.intel_plane*, align 8
  %28 = alloca %struct.intel_framebuffer*, align 8
  %29 = alloca %struct.drm_i915_gem_object.2*, align 8
  %30 = alloca %struct.drm_i915_gem_object.2*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %13, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %14, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %39 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load %struct.drm_device*, %struct.drm_device** %40, align 8
  store %struct.drm_device* %41, %struct.drm_device** %24, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 1
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %43, align 8
  store %struct.drm_i915_private* %44, %struct.drm_i915_private** %25, align 8
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %46 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %45)
  store %struct.intel_crtc* %46, %struct.intel_crtc** %26, align 8
  %47 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %48 = call %struct.intel_plane* @to_intel_plane(%struct.drm_plane* %47)
  store %struct.intel_plane* %48, %struct.intel_plane** %27, align 8
  %49 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %50 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %31, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %25, align 8
  %53 = load i32, i32* %31, align 4
  %54 = call i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private* %52, i32 %53)
  store i32 %54, i32* %32, align 4
  store i32 0, i32* %33, align 4
  %55 = load i32, i32* %20, align 4
  %56 = ashr i32 %55, 16
  store i32 %56, i32* %34, align 4
  %57 = load i32, i32* %21, align 4
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %35, align 4
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %60 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %36, align 4
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %67 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %68 = call %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer* %67)
  store %struct.intel_framebuffer* %68, %struct.intel_framebuffer** %28, align 8
  %69 = load %struct.intel_framebuffer*, %struct.intel_framebuffer** %28, align 8
  %70 = getelementptr inbounds %struct.intel_framebuffer, %struct.intel_framebuffer* %69, i32 0, i32 0
  %71 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %70, align 8
  store %struct.drm_i915_gem_object.2* %71, %struct.drm_i915_gem_object.2** %29, align 8
  %72 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %73 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %72, i32 0, i32 3
  %74 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %73, align 8
  store %struct.drm_i915_gem_object.2* %74, %struct.drm_i915_gem_object.2** %30, align 8
  %75 = load i32, i32* %22, align 4
  %76 = ashr i32 %75, 16
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %23, align 4
  %78 = ashr i32 %77, 16
  store i32 %78, i32* %23, align 4
  %79 = load i32, i32* %32, align 4
  %80 = call i32 @PIPECONF(i32 %79)
  %81 = call i32 @I915_READ(i32 %80)
  %82 = load i32, i32* @PIPECONF_ENABLE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %11
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %300

88:                                               ; preds = %11
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %36, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %37, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %300

99:                                               ; preds = %92
  %100 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %101 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.intel_crtc*, %struct.intel_crtc** %26, align 8
  %104 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %300

110:                                              ; preds = %99
  %111 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %29, align 8
  %112 = getelementptr inbounds %struct.drm_i915_gem_object.2, %struct.drm_i915_gem_object.2* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %115 [
    i32 129, label %114
    i32 128, label %114
  ]

114:                                              ; preds = %110, %110
  br label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %12, align 4
  br label %300

118:                                              ; preds = %114
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %18, align 4
  %124 = add i32 %122, %123
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %18, align 4
  %129 = add i32 %128, %127
  store i32 %129, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %126, %121, %118
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %18, align 4
  %133 = add i32 %131, %132
  %134 = icmp ule i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %298

136:                                              ; preds = %130
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %18, align 4
  %139 = add i32 %137, %138
  %140 = load i32, i32* %36, align 4
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32, i32* %36, align 4
  %144 = load i32, i32* %16, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %142, %136
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %19, align 4
  %152 = add i32 %150, %151
  %153 = icmp ugt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %19, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %154, %149, %146
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add i32 %159, %160
  %162 = icmp ule i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %298

164:                                              ; preds = %158
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %19, align 4
  %167 = add i32 %165, %166
  %168 = load i32, i32* %37, align 4
  %169 = icmp ugt i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load i32, i32* %37, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %19, align 4
  br label %174

174:                                              ; preds = %170, %164
  %175 = load i32, i32* %18, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177, %174
  br label %298

181:                                              ; preds = %177
  %182 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %183 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %22, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %23, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190, %186
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %12, align 4
  br label %300

197:                                              ; preds = %190, %181
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %23, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %19, align 4
  %203 = mul i32 %201, %202
  %204 = udiv i32 %200, %203
  %205 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %206 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ugt i32 %204, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %197
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %12, align 4
  br label %300

212:                                              ; preds = %197
  %213 = load i32, i32* %16, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i32, i32* %17, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %36, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %218
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %37, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* %38, align 4
  br label %227

227:                                              ; preds = %226, %222, %218, %215, %212
  %228 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %229 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %228, i32 0, i32 0
  %230 = call i32 @mutex_lock(i32* %229)
  %231 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %232 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %29, align 8
  %233 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %231, %struct.drm_i915_gem_object.2* %232, i32* null)
  store i32 %233, i32* %33, align 4
  %234 = load i32, i32* %33, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %227
  br label %294

237:                                              ; preds = %227
  %238 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %29, align 8
  %239 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %240 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %239, i32 0, i32 3
  store %struct.drm_i915_gem_object.2* %238, %struct.drm_i915_gem_object.2** %240, align 8
  %241 = load i32, i32* %38, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %237
  %244 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %245 = call i32 @intel_enable_primary(%struct.drm_crtc* %244)
  br label %246

246:                                              ; preds = %243, %237
  %247 = load %struct.intel_plane*, %struct.intel_plane** %27, align 8
  %248 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %247, i32 0, i32 2
  %249 = load i32 (%struct.drm_plane.0*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.drm_plane.0*, %struct.drm_framebuffer.1*, %struct.drm_i915_gem_object*, i32, i32, i32, i32, i32, i32, i32, i32)** %248, align 8
  %250 = load %struct.drm_plane*, %struct.drm_plane** %13, align 8
  %251 = bitcast %struct.drm_plane* %250 to %struct.drm_plane.0*
  %252 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %253 = bitcast %struct.drm_framebuffer* %252 to %struct.drm_framebuffer.1*
  %254 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %29, align 8
  %255 = bitcast %struct.drm_i915_gem_object.2* %254 to %struct.drm_i915_gem_object*
  %256 = load i32, i32* %16, align 4
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %19, align 4
  %260 = load i32, i32* %34, align 4
  %261 = load i32, i32* %35, align 4
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* %23, align 4
  %264 = call i32 %249(%struct.drm_plane.0* %251, %struct.drm_framebuffer.1* %253, %struct.drm_i915_gem_object* %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263)
  %265 = load i32, i32* %38, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %246
  %268 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %269 = call i32 @intel_disable_primary(%struct.drm_crtc* %268)
  br label %270

270:                                              ; preds = %267, %246
  %271 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %30, align 8
  %272 = icmp ne %struct.drm_i915_gem_object.2* %271, null
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %30, align 8
  %275 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %29, align 8
  %276 = icmp ne %struct.drm_i915_gem_object.2* %274, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %273
  %278 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %279 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %278, i32 0, i32 0
  %280 = call i32 @mutex_unlock(i32* %279)
  %281 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %282 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  %283 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %282)
  %284 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @intel_wait_for_vblank(%struct.drm_device* %281, i32 %285)
  %287 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %288 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %287, i32 0, i32 0
  %289 = call i32 @mutex_lock(i32* %288)
  br label %290

290:                                              ; preds = %277, %273
  %291 = load %struct.drm_i915_gem_object.2*, %struct.drm_i915_gem_object.2** %30, align 8
  %292 = call i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object.2* %291)
  br label %293

293:                                              ; preds = %290, %270
  br label %294

294:                                              ; preds = %293, %236
  %295 = load %struct.drm_device*, %struct.drm_device** %24, align 8
  %296 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %295, i32 0, i32 0
  %297 = call i32 @mutex_unlock(i32* %296)
  br label %298

298:                                              ; preds = %294, %180, %163, %135
  %299 = load i32, i32* %33, align 4
  store i32 %299, i32* %12, align 4
  br label %300

300:                                              ; preds = %298, %209, %194, %115, %107, %96, %85
  %301 = load i32, i32* %12, align 4
  ret i32 %301
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.intel_plane* @to_intel_plane(%struct.drm_plane*) #1

declare dso_local i32 @intel_pipe_to_cpu_transcoder(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.intel_framebuffer* @to_intel_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, %struct.drm_i915_gem_object.2*, i32*) #1

declare dso_local i32 @intel_enable_primary(%struct.drm_crtc*) #1

declare dso_local i32 @intel_disable_primary(%struct.drm_crtc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_unpin_fb_obj(%struct.drm_i915_gem_object.2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
