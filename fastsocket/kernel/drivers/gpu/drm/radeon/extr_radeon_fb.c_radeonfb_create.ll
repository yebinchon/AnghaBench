; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeonfb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_fb.c_radeonfb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_fbdev = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.radeon_device* }
%struct.TYPE_12__ = type { %struct.fb_info*, %struct.drm_framebuffer* }
%struct.fb_info = type { i32, %struct.TYPE_8__, i32, i32*, i8*, i32*, %struct.radeon_fbdev* }
%struct.TYPE_8__ = type { i64, i8*, i32 }
%struct.drm_framebuffer = type { i64*, i64 }
%struct.TYPE_11__ = type { %struct.drm_framebuffer }
%struct.radeon_device = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"failed to create fbcon object %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to initalise framebuffer %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"radeondrmfb\00", align 1
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_CAN_FORCE_OUTPUT = common dso_local global i32 0, align 4
@radeonfb_ops = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"fb mappable at 0x%lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"vram apper at 0x%lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"size %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"fb depth is %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"   pitch is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @radeonfb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeonfb_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.radeon_fbdev*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_mode_fb_cmd2, align 4
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.radeon_bo*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = bitcast %struct.drm_fb_helper* %16 to %struct.radeon_fbdev*
  store %struct.radeon_fbdev* %17, %struct.radeon_fbdev** %6, align 8
  %18 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %18, i32 0, i32 2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %7, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %11, align 8
  store %struct.radeon_bo* null, %struct.radeon_bo** %12, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %13, align 8
  %25 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %26 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %30 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %34 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 24
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %39 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %43 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %42, i32 0, i32 0
  store i32 32, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %37, %2
  %45 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %46 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %49 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @drm_mode_legacy_fb_format(i32 %47, i32 %50)
  %52 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %10, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %54 = call i32 @radeonfb_create_pinned_object(%struct.radeon_fbdev* %53, %struct.drm_mode_fb_cmd2* %10, %struct.drm_gem_object** %11)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %3, align 4
  br label %236

61:                                               ; preds = %44
  %62 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %63 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %62)
  store %struct.radeon_bo* %63, %struct.radeon_bo** %12, align 8
  %64 = load %struct.device*, %struct.device** %13, align 8
  %65 = call %struct.fb_info* @framebuffer_alloc(i32 0, %struct.device* %64)
  store %struct.fb_info* %65, %struct.fb_info** %8, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %67 = icmp eq %struct.fb_info* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %215

71:                                               ; preds = %61
  %72 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %73 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 6
  store %struct.radeon_fbdev* %72, %struct.radeon_fbdev** %74, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %79 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %78, i32 0, i32 1
  %80 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %81 = call i32 @radeon_framebuffer_init(%struct.TYPE_10__* %77, %struct.TYPE_11__* %79, %struct.drm_mode_fb_cmd2* %10, %struct.drm_gem_object* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %215

87:                                               ; preds = %71
  %88 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store %struct.drm_framebuffer* %90, %struct.drm_framebuffer** %9, align 8
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %92 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %93 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  store %struct.drm_framebuffer* %91, %struct.drm_framebuffer** %94, align 8
  %95 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %96 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %97 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  store %struct.fb_info* %95, %struct.fb_info** %98, align 8
  %99 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %100 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %103 = call i8* @radeon_bo_size(%struct.radeon_bo* %102)
  %104 = call i32 @memset_io(i32* %101, i32 0, i8* %103)
  %105 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @strcpy(i32 %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %110 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %112 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %117 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @drm_fb_helper_fill_fix(%struct.fb_info* %110, i64 %115, i64 %118)
  %120 = load i32, i32* @FBINFO_DEFAULT, align 4
  %121 = load i32, i32* @FBINFO_CAN_FORCE_OUTPUT, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %124 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %126 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %125, i32 0, i32 5
  store i32* @radeonfb_ops, i32** %126, align 8
  %127 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %128 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %127)
  %129 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %130 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %128, %132
  store i64 %133, i64* %15, align 8
  %134 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %137, %138
  %140 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %141 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %144 = call i8* @radeon_bo_size(%struct.radeon_bo* %143)
  %145 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %149 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %152 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %151, i32 0, i32 3
  store i32* %150, i32** %152, align 8
  %153 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %154 = call i8* @radeon_bo_size(%struct.radeon_bo* %153)
  %155 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %156 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %158 = load %struct.radeon_fbdev*, %struct.radeon_fbdev** %6, align 8
  %159 = getelementptr inbounds %struct.radeon_fbdev, %struct.radeon_fbdev* %158, i32 0, i32 0
  %160 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %161 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %164 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @drm_fb_helper_fill_var(%struct.fb_info* %157, %struct.TYPE_12__* %159, i32 %162, i32 %165)
  %167 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = icmp eq i32* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %87
  %172 = load i32, i32* @ENOSPC, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %14, align 4
  br label %215

174:                                              ; preds = %87
  %175 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 2
  %177 = call i32 @fb_alloc_cmap(i32* %176, i32 256, i32 0)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %14, align 4
  br label %215

183:                                              ; preds = %174
  %184 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @DRM_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %187)
  %189 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %190 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @DRM_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %192)
  %194 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %195 = call i8* @radeon_bo_size(%struct.radeon_bo* %194)
  %196 = ptrtoint i8* %195 to i64
  %197 = call i32 @DRM_INFO(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %196)
  %198 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %199 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %200)
  %202 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %203 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @DRM_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %206)
  %208 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %209 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %208, i32 0, i32 0
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %214 = call i32 @vga_switcheroo_client_fb_set(i32 %212, %struct.fb_info* %213)
  store i32 0, i32* %3, align 4
  br label %236

215:                                              ; preds = %180, %171, %84, %68
  %216 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %217 = icmp ne %struct.radeon_bo* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  br label %219

219:                                              ; preds = %218, %215
  %220 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %221 = icmp ne %struct.drm_framebuffer* %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %227 = call i32 @drm_gem_object_unreference(%struct.drm_gem_object* %226)
  %228 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %229 = call i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer* %228)
  %230 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %231 = call i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer* %230)
  %232 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %233 = call i32 @kfree(%struct.drm_framebuffer* %232)
  br label %234

234:                                              ; preds = %225, %222, %219
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %183, %57
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #1

declare dso_local i32 @radeonfb_create_pinned_object(%struct.radeon_fbdev*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local i32 @radeon_framebuffer_init(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object*) #1

declare dso_local i32 @memset_io(i32*, i32, i8*) #1

declare dso_local i8* @radeon_bo_size(%struct.radeon_bo*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @drm_fb_helper_fill_fix(%struct.fb_info*, i64, i64) #1

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @drm_fb_helper_fill_var(%struct.fb_info*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64) #1

declare dso_local i32 @vga_switcheroo_client_fb_set(i32, %struct.fb_info*) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_framebuffer_unregister_private(%struct.drm_framebuffer*) #1

declare dso_local i32 @drm_framebuffer_cleanup(%struct.drm_framebuffer*) #1

declare dso_local i32 @kfree(%struct.drm_framebuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
