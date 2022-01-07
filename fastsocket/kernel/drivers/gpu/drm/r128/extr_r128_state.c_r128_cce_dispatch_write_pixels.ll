; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_pixels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@R128_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_P = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @r128_cce_dispatch_write_pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_write_pixels(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @RING_LOCALS, align 4
  %21 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 4096
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %2
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %301

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i32 %42, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %301

50:                                               ; preds = %33
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32* @kmalloc(i32 %51, i32 %52)
  store i32* %53, i32** %9, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %301

61:                                               ; preds = %50
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @DRM_COPY_FROM_USER(i32* %62, i64 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @kfree(i32* %72)
  %74 = load i32, i32* @EFAULT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %301

76:                                               ; preds = %61
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @DRM_COPY_FROM_USER(i32* %77, i64 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @kfree(i32* %87)
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %301

91:                                               ; preds = %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32* @kmalloc(i32 %98, i32 %99)
  store i32* %100, i32** %10, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %91
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %301

110:                                              ; preds = %91
  %111 = load i32*, i32** %10, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i64 @DRM_COPY_FROM_USER(i32* %111, i64 %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @kfree(i32* %123)
  %125 = load i32, i32* @EFAULT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %301

127:                                              ; preds = %110
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %238

132:                                              ; preds = %127
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call i32* @kmalloc(i32 %139, i32 %140)
  store i32* %141, i32** %11, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %132
  %145 = load i32*, i32** %8, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @kfree(i32* %147)
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @kfree(i32* %149)
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %301

153:                                              ; preds = %132
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i64 @DRM_COPY_FROM_USER(i32* %154, i64 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @kfree(i32* %162)
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @kfree(i32* %164)
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @kfree(i32* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @kfree(i32* %168)
  %170 = load i32, i32* @EFAULT, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %301

172:                                              ; preds = %153
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %232, %172
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %235

177:                                              ; preds = %173
  %178 = load i32*, i32** %11, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %231

184:                                              ; preds = %177
  %185 = call i32 @BEGIN_RING(i32 6)
  %186 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %187 = call i32 @CCE_PACKET3(i32 %186, i32 4)
  %188 = call i32 @OUT_RING(i32 %187)
  %189 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %190 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = shl i32 %194, 8
  %196 = or i32 %191, %195
  %197 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @R128_ROP3_P, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @OUT_RING(i32 %204)
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @OUT_RING(i32 %208)
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @OUT_RING(i32 %214)
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = shl i32 %220, 16
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %221, %226
  %228 = call i32 @OUT_RING(i32 %227)
  %229 = call i32 @OUT_RING(i32 65537)
  %230 = call i32 (...) @ADVANCE_RING()
  br label %231

231:                                              ; preds = %184, %177
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %173

235:                                              ; preds = %173
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @kfree(i32* %236)
  br label %294

238:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  br label %239

239:                                              ; preds = %290, %238
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %7, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %293

243:                                              ; preds = %239
  %244 = call i32 @BEGIN_RING(i32 6)
  %245 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %246 = call i32 @CCE_PACKET3(i32 %245, i32 4)
  %247 = call i32 @OUT_RING(i32 %246)
  %248 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %249 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %250 = or i32 %248, %249
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 8
  %255 = or i32 %250, %254
  %256 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @R128_ROP3_P, align 4
  %259 = or i32 %257, %258
  %260 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %261 = or i32 %259, %260
  %262 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %263 = or i32 %261, %262
  %264 = call i32 @OUT_RING(i32 %263)
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @OUT_RING(i32 %267)
  %269 = load i32*, i32** %10, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @OUT_RING(i32 %273)
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %12, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 %279, 16
  %281 = load i32*, i32** %9, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %280, %285
  %287 = call i32 @OUT_RING(i32 %286)
  %288 = call i32 @OUT_RING(i32 65537)
  %289 = call i32 (...) @ADVANCE_RING()
  br label %290

290:                                              ; preds = %243
  %291 = load i32, i32* %12, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %12, align 4
  br label %239

293:                                              ; preds = %239
  br label %294

294:                                              ; preds = %293, %235
  %295 = load i32*, i32** %8, align 8
  %296 = call i32 @kfree(i32* %295)
  %297 = load i32*, i32** %9, align 8
  %298 = call i32 @kfree(i32* %297)
  %299 = load i32*, i32** %10, align 8
  %300 = call i32 @kfree(i32* %299)
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %294, %161, %144, %118, %103, %84, %69, %56, %47, %30
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @DRM_COPY_FROM_USER(i32*, i64, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
