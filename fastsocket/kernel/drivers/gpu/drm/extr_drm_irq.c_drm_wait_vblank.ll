; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_wait_vblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_wait_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32*, i32, i32* }
%struct.drm_file = type { i32 }
%union.drm_wait_vblank = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DRIVER_HAVE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_DRM_VBLANK_SIGNAL = common dso_local global i32 0, align 4
@_DRM_VBLANK_TYPES_MASK = common dso_local global i32 0, align 4
@_DRM_VBLANK_FLAGS_MASK = common dso_local global i32 0, align 4
@_DRM_VBLANK_HIGH_CRTC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unsupported type value 0x%x, supported mask 0x%x\0A\00", align 1
@_DRM_VBLANK_HIGH_CRTC_SHIFT = common dso_local global i32 0, align 4
@_DRM_VBLANK_SECONDARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to acquire vblank counter, %d\0A\00", align 1
@_DRM_VBLANK_EVENT = common dso_local global i32 0, align 4
@_DRM_VBLANK_NEXTONMISS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"waiting on vblank count %d, crtc %d\0A\00", align 1
@DRM_HZ = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"returning %d to client\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"vblank wait interrupted by signal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_wait_vblank(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_wait_vblank*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %union.drm_wait_vblank*
  store %union.drm_wait_vblank* %16, %union.drm_wait_vblank** %8, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load i32, i32* @DRIVER_HAVE_IRQ, align 4
  %19 = call i64 @drm_core_check_feature(%struct.drm_device* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = call i32 @drm_dev_to_irq(%struct.drm_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %252

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %36 = bitcast %union.drm_wait_vblank* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @_DRM_VBLANK_SIGNAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %252

45:                                               ; preds = %34
  %46 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %47 = bitcast %union.drm_wait_vblank* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %51 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %49, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %60 = bitcast %union.drm_wait_vblank* %59 to %struct.TYPE_3__*
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %64 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %252

71:                                               ; preds = %45
  %72 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %73 = bitcast %union.drm_wait_vblank* %72 to %struct.TYPE_3__*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @_DRM_VBLANK_FLAGS_MASK, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %79 = bitcast %union.drm_wait_vblank* %78 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_MASK, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %71
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @_DRM_VBLANK_HIGH_CRTC_SHIFT, align 4
  %89 = lshr i32 %87, %88
  store i32 %89, i32* %12, align 4
  br label %97

90:                                               ; preds = %71
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @_DRM_VBLANK_SECONDARY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %90, %86
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp uge i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %252

106:                                              ; preds = %97
  %107 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @drm_vblank_get(%struct.drm_device* %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %252

116:                                              ; preds = %106
  %117 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @drm_vblank_count(%struct.drm_device* %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %121 = bitcast %union.drm_wait_vblank* %120 to %struct.TYPE_3__*
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @_DRM_VBLANK_TYPES_MASK, align 4
  %125 = and i32 %123, %124
  switch i32 %125, label %139 [
    i32 128, label %126
    i32 129, label %138
  ]

126:                                              ; preds = %116
  %127 = load i32, i32* %11, align 4
  %128 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %129 = bitcast %union.drm_wait_vblank* %128 to %struct.TYPE_3__*
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, %127
  store i32 %132, i32* %130, align 4
  %133 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %134 = bitcast %union.drm_wait_vblank* %133 to %struct.TYPE_3__*
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, -129
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %116, %126
  br label %142

139:                                              ; preds = %116
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %247

142:                                              ; preds = %138
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @_DRM_VBLANK_EVENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %151 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %152 = call i32 @drm_queue_vblank_event(%struct.drm_device* %148, i32 %149, %union.drm_wait_vblank* %150, %struct.drm_file* %151)
  store i32 %152, i32* %4, align 4
  br label %252

153:                                              ; preds = %142
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @_DRM_VBLANK_NEXTONMISS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32, i32* %11, align 4
  %160 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %161 = bitcast %union.drm_wait_vblank* %160 to %struct.TYPE_3__*
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub i32 %159, %163
  %165 = icmp ule i32 %164, 8388608
  br i1 %165, label %166, label %172

166:                                              ; preds = %158
  %167 = load i32, i32* %11, align 4
  %168 = add i32 %167, 1
  %169 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %170 = bitcast %union.drm_wait_vblank* %169 to %struct.TYPE_3__*
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %158, %153
  %173 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %174 = bitcast %union.drm_wait_vblank* %173 to %struct.TYPE_3__*
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %180 = bitcast %union.drm_wait_vblank* %179 to %struct.TYPE_3__*
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %12, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %191 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @DRM_HZ, align 4
  %198 = mul nsw i32 3, %197
  %199 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @drm_vblank_count(%struct.drm_device* %199, i32 %200)
  %202 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %203 = bitcast %union.drm_wait_vblank* %202 to %struct.TYPE_3__*
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub i32 %201, %205
  %207 = icmp ule i32 %206, 8388608
  br i1 %207, label %214, label %208

208:                                              ; preds = %172
  %209 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %210 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  br label %214

214:                                              ; preds = %208, %172
  %215 = phi i1 [ true, %172 ], [ %213, %208 ]
  %216 = zext i1 %215 to i32
  %217 = call i32 @DRM_WAIT_ON(i32 %189, i32 %196, i32 %198, i32 %216)
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @EINTR, align 4
  %220 = sub nsw i32 0, %219
  %221 = icmp ne i32 %218, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %214
  %223 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @drm_vblank_count_and_time(%struct.drm_device* %223, i32 %224, %struct.timeval* %14)
  %226 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %227 = bitcast %union.drm_wait_vblank* %226 to %struct.TYPE_4__*
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 4
  %229 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %232 = bitcast %union.drm_wait_vblank* %231 to %struct.TYPE_4__*
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  store i32 %230, i32* %233, align 4
  %234 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %237 = bitcast %union.drm_wait_vblank* %236 to %struct.TYPE_4__*
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load %union.drm_wait_vblank*, %union.drm_wait_vblank** %8, align 8
  %240 = bitcast %union.drm_wait_vblank* %239 to %struct.TYPE_4__*
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %242)
  br label %246

244:                                              ; preds = %214
  %245 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %222
  br label %247

247:                                              ; preds = %246, %139
  %248 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @drm_vblank_put(%struct.drm_device* %248, i32 %249)
  %251 = load i32, i32* %9, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %247, %147, %112, %103, %58, %42, %30
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_to_irq(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @drm_vblank_get(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @drm_vblank_count(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_queue_vblank_event(%struct.drm_device*, i32, %union.drm_wait_vblank*, %struct.drm_file*) #1

declare dso_local i32 @DRM_WAIT_ON(i32, i32, i32, i32) #1

declare dso_local i32 @drm_vblank_count_and_time(%struct.drm_device*, i32, %struct.timeval*) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
