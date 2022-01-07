; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_unload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private*, %struct.TYPE_12__*, i32 }
%struct.drm_i915_private = type { i32, i64, i32, i32, i32*, %struct.TYPE_11__, i64, %struct.drm_i915_private*, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"failed to idle hardware: %d\0A\00", align 1
@DRIVER_MODESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_driver_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = call i32 (...) @intel_gpu_ips_teardown()
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i32 @i915_teardown_sysfs(%struct.drm_device* %9)
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = call i32 @unregister_shrinker(%struct.TYPE_13__* %20)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %27 = call i32 @i915_gpu_idle(%struct.drm_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = call i32 @i915_gem_retire_requests(%struct.drm_device* %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 2
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = call i32 @cancel_delayed_work_sync(i32* %41)
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @io_mapping_free(i32 %46)
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %33
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 9
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %59 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mtrr_del(i32 %57, i32 %61, i32 %65)
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  br label %70

70:                                               ; preds = %53, %33
  %71 = call i32 (...) @acpi_video_unregister()
  %72 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %73 = load i32, i32* @DRIVER_MODESET, align 4
  %74 = call i64 @drm_core_check_feature(%struct.drm_device* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %78 = call i32 @intel_fbdev_fini(%struct.drm_device* %77)
  %79 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %80 = call i32 @intel_modeset_cleanup(%struct.drm_device* %79)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %81, i32 0, i32 8
  %83 = call i32 @cancel_work_sync(i32* %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 7
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %85, align 8
  %87 = icmp ne %struct.drm_i915_private* %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %76
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %95 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %94, i32 0, i32 7
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %95, align 8
  %97 = call i32 @kfree(%struct.drm_i915_private* %96)
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 7
  store %struct.drm_i915_private* null, %struct.drm_i915_private** %99, align 8
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %93, %88, %76
  %103 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = call i32 @vga_switcheroo_unregister_client(%struct.TYPE_12__* %105)
  %107 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = call i32 @vga_client_register(%struct.TYPE_12__* %109, i32* null, i32* null, i32* null)
  br label %111

111:                                              ; preds = %102, %70
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = call i32 @del_timer_sync(i32* %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = call i32 @cancel_work_sync(i32* %118)
  %120 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %121 = call i32 @i915_destroy_error_state(%struct.drm_device* %120)
  %122 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %111
  %129 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = call i32 @pci_disable_msi(%struct.TYPE_12__* %131)
  br label %133

133:                                              ; preds = %128, %111
  %134 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %135 = call i32 @intel_opregion_fini(%struct.drm_device* %134)
  %136 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %137 = load i32, i32* @DRIVER_MODESET, align 4
  %138 = call i64 @drm_core_check_feature(%struct.drm_device* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %133
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @flush_workqueue(i32 %143)
  %145 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %146 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %145, i32 0, i32 2
  %147 = call i32 @mutex_lock(i32* %146)
  %148 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %149 = call i32 @i915_gem_free_all_phys_object(%struct.drm_device* %148)
  %150 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %151 = call i32 @i915_gem_cleanup_ringbuffer(%struct.drm_device* %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %153 = call i32 @i915_gem_context_fini(%struct.drm_device* %152)
  %154 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %155 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %154, i32 0, i32 2
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %158 = call i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device* %157)
  %159 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %160 = call i32 @i915_gem_cleanup_stolen(%struct.drm_device* %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %162 = call i32 @I915_NEED_GFX_HWS(%struct.drm_device* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %140
  %165 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %166 = call i32 @i915_free_hws(%struct.drm_device* %165)
  br label %167

167:                                              ; preds = %164, %140
  br label %168

168:                                              ; preds = %167, %133
  %169 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %170 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %175 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %178 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @pci_iounmap(%struct.TYPE_12__* %176, i32* %179)
  br label %181

181:                                              ; preds = %173, %168
  %182 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %183 = call i32 @intel_teardown_gmbus(%struct.drm_device* %182)
  %184 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %185 = call i32 @intel_teardown_mchbar(%struct.drm_device* %184)
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @destroy_workqueue(i32 %188)
  %190 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %191 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %190, i32 0, i32 2
  %192 = call i32 @pm_qos_remove_request(i32* %191)
  %193 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %194 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %181
  %198 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %199 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @kmem_cache_destroy(i64 %200)
  br label %202

202:                                              ; preds = %197, %181
  %203 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %204 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @pci_dev_put(i32 %205)
  %207 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %208 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %207, i32 0, i32 0
  %209 = load %struct.drm_i915_private*, %struct.drm_i915_private** %208, align 8
  %210 = call i32 @kfree(%struct.drm_i915_private* %209)
  ret i32 0
}

declare dso_local i32 @intel_gpu_ips_teardown(...) #1

declare dso_local i32 @i915_teardown_sysfs(%struct.drm_device*) #1

declare dso_local i32 @unregister_shrinker(%struct.TYPE_13__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_gpu_idle(%struct.drm_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @i915_gem_retire_requests(%struct.drm_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @io_mapping_free(i32) #1

declare dso_local i32 @mtrr_del(i32, i32, i32) #1

declare dso_local i32 @acpi_video_unregister(...) #1

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_fbdev_fini(%struct.drm_device*) #1

declare dso_local i32 @intel_modeset_cleanup(%struct.drm_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.drm_i915_private*) #1

declare dso_local i32 @vga_switcheroo_unregister_client(%struct.TYPE_12__*) #1

declare dso_local i32 @vga_client_register(%struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @i915_destroy_error_state(%struct.drm_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_12__*) #1

declare dso_local i32 @intel_opregion_fini(%struct.drm_device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @i915_gem_free_all_phys_object(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_cleanup_ringbuffer(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_context_fini(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_cleanup_aliasing_ppgtt(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_cleanup_stolen(%struct.drm_device*) #1

declare dso_local i32 @I915_NEED_GFX_HWS(%struct.drm_device*) #1

declare dso_local i32 @i915_free_hws(%struct.drm_device*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @intel_teardown_gmbus(%struct.drm_device*) #1

declare dso_local i32 @intel_teardown_mchbar(%struct.drm_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @kmem_cache_destroy(i64) #1

declare dso_local i32 @pci_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
