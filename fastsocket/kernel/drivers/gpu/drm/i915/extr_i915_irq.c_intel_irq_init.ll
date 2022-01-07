; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_11__*, %struct.drm_i915_private* }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32, i8*, i32, i32*, i32 }
%struct.drm_i915_private = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@i915_hotplug_work_func = common dso_local global i32 0, align 4
@i915_error_work_func = common dso_local global i32 0, align 4
@gen6_pm_rps_work = common dso_local global i32 0, align 4
@ivybridge_parity_work = common dso_local global i32 0, align 4
@i915_hangcheck_elapsed = common dso_local global i32 0, align 4
@PM_QOS_CPU_DMA_LATENCY = common dso_local global i32 0, align 4
@PM_QOS_DEFAULT_VALUE = common dso_local global i32 0, align 4
@i915_get_vblank_counter = common dso_local global i32 0, align 4
@gm45_get_vblank_counter = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@i915_get_vblank_timestamp = common dso_local global i32* null, align 8
@i915_get_crtc_scanoutpos = common dso_local global i32 0, align 4
@valleyview_irq_handler = common dso_local global i32 0, align 4
@valleyview_irq_preinstall = common dso_local global i8* null, align 8
@valleyview_irq_postinstall = common dso_local global i32 0, align 4
@valleyview_irq_uninstall = common dso_local global i8* null, align 8
@valleyview_enable_vblank = common dso_local global i32 0, align 4
@valleyview_disable_vblank = common dso_local global i32 0, align 4
@valleyview_hpd_irq_setup = common dso_local global i32 0, align 4
@ivybridge_irq_handler = common dso_local global i32 0, align 4
@ironlake_irq_preinstall = common dso_local global i8* null, align 8
@ivybridge_irq_postinstall = common dso_local global i32 0, align 4
@ironlake_irq_uninstall = common dso_local global i8* null, align 8
@ivybridge_enable_vblank = common dso_local global i32 0, align 4
@ivybridge_disable_vblank = common dso_local global i32 0, align 4
@ironlake_irq_handler = common dso_local global i32 0, align 4
@ironlake_irq_postinstall = common dso_local global i32 0, align 4
@ironlake_enable_vblank = common dso_local global i32 0, align 4
@ironlake_disable_vblank = common dso_local global i32 0, align 4
@i8xx_irq_preinstall = common dso_local global i8* null, align 8
@i8xx_irq_postinstall = common dso_local global i32 0, align 4
@i8xx_irq_handler = common dso_local global i32 0, align 4
@i8xx_irq_uninstall = common dso_local global i8* null, align 8
@i915_irq_preinstall = common dso_local global i8* null, align 8
@i915_irq_postinstall = common dso_local global i32 0, align 4
@i915_irq_uninstall = common dso_local global i8* null, align 8
@i915_irq_handler = common dso_local global i32 0, align 4
@i915_hpd_irq_setup = common dso_local global i32 0, align 4
@i965_irq_preinstall = common dso_local global i8* null, align 8
@i965_irq_postinstall = common dso_local global i32 0, align 4
@i965_irq_uninstall = common dso_local global i8* null, align 8
@i965_irq_handler = common dso_local global i32 0, align 4
@i965_hpd_irq_setup = common dso_local global i32 0, align 4
@i915_enable_vblank = common dso_local global i32 0, align 4
@i915_disable_vblank = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_irq_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 2
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 5
  %9 = load i32, i32* @i915_hotplug_work_func, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* @i915_error_work_func, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* @gen6_pm_rps_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* @ivybridge_parity_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* @i915_hangcheck_elapsed, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %31 = ptrtoint %struct.drm_device* %30 to i64
  %32 = call i32 @setup_timer(i32* %28, i32 %29, i64 %31)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 1
  %35 = load i32, i32* @PM_QOS_CPU_DMA_LATENCY, align 4
  %36 = load i32, i32* @PM_QOS_DEFAULT_VALUE, align 4
  %37 = call i32 @pm_qos_add_request(i32* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @i915_get_vblank_counter, align 4
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 8
  store i32 %38, i32* %42, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  store i32 16777215, i32* %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i64 @IS_G4X(%struct.drm_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %1
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = call %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %52, 5
  br i1 %53, label %54, label %62

54:                                               ; preds = %48, %1
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load i32, i32* @gm45_get_vblank_counter, align 4
  %58 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 8
  store i32 %57, i32* %61, align 8
  br label %62

62:                                               ; preds = %54, %48
  %63 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %64 = load i32, i32* @DRIVER_MODESET, align 4
  %65 = call i64 @drm_core_check_feature(%struct.drm_device* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32*, i32** @i915_get_vblank_timestamp, align 8
  %69 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 7
  store i32* %68, i32** %72, align 8
  br label %78

73:                                               ; preds = %62
  %74 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = load i32, i32* @i915_get_crtc_scanoutpos, align 4
  %80 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %81 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 6
  store i32 %79, i32* %83, align 8
  %84 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %85 = call i64 @IS_VALLEYVIEW(%struct.drm_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %122

87:                                               ; preds = %78
  %88 = load i32, i32* @valleyview_irq_handler, align 4
  %89 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = load i8*, i8** @valleyview_irq_preinstall, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 5
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* @valleyview_irq_postinstall, align 4
  %99 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 1
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  store i32 %98, i32* %102, align 8
  %103 = load i8*, i8** @valleyview_irq_uninstall, align 8
  %104 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i8* %103, i8** %107, align 8
  %108 = load i32, i32* @valleyview_enable_vblank, align 4
  %109 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @valleyview_disable_vblank, align 4
  %114 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %115 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* @valleyview_hpd_irq_setup, align 4
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 4
  br label %293

122:                                              ; preds = %78
  %123 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %124 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %128 = call i64 @IS_HASWELL(%struct.drm_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %126, %122
  %131 = load i32, i32* @ivybridge_irq_handler, align 4
  %132 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %133 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 8
  %136 = load i8*, i8** @ironlake_irq_preinstall, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %138 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  store i8* %136, i8** %140, align 8
  %141 = load i32, i32* @ivybridge_irq_postinstall, align 4
  %142 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %143 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 4
  store i32 %141, i32* %145, align 8
  %146 = load i8*, i8** @ironlake_irq_uninstall, align 8
  %147 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %148 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  store i8* %146, i8** %150, align 8
  %151 = load i32, i32* @ivybridge_enable_vblank, align 4
  %152 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %153 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @ivybridge_disable_vblank, align 4
  %157 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %158 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  br label %292

161:                                              ; preds = %126
  %162 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %163 = call i64 @HAS_PCH_SPLIT(%struct.drm_device* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %161
  %166 = load i32, i32* @ironlake_irq_handler, align 4
  %167 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 1
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  store i32 %166, i32* %170, align 8
  %171 = load i8*, i8** @ironlake_irq_preinstall, align 8
  %172 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %173 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %172, i32 0, i32 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 5
  store i8* %171, i8** %175, align 8
  %176 = load i32, i32* @ironlake_irq_postinstall, align 4
  %177 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %178 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %177, i32 0, i32 1
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 4
  store i32 %176, i32* %180, align 8
  %181 = load i8*, i8** @ironlake_irq_uninstall, align 8
  %182 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %183 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  store i8* %181, i8** %185, align 8
  %186 = load i32, i32* @ironlake_enable_vblank, align 4
  %187 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %188 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %187, i32 0, i32 1
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  store i32 %186, i32* %190, align 4
  %191 = load i32, i32* @ironlake_disable_vblank, align 4
  %192 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %193 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %192, i32 0, i32 1
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 8
  br label %291

196:                                              ; preds = %161
  %197 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %198 = call %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device* %197)
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load i8*, i8** @i8xx_irq_preinstall, align 8
  %204 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %205 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %204, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 5
  store i8* %203, i8** %207, align 8
  %208 = load i32, i32* @i8xx_irq_postinstall, align 4
  %209 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %210 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %209, i32 0, i32 1
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 4
  store i32 %208, i32* %212, align 8
  %213 = load i32, i32* @i8xx_irq_handler, align 4
  %214 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %215 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %214, i32 0, i32 1
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  store i32 %213, i32* %217, align 8
  %218 = load i8*, i8** @i8xx_irq_uninstall, align 8
  %219 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %220 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %219, i32 0, i32 1
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  store i8* %218, i8** %222, align 8
  br label %280

223:                                              ; preds = %196
  %224 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %225 = call %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device* %224)
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 3
  br i1 %228, label %229, label %254

229:                                              ; preds = %223
  %230 = load i8*, i8** @i915_irq_preinstall, align 8
  %231 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %232 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %231, i32 0, i32 1
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 5
  store i8* %230, i8** %234, align 8
  %235 = load i32, i32* @i915_irq_postinstall, align 4
  %236 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %237 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %236, i32 0, i32 1
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 4
  store i32 %235, i32* %239, align 8
  %240 = load i8*, i8** @i915_irq_uninstall, align 8
  %241 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %242 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %241, i32 0, i32 1
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 3
  store i8* %240, i8** %244, align 8
  %245 = load i32, i32* @i915_irq_handler, align 4
  %246 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %247 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %246, i32 0, i32 1
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i32 %245, i32* %249, align 8
  %250 = load i32, i32* @i915_hpd_irq_setup, align 4
  %251 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %252 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 4
  br label %279

254:                                              ; preds = %223
  %255 = load i8*, i8** @i965_irq_preinstall, align 8
  %256 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %257 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %256, i32 0, i32 1
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 5
  store i8* %255, i8** %259, align 8
  %260 = load i32, i32* @i965_irq_postinstall, align 4
  %261 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %262 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %261, i32 0, i32 1
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 4
  store i32 %260, i32* %264, align 8
  %265 = load i8*, i8** @i965_irq_uninstall, align 8
  %266 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %267 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %266, i32 0, i32 1
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 3
  store i8* %265, i8** %269, align 8
  %270 = load i32, i32* @i965_irq_handler, align 4
  %271 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %272 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %271, i32 0, i32 1
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  store i32 %270, i32* %274, align 8
  %275 = load i32, i32* @i965_hpd_irq_setup, align 4
  %276 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %277 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 0
  store i32 %275, i32* %278, align 4
  br label %279

279:                                              ; preds = %254, %229
  br label %280

280:                                              ; preds = %279, %202
  %281 = load i32, i32* @i915_enable_vblank, align 4
  %282 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %283 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %282, i32 0, i32 1
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 1
  store i32 %281, i32* %285, align 4
  %286 = load i32, i32* @i915_disable_vblank, align 4
  %287 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %288 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %287, i32 0, i32 1
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  store i32 %286, i32* %290, align 8
  br label %291

291:                                              ; preds = %280, %165
  br label %292

292:                                              ; preds = %291, %130
  br label %293

293:                                              ; preds = %292, %87
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @pm_qos_add_request(i32*, i32, i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_device*) #1

declare dso_local %struct.TYPE_12__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_device*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
