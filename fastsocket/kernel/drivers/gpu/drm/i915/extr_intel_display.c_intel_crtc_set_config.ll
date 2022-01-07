; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_set_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_set = type { i64, %struct.TYPE_10__*, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_10__*, i32, i32, i32, %struct.drm_device*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { i32 }
%struct.intel_set_config = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"[CRTC:%d] [FB:%d] #connectors=%d (x y) (%i %i)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"[CRTC:%d] [NOFB]\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"attempting to set mode from userspace\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"failed to set mode on [CRTC:%d], err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"failed to restore config after modeset failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_set*)* @intel_crtc_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crtc_set_config(%struct.drm_mode_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mode_set*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_mode_set, align 8
  %6 = alloca %struct.intel_set_config*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_mode_set* %0, %struct.drm_mode_set** %3, align 8
  %8 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %9 = icmp ne %struct.drm_mode_set* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %14 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %13, i32 0, i32 5
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %30 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %35 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br label %38

38:                                               ; preds = %33, %1
  %39 = phi i1 [ false, %1 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %43 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %48 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %46, %38
  %52 = phi i1 [ false, %38 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %56 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %83

59:                                               ; preds = %51
  %60 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %61 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %60, i32 0, i32 5
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %67 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %73 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %77 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %80 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %71, i32 %75, i32 %78, i32 %81)
  br label %91

83:                                               ; preds = %51
  %84 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %85 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %84, i32 0, i32 5
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %83, %59
  %92 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %93 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %92, i32 0, i32 5
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  %96 = load %struct.drm_device*, %struct.drm_device** %95, align 8
  store %struct.drm_device* %96, %struct.drm_device** %4, align 8
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.intel_set_config* @kzalloc(i32 16, i32 %99)
  store %struct.intel_set_config* %100, %struct.intel_set_config** %6, align 8
  %101 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %102 = icmp ne %struct.intel_set_config* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %241

104:                                              ; preds = %91
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %107 = call i32 @intel_set_config_save_state(%struct.drm_device* %105, %struct.intel_set_config* %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %241

111:                                              ; preds = %104
  %112 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %113 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %112, i32 0, i32 5
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 5
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %115, align 8
  %116 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %117 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %116, i32 0, i32 5
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 4
  store i32* %119, i32** %120, align 8
  %121 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %122 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %121, i32 0, i32 5
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 3
  store i32 %125, i32* %126, align 4
  %127 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %128 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %127, i32 0, i32 5
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 2
  store i32 %131, i32* %132, align 8
  %133 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %134 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %133, i32 0, i32 5
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 1
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %138, align 8
  %139 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %140 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %141 = call i32 @intel_set_config_compute_mode_changes(%struct.drm_mode_set* %139, %struct.intel_set_config* %140)
  %142 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %143 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %144 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %145 = call i32 @intel_modeset_stage_output_state(%struct.drm_device* %142, %struct.drm_mode_set* %143, %struct.intel_set_config* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %111
  br label %217

149:                                              ; preds = %111
  %150 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %151 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %194

154:                                              ; preds = %149
  %155 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %156 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %162 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @drm_mode_debug_printmodeline(i32* %163)
  br label %165

165:                                              ; preds = %159, %154
  %166 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %167 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %166, i32 0, i32 5
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %170 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %173 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %176 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %179 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %178, i32 0, i32 1
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = call i32 @intel_set_mode(%struct.TYPE_9__* %168, i32* %171, i32 %174, i32 %177, %struct.TYPE_10__* %180)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %165
  %185 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %186 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %185, i32 0, i32 5
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191)
  br label %217

193:                                              ; preds = %165
  br label %214

194:                                              ; preds = %149
  %195 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %196 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %213

199:                                              ; preds = %194
  %200 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %201 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %200, i32 0, i32 5
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %204 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %207 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.drm_mode_set*, %struct.drm_mode_set** %3, align 8
  %210 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = call i32 @intel_pipe_set_base(%struct.TYPE_9__* %202, i32 %205, i32 %208, %struct.TYPE_10__* %211)
  store i32 %212, i32* %7, align 4
  br label %213

213:                                              ; preds = %199, %194
  br label %214

214:                                              ; preds = %213, %193
  %215 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %216 = call i32 @intel_set_config_free(%struct.intel_set_config* %215)
  store i32 0, i32* %2, align 4
  br label %245

217:                                              ; preds = %184, %148
  %218 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %219 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %220 = call i32 @intel_set_config_restore_state(%struct.drm_device* %218, %struct.intel_set_config* %219)
  %221 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %222 = getelementptr inbounds %struct.intel_set_config, %struct.intel_set_config* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %240

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 5
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %5, i32 0, i32 1
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = call i32 @intel_set_mode(%struct.TYPE_9__* %227, i32* %229, i32 %231, i32 %233, %struct.TYPE_10__* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %225
  %239 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %225, %217
  br label %241

241:                                              ; preds = %240, %110, %103
  %242 = load %struct.intel_set_config*, %struct.intel_set_config** %6, align 8
  %243 = call i32 @intel_set_config_free(%struct.intel_set_config* %242)
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %241, %214
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local %struct.intel_set_config* @kzalloc(i32, i32) #1

declare dso_local i32 @intel_set_config_save_state(%struct.drm_device*, %struct.intel_set_config*) #1

declare dso_local i32 @intel_set_config_compute_mode_changes(%struct.drm_mode_set*, %struct.intel_set_config*) #1

declare dso_local i32 @intel_modeset_stage_output_state(%struct.drm_device*, %struct.drm_mode_set*, %struct.intel_set_config*) #1

declare dso_local i32 @drm_mode_debug_printmodeline(i32*) #1

declare dso_local i32 @intel_set_mode(%struct.TYPE_9__*, i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @intel_pipe_set_base(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @intel_set_config_free(%struct.intel_set_config*) #1

declare dso_local i32 @intel_set_config_restore_state(%struct.drm_device*, %struct.intel_set_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
