; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_page_flip_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_page_flip_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_crtc_page_flip = type { i32, i64, i32, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_crtc = type { i32, i32, i32, %struct.drm_framebuffer*, %struct.TYPE_10__*, i64, %struct.TYPE_6__ }
%struct.drm_framebuffer = type { i32, i32 }
%struct.TYPE_10__ = type { i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* }
%struct.drm_pending_vblank_event = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { void (%struct.drm_pending_event*)*, %struct.drm_file*, %struct.TYPE_7__* }
%struct.drm_pending_event = type opaque
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_FLAGS = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Invalid fb size %ux%u for CRTC viewport %ux%u+%d+%d%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" (inverted)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOSPC = common dso_local global i32 0, align 4
@DRM_MODE_PAGE_FLIP_EVENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_EVENT_FLIP_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_page_flip_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_crtc_page_flip*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.drm_pending_vblank_event*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_mode_crtc_page_flip*
  store %struct.drm_mode_crtc_page_flip* %19, %struct.drm_mode_crtc_page_flip** %8, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_pending_vblank_event* null, %struct.drm_pending_vblank_event** %13, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %17, align 4
  %22 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %23 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DRM_MODE_PAGE_FLIP_FLAGS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %3
  %30 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %31 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %301

37:                                               ; preds = %29
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %40 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %43 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %38, i32 %41, i32 %42)
  store %struct.drm_mode_object* %43, %struct.drm_mode_object** %9, align 8
  %44 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %45 = icmp ne %struct.drm_mode_object* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %301

49:                                               ; preds = %37
  %50 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %51 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %50)
  store %struct.drm_crtc* %51, %struct.drm_crtc** %10, align 8
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 3
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %56, align 8
  %58 = icmp eq %struct.drm_framebuffer* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %17, align 4
  br label %284

62:                                               ; preds = %49
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)** %66, align 8
  %68 = icmp eq i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %284

70:                                               ; preds = %62
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %73 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device* %71, i32 %74)
  store %struct.drm_framebuffer* %75, %struct.drm_framebuffer** %11, align 8
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %77 = icmp ne %struct.drm_framebuffer* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %284

79:                                               ; preds = %70
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %81 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %85 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %16, align 4
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %89 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @swap(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %79
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %99 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %97, %100
  br i1 %101, label %128, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %105 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %128, label %108

108:                                              ; preds = %102
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %110 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %113 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %114, %115
  %117 = icmp sgt i32 %111, %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %108
  %119 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %120 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %16, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp sgt i32 %121, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %118, %108, %102, %96
  %129 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %130 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %133 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %138 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %141 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %144 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %149 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %131, i32 %134, i32 %135, i32 %136, i32 %139, i32 %142, i8* %148)
  %150 = load i32, i32* @ENOSPC, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %17, align 4
  br label %284

152:                                              ; preds = %118
  %153 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %154 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @DRM_MODE_PAGE_FLIP_EVENT, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %235

159:                                              ; preds = %152
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %17, align 4
  %162 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %163 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %162, i32 0, i32 0
  %164 = load i64, i64* %14, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %167 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 12
  br i1 %170, label %171, label %176

171:                                              ; preds = %159
  %172 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %173 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %172, i32 0, i32 0
  %174 = load i64, i64* %14, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  br label %284

176:                                              ; preds = %159
  %177 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %178 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 %180, 12
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 4
  %183 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %184 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %183, i32 0, i32 0
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @spin_unlock_irqrestore(i32* %184, i64 %185)
  %187 = load i32, i32* @GFP_KERNEL, align 4
  %188 = call %struct.drm_pending_vblank_event* @kzalloc(i32 40, i32 %187)
  store %struct.drm_pending_vblank_event* %188, %struct.drm_pending_vblank_event** %13, align 8
  %189 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %190 = icmp eq %struct.drm_pending_vblank_event* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %176
  %192 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %193 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %192, i32 0, i32 0
  %194 = load i64, i64* %14, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %197 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add i64 %199, 12
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  %202 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %203 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %202, i32 0, i32 0
  %204 = load i64, i64* %14, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  br label %284

206:                                              ; preds = %176
  %207 = load i32, i32* @DRM_EVENT_FLIP_COMPLETE, align 4
  %208 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %209 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  store i32 %207, i32* %211, align 4
  %212 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %213 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  store i32 12, i32* %215, align 8
  %216 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %217 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %220 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 8
  %222 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %223 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %226 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  store %struct.TYPE_7__* %224, %struct.TYPE_7__** %227, align 8
  %228 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %229 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %230 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  store %struct.drm_file* %228, %struct.drm_file** %231, align 8
  %232 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %233 = getelementptr inbounds %struct.drm_pending_vblank_event, %struct.drm_pending_vblank_event* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  store void (%struct.drm_pending_event*)* bitcast (i32 (%struct.drm_pending_vblank_event*)* @kfree to void (%struct.drm_pending_event*)*), void (%struct.drm_pending_event*)** %234, align 8
  br label %235

235:                                              ; preds = %206, %152
  %236 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %237 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %236, i32 0, i32 3
  %238 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %237, align 8
  store %struct.drm_framebuffer* %238, %struct.drm_framebuffer** %12, align 8
  %239 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %240 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %239, i32 0, i32 4
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)*, i32 (%struct.drm_crtc*, %struct.drm_framebuffer*, %struct.drm_pending_vblank_event*)** %242, align 8
  %244 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %245 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %246 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %247 = call i32 %243(%struct.drm_crtc* %244, %struct.drm_framebuffer* %245, %struct.drm_pending_vblank_event* %246)
  store i32 %247, i32* %17, align 4
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %235
  %251 = load %struct.drm_mode_crtc_page_flip*, %struct.drm_mode_crtc_page_flip** %8, align 8
  %252 = getelementptr inbounds %struct.drm_mode_crtc_page_flip, %struct.drm_mode_crtc_page_flip* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @DRM_MODE_PAGE_FLIP_EVENT, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %274

257:                                              ; preds = %250
  %258 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %259 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %258, i32 0, i32 0
  %260 = load i64, i64* %14, align 8
  %261 = call i32 @spin_lock_irqsave(i32* %259, i64 %260)
  %262 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %263 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add i64 %265, 12
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  %268 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %269 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %268, i32 0, i32 0
  %270 = load i64, i64* %14, align 8
  %271 = call i32 @spin_unlock_irqrestore(i32* %269, i64 %270)
  %272 = load %struct.drm_pending_vblank_event*, %struct.drm_pending_vblank_event** %13, align 8
  %273 = call i32 @kfree(%struct.drm_pending_vblank_event* %272)
  br label %274

274:                                              ; preds = %257, %250
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %12, align 8
  br label %283

275:                                              ; preds = %235
  %276 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %277 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %276, i32 0, i32 3
  %278 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %277, align 8
  %279 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %280 = icmp ne %struct.drm_framebuffer* %278, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @WARN_ON(i32 %281)
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %11, align 8
  br label %283

283:                                              ; preds = %275, %274
  br label %284

284:                                              ; preds = %283, %191, %171, %128, %78, %69, %59
  %285 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %286 = icmp ne %struct.drm_framebuffer* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %289 = call i32 @drm_framebuffer_unreference(%struct.drm_framebuffer* %288)
  br label %290

290:                                              ; preds = %287, %284
  %291 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %292 = icmp ne %struct.drm_framebuffer* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %295 = call i32 @drm_framebuffer_unreference(%struct.drm_framebuffer* %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %298 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %297, i32 0, i32 2
  %299 = call i32 @mutex_unlock(i32* %298)
  %300 = load i32, i32* %17, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %296, %46, %34
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device*, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.drm_pending_vblank_event* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.drm_pending_vblank_event*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_framebuffer_unreference(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
