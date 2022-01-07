; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intelfb_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_fb.c_intelfb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32 }
%struct.drm_fb_helper_surface_size = type { i32, i32, i32, i32, i32, i32 }
%struct.intel_fbdev = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.drm_framebuffer }
%struct.TYPE_11__ = type { i64 }
%struct.drm_framebuffer = type { i32, i32, i32, i32* }
%struct.TYPE_14__ = type { %struct.fb_info*, %struct.drm_framebuffer*, %struct.drm_device* }
%struct.fb_info = type { i32, i32, i32, %struct.TYPE_9__, i32, i32*, %struct.intel_fbdev* }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.drm_device = type { i32, %struct.TYPE_12__*, %struct.TYPE_8__, %struct.drm_i915_private* }
%struct.TYPE_12__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.drm_i915_private = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32 }
%struct.drm_i915_gem_object = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to allocate framebuffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to pin fb: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"inteldrmfb\00", align 1
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_CAN_FORCE_OUTPUT = common dso_local global i32 0, align 4
@intelfb_ops = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"allocated %dx%d fb: 0x%08x, bo %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_fb_helper*, %struct.drm_fb_helper_surface_size*)* @intelfb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_create(%struct.drm_fb_helper* %0, %struct.drm_fb_helper_surface_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_fb_helper_surface_size*, align 8
  %6 = alloca %struct.intel_fbdev*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca %struct.drm_mode_fb_cmd2, align 8
  %12 = alloca %struct.drm_i915_gem_object*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %4, align 8
  store %struct.drm_fb_helper_surface_size* %1, %struct.drm_fb_helper_surface_size** %5, align 8
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %17 = bitcast %struct.drm_fb_helper* %16 to %struct.intel_fbdev*
  store %struct.intel_fbdev* %17, %struct.intel_fbdev** %6, align 8
  %18 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %19 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %7, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 3
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %8, align 8
  %25 = bitcast %struct.drm_mode_fb_cmd2* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  %26 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store %struct.device* %29, %struct.device** %13, align 8
  %30 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %31 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 24
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %36 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %35, i32 0, i32 0
  store i32 32, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %39 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %43 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %49 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 7
  %52 = sdiv i32 %51, 8
  %53 = mul nsw i32 %47, %52
  %54 = call i8* @ALIGN(i32 %53, i32 64)
  %55 = ptrtoint i8* %54 to i32
  %56 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %60 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %63 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @drm_mode_legacy_fb_format(i32 %61, i32 %64)
  %66 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %11, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %70, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i8* @ALIGN(i32 %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_device* %78, i32 %79)
  store %struct.drm_i915_gem_object* %80, %struct.drm_i915_gem_object** %12, align 8
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %82 = icmp eq %struct.drm_i915_gem_object* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %37
  %84 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device* %84, i32 %85)
  store %struct.drm_i915_gem_object* %86, %struct.drm_i915_gem_object** %12, align 8
  br label %87

87:                                               ; preds = %83, %37
  %88 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %89 = icmp ne %struct.drm_i915_gem_object* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %15, align 4
  br label %262

94:                                               ; preds = %87
  %95 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %99 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %100 = call i32 @intel_pin_and_fence_fb_obj(%struct.drm_device* %98, %struct.drm_i915_gem_object* %99, i32* null)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %15, align 4
  %105 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %255

106:                                              ; preds = %94
  %107 = load %struct.device*, %struct.device** %13, align 8
  %108 = call %struct.fb_info* @framebuffer_alloc(i32 0, %struct.device* %107)
  store %struct.fb_info* %108, %struct.fb_info** %9, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %110 = icmp ne %struct.fb_info* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %15, align 4
  br label %252

114:                                              ; preds = %106
  %115 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %116 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %117 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %116, i32 0, i32 6
  store %struct.intel_fbdev* %115, %struct.intel_fbdev** %117, align 8
  %118 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %119 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %120 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %119, i32 0, i32 0
  %121 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %122 = call i32 @intel_framebuffer_init(%struct.drm_device* %118, %struct.TYPE_13__* %120, %struct.drm_mode_fb_cmd2* %11, %struct.drm_i915_gem_object* %121)
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %252

126:                                              ; preds = %114
  %127 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %128 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store %struct.drm_framebuffer* %129, %struct.drm_framebuffer** %10, align 8
  %130 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %131 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %132 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  store %struct.drm_framebuffer* %130, %struct.drm_framebuffer** %133, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %135 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %136 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store %struct.fb_info* %134, %struct.fb_info** %137, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @strcpy(i32 %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @FBINFO_DEFAULT, align 4
  %144 = load i32, i32* @FBINFO_CAN_FORCE_OUTPUT, align 4
  %145 = or i32 %143, %144
  %146 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 5
  store i32* @intelfb_ops, i32** %149, align 8
  %150 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 4
  %152 = call i32 @fb_alloc_cmap(i32* %151, i32 256, i32 0)
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %126
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %15, align 4
  br label %252

158:                                              ; preds = %126
  %159 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %160 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %164 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %168 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  store i64 %166, i64* %169, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %172 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %175 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %179 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @ioremap_wc(i64 %181, i32 %182)
  %184 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %185 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %158
  %191 = load i32, i32* @ENOSPC, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %15, align 4
  br label %252

193:                                              ; preds = %158
  %194 = load i32, i32* %14, align 4
  %195 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %196 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %198 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %199 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %204 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @drm_fb_helper_fill_fix(%struct.fb_info* %197, i32 %202, i32 %205)
  %207 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %208 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %209 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %208, i32 0, i32 1
  %210 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %211 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.drm_fb_helper_surface_size*, %struct.drm_fb_helper_surface_size** %5, align 8
  %214 = getelementptr inbounds %struct.drm_fb_helper_surface_size, %struct.drm_fb_helper_surface_size* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @drm_fb_helper_fill_var(%struct.fb_info* %207, %struct.TYPE_14__* %209, i32 %212, i32 %215)
  %217 = load %struct.intel_fbdev*, %struct.intel_fbdev** %6, align 8
  %218 = getelementptr inbounds %struct.intel_fbdev, %struct.intel_fbdev* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %193
  %225 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %226 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %229 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @memset_io(i32 %227, i32 0, i32 %230)
  br label %232

232:                                              ; preds = %224, %193
  %233 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %234 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %237 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %240 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %243 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %235, i32 %238, i64 %241, %struct.drm_i915_gem_object* %242)
  %244 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %245 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %244, i32 0, i32 0
  %246 = call i32 @mutex_unlock(i32* %245)
  %247 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %248 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %247, i32 0, i32 1
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %251 = call i32 @vga_switcheroo_client_fb_set(%struct.TYPE_12__* %249, %struct.fb_info* %250)
  store i32 0, i32* %3, align 4
  br label %264

252:                                              ; preds = %190, %155, %125, %111
  %253 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %254 = call i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object* %253)
  br label %255

255:                                              ; preds = %252, %103
  %256 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %12, align 8
  %257 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %256, i32 0, i32 0
  %258 = call i32 @drm_gem_object_unreference(i32* %257)
  %259 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %260 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  br label %262

262:                                              ; preds = %255, %90
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %3, align 4
  br label %264

264:                                              ; preds = %262, %232
  %265 = load i32, i32* %3, align 4
  ret i32 %265
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @ALIGN(i32, i32) #2

declare dso_local i32 @drm_mode_legacy_fb_format(i32, i32) #2

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_create_stolen(%struct.drm_device*, i32) #2

declare dso_local %struct.drm_i915_gem_object* @i915_gem_alloc_object(%struct.drm_device*, i32) #2

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @intel_pin_and_fence_fb_obj(%struct.drm_device*, %struct.drm_i915_gem_object*, i32*) #2

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #2

declare dso_local i32 @intel_framebuffer_init(%struct.drm_device*, %struct.TYPE_13__*, %struct.drm_mode_fb_cmd2*, %struct.drm_i915_gem_object*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #2

declare dso_local i32 @ioremap_wc(i64, i32) #2

declare dso_local i32 @drm_fb_helper_fill_fix(%struct.fb_info*, i32, i32) #2

declare dso_local i32 @drm_fb_helper_fill_var(%struct.fb_info*, %struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @memset_io(i32, i32, i32) #2

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i64, %struct.drm_i915_gem_object*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @vga_switcheroo_client_fb_set(%struct.TYPE_12__*, %struct.fb_info*) #2

declare dso_local i32 @i915_gem_object_unpin(%struct.drm_i915_gem_object*) #2

declare dso_local i32 @drm_gem_object_unreference(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
