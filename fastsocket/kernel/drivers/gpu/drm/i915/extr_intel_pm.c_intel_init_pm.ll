; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_pm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32*, i32, i8*, i32, i32, i32 }

@ironlake_fbc_enabled = common dso_local global i32 0, align 4
@ironlake_enable_fbc = common dso_local global i32 0, align 4
@ironlake_disable_fbc = common dso_local global i32 0, align 4
@g4x_fbc_enabled = common dso_local global i32 0, align 4
@g4x_enable_fbc = common dso_local global i32 0, align 4
@g4x_disable_fbc = common dso_local global i32 0, align 4
@i8xx_fbc_enabled = common dso_local global i32 0, align 4
@i8xx_enable_fbc = common dso_local global i32 0, align 4
@i8xx_disable_fbc = common dso_local global i32 0, align 4
@MLTR_ILK = common dso_local global i32 0, align 4
@ILK_SRLT_MASK = common dso_local global i32 0, align 4
@ironlake_update_wm = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to get proper latency. Disable CxSR\0A\00", align 1
@ironlake_init_clock_gating = common dso_local global i8* null, align 8
@sandybridge_update_wm = common dso_local global i8* null, align 8
@sandybridge_update_sprite_wm = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to read display plane latency. Disable CxSR\0A\00", align 1
@gen6_init_clock_gating = common dso_local global i8* null, align 8
@ivybridge_update_wm = common dso_local global i32* null, align 8
@ivybridge_init_clock_gating = common dso_local global i8* null, align 8
@haswell_update_linetime_wm = common dso_local global i32 0, align 4
@haswell_init_clock_gating = common dso_local global i8* null, align 8
@valleyview_update_wm = common dso_local global i32* null, align 8
@valleyview_init_clock_gating = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [90 x i8] c"failed to find known CxSR latency (found ddr%s fsb freq %d, mem freq %d), disabling CxSR\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@pineview_update_wm = common dso_local global i32* null, align 8
@gen3_init_clock_gating = common dso_local global i8* null, align 8
@g4x_update_wm = common dso_local global i32* null, align 8
@g4x_init_clock_gating = common dso_local global i8* null, align 8
@i965_update_wm = common dso_local global i32* null, align 8
@crestline_init_clock_gating = common dso_local global i8* null, align 8
@broadwater_init_clock_gating = common dso_local global i8* null, align 8
@i9xx_update_wm = common dso_local global i8* null, align 8
@i9xx_get_fifo_size = common dso_local global i8* null, align 8
@i830_update_wm = common dso_local global i8* null, align 8
@i85x_init_clock_gating = common dso_local global i8* null, align 8
@i830_get_fifo_size = common dso_local global i8* null, align 8
@i85x_get_fifo_size = common dso_local global i8* null, align 8
@i830_init_clock_gating = common dso_local global i8* null, align 8
@i845_get_fifo_size = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_pm(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call i64 @I915_HAS_FBC(%struct.drm_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %12 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* @ironlake_fbc_enabled, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @ironlake_enable_fbc, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ironlake_disable_fbc, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 8
  br label %63

27:                                               ; preds = %10
  %28 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %29 = call i64 @IS_GM45(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @g4x_fbc_enabled, align 4
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @g4x_enable_fbc, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @g4x_disable_fbc, align 4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  br label %62

44:                                               ; preds = %27
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i64 @IS_CRESTLINE(%struct.drm_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @i8xx_fbc_enabled, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %51 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @i8xx_enable_fbc, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @i8xx_disable_fbc, align 4
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %48, %44
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62, %14
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %66 = call i64 @IS_PINEVIEW(%struct.drm_device* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %70 = call i32 @i915_pineview_get_mem_freq(%struct.drm_device* %69)
  br label %79

71:                                               ; preds = %64
  %72 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %73 = call i64 @IS_GEN5(%struct.drm_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %77 = call i32 @i915_ironlake_get_mem_freq(%struct.drm_device* %76)
  br label %78

78:                                               ; preds = %75, %71
  br label %79

79:                                               ; preds = %78, %68
  %80 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %81 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %200

83:                                               ; preds = %79
  %84 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %85 = call i64 @IS_GEN5(%struct.drm_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load i32, i32* @MLTR_ILK, align 4
  %89 = call i32 @I915_READ(i32 %88)
  %90 = load i32, i32* @ILK_SRLT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load i32*, i32** @ironlake_update_wm, align 8
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %96 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  store i32* %94, i32** %97, align 8
  br label %103

98:                                               ; preds = %87
  %99 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i8*, i8** @ironlake_init_clock_gating, align 8
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  br label %199

108:                                              ; preds = %83
  %109 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %110 = call i64 @IS_GEN6(%struct.drm_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %108
  %113 = call i64 (...) @SNB_READ_WM0_LATENCY()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i8*, i8** @sandybridge_update_wm, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32* %117, i32** %120, align 8
  %121 = load i8*, i8** @sandybridge_update_sprite_wm, align 8
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %123 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 4
  store i8* %121, i8** %124, align 8
  br label %130

125:                                              ; preds = %112
  %126 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %128 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  store i32* null, i32** %129, align 8
  br label %130

130:                                              ; preds = %125, %115
  %131 = load i8*, i8** @gen6_init_clock_gating, align 8
  %132 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %133 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i8* %131, i8** %134, align 8
  br label %198

135:                                              ; preds = %108
  %136 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %137 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %135
  %140 = call i64 (...) @SNB_READ_WM0_LATENCY()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load i32*, i32** @ivybridge_update_wm, align 8
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %145 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32* %143, i32** %146, align 8
  %147 = load i8*, i8** @sandybridge_update_sprite_wm, align 8
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %149 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  store i8* %147, i8** %150, align 8
  br label %156

151:                                              ; preds = %139
  %152 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %154 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %151, %142
  %157 = load i8*, i8** @ivybridge_init_clock_gating, align 8
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %159 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  br label %197

161:                                              ; preds = %135
  %162 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %163 = call i64 @IS_HASWELL(%struct.drm_device* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %161
  %166 = call i64 (...) @SNB_READ_WM0_LATENCY()
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %182

168:                                              ; preds = %165
  %169 = load i8*, i8** @sandybridge_update_wm, align 8
  %170 = bitcast i8* %169 to i32*
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %172 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  store i32* %170, i32** %173, align 8
  %174 = load i8*, i8** @sandybridge_update_sprite_wm, align 8
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %176 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  store i8* %174, i8** %177, align 8
  %178 = load i32, i32* @haswell_update_linetime_wm, align 4
  %179 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %180 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 3
  store i32 %178, i32* %181, align 8
  br label %187

182:                                              ; preds = %165
  %183 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %185 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %182, %168
  %188 = load i8*, i8** @haswell_init_clock_gating, align 8
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  store i8* %188, i8** %191, align 8
  br label %196

192:                                              ; preds = %161
  %193 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %194 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  store i32* null, i32** %195, align 8
  br label %196

196:                                              ; preds = %192, %187
  br label %197

197:                                              ; preds = %196, %156
  br label %198

198:                                              ; preds = %197, %130
  br label %199

199:                                              ; preds = %198, %103
  br label %386

200:                                              ; preds = %79
  %201 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %202 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %200
  %205 = load i32*, i32** @valleyview_update_wm, align 8
  %206 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %207 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  store i32* %205, i32** %208, align 8
  %209 = load i8*, i8** @valleyview_init_clock_gating, align 8
  %210 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %211 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  br label %385

213:                                              ; preds = %200
  %214 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %215 = call i64 @IS_PINEVIEW(%struct.drm_device* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %260

217:                                              ; preds = %213
  %218 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %219 = call i32 @IS_PINEVIEW_G(%struct.drm_device* %218)
  %220 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %221 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %224 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %227 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @intel_get_cxsr_latency(i32 %219, i32 %222, i32 %225, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %250, label %231

231:                                              ; preds = %217
  %232 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %233 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 1
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %238 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %239 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %242 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @DRM_INFO(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i8* %237, i32 %240, i32 %243)
  %245 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %246 = call i32 @pineview_disable_cxsr(%struct.drm_device* %245)
  %247 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %248 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 2
  store i32* null, i32** %249, align 8
  br label %255

250:                                              ; preds = %217
  %251 = load i32*, i32** @pineview_update_wm, align 8
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %253 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 2
  store i32* %251, i32** %254, align 8
  br label %255

255:                                              ; preds = %250, %231
  %256 = load i8*, i8** @gen3_init_clock_gating, align 8
  %257 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %258 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  store i8* %256, i8** %259, align 8
  br label %384

260:                                              ; preds = %213
  %261 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %262 = call i64 @IS_G4X(%struct.drm_device* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %260
  %265 = load i32*, i32** @g4x_update_wm, align 8
  %266 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %267 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 2
  store i32* %265, i32** %268, align 8
  %269 = load i8*, i8** @g4x_init_clock_gating, align 8
  %270 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %271 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  store i8* %269, i8** %272, align 8
  br label %383

273:                                              ; preds = %260
  %274 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %275 = call i64 @IS_GEN4(%struct.drm_device* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %301

277:                                              ; preds = %273
  %278 = load i32*, i32** @i965_update_wm, align 8
  %279 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %280 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 2
  store i32* %278, i32** %281, align 8
  %282 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %283 = call i64 @IS_CRESTLINE(%struct.drm_device* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %277
  %286 = load i8*, i8** @crestline_init_clock_gating, align 8
  %287 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %288 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  store i8* %286, i8** %289, align 8
  br label %300

290:                                              ; preds = %277
  %291 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %292 = call i64 @IS_BROADWATER(%struct.drm_device* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load i8*, i8** @broadwater_init_clock_gating, align 8
  %296 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %297 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 1
  store i8* %295, i8** %298, align 8
  br label %299

299:                                              ; preds = %294, %290
  br label %300

300:                                              ; preds = %299, %285
  br label %382

301:                                              ; preds = %273
  %302 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %303 = call i64 @IS_GEN3(%struct.drm_device* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %319

305:                                              ; preds = %301
  %306 = load i8*, i8** @i9xx_update_wm, align 8
  %307 = bitcast i8* %306 to i32*
  %308 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %309 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i32 0, i32 2
  store i32* %307, i32** %310, align 8
  %311 = load i8*, i8** @i9xx_get_fifo_size, align 8
  %312 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %313 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 0
  store i8* %311, i8** %314, align 8
  %315 = load i8*, i8** @gen3_init_clock_gating, align 8
  %316 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %317 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 1
  store i8* %315, i8** %318, align 8
  br label %381

319:                                              ; preds = %301
  %320 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %321 = call i64 @IS_I865G(%struct.drm_device* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %337

323:                                              ; preds = %319
  %324 = load i8*, i8** @i830_update_wm, align 8
  %325 = bitcast i8* %324 to i32*
  %326 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %327 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 2
  store i32* %325, i32** %328, align 8
  %329 = load i8*, i8** @i85x_init_clock_gating, align 8
  %330 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %331 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  store i8* %329, i8** %332, align 8
  %333 = load i8*, i8** @i830_get_fifo_size, align 8
  %334 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %335 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  store i8* %333, i8** %336, align 8
  br label %380

337:                                              ; preds = %319
  %338 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %339 = call i64 @IS_I85X(%struct.drm_device* %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %337
  %342 = load i8*, i8** @i9xx_update_wm, align 8
  %343 = bitcast i8* %342 to i32*
  %344 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %345 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 2
  store i32* %343, i32** %346, align 8
  %347 = load i8*, i8** @i85x_get_fifo_size, align 8
  %348 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %349 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  store i8* %347, i8** %350, align 8
  %351 = load i8*, i8** @i85x_init_clock_gating, align 8
  %352 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %353 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 1
  store i8* %351, i8** %354, align 8
  br label %379

355:                                              ; preds = %337
  %356 = load i8*, i8** @i830_update_wm, align 8
  %357 = bitcast i8* %356 to i32*
  %358 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %359 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 2
  store i32* %357, i32** %360, align 8
  %361 = load i8*, i8** @i830_init_clock_gating, align 8
  %362 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %363 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i32 0, i32 1
  store i8* %361, i8** %364, align 8
  %365 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %366 = call i64 @IS_845G(%struct.drm_device* %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %355
  %369 = load i8*, i8** @i845_get_fifo_size, align 8
  %370 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %371 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 0
  store i8* %369, i8** %372, align 8
  br label %378

373:                                              ; preds = %355
  %374 = load i8*, i8** @i830_get_fifo_size, align 8
  %375 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %376 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %376, i32 0, i32 0
  store i8* %374, i8** %377, align 8
  br label %378

378:                                              ; preds = %373, %368
  br label %379

379:                                              ; preds = %378, %341
  br label %380

380:                                              ; preds = %379, %323
  br label %381

381:                                              ; preds = %380, %305
  br label %382

382:                                              ; preds = %381, %300
  br label %383

383:                                              ; preds = %382, %264
  br label %384

384:                                              ; preds = %383, %255
  br label %385

385:                                              ; preds = %384, %204
  br label %386

386:                                              ; preds = %385, %199
  ret void
}

declare dso_local i64 @I915_HAS_FBC(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

declare dso_local i64 @IS_GM45(%struct.drm_device*) #1

declare dso_local i64 @IS_CRESTLINE(%struct.drm_device*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_device*) #1

declare dso_local i32 @i915_pineview_get_mem_freq(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @i915_ironlake_get_mem_freq(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i64 @SNB_READ_WM0_LATENCY(...) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i32 @intel_get_cxsr_latency(i32, i32, i32, i32) #1

declare dso_local i32 @IS_PINEVIEW_G(%struct.drm_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i8*, i32, i32) #1

declare dso_local i32 @pineview_disable_cxsr(%struct.drm_device*) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN4(%struct.drm_device*) #1

declare dso_local i64 @IS_BROADWATER(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN3(%struct.drm_device*) #1

declare dso_local i64 @IS_I865G(%struct.drm_device*) #1

declare dso_local i64 @IS_I85X(%struct.drm_device*) #1

declare dso_local i64 @IS_845G(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
