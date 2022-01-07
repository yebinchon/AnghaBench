; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_dma.c_i915_driver_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_16__*, i8*, i32* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32*, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__, i32, %struct.intel_device_info*, %struct.drm_device* }
%struct.TYPE_14__ = type { i32 (%struct.drm_device.0*)*, i32*, i32, i32 }
%struct.drm_device.0 = type opaque
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.intel_device_info = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@_DRM_STAT_IRQ = common dso_local global i32 0, align 4
@_DRM_STAT_PRIMARY = common dso_local global i32 0, align 4
@_DRM_STAT_SECONDARY = common dso_local global i32 0, align 4
@_DRM_STAT_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to map registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"i915\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to create our workqueue.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to init modeset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_driver_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_device_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.intel_device_info*
  store %struct.intel_device_info* %13, %struct.intel_device_info** %7, align 8
  %14 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %15 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load i32, i32* @DRIVER_MODESET, align 4
  %21 = call i64 @drm_core_check_feature(%struct.drm_device* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %389

26:                                               ; preds = %18, %2
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* @_DRM_STAT_IRQ, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @_DRM_STAT_PRIMARY, align 4
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @_DRM_STAT_SECONDARY, align 4
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @_DRM_STAT_DMA, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.drm_i915_private* @kzalloc(i32 4, i32 %51)
  store %struct.drm_i915_private* %52, %struct.drm_i915_private** %6, align 8
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %54 = icmp eq %struct.drm_i915_private* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %26
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %389

58:                                               ; preds = %26
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %60 = bitcast %struct.drm_i915_private* %59 to i8*
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 12
  store %struct.drm_device* %63, %struct.drm_device** %65, align 8
  %66 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 11
  store %struct.intel_device_info* %66, %struct.intel_device_info** %68, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %70 = call i32 @i915_dump_device_info(%struct.drm_i915_private* %69)
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = call i64 @i915_get_bridge_dev(%struct.drm_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %385

77:                                               ; preds = %58
  %78 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %79 = call i32 @i915_gem_gtt_init(%struct.drm_device* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %380

83:                                               ; preds = %77
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = load i32, i32* @DRIVER_MODESET, align 4
  %86 = call i64 @drm_core_check_feature(%struct.drm_device* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %90 = call i32 @i915_kick_out_firmware_fb(%struct.drm_i915_private* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %93 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = call i32 @pci_set_master(%struct.TYPE_16__* %94)
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = call i64 @IS_GEN2(%struct.drm_device* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = call i32 @DMA_BIT_MASK(i32 30)
  %105 = call i32 @dma_set_coherent_mask(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %91
  %107 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %108 = call i64 @IS_BROADWATER(%struct.drm_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %112 = call i64 @IS_CRESTLINE(%struct.drm_device* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %110, %106
  %115 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = call i32 @DMA_BIT_MASK(i32 32)
  %120 = call i32 @dma_set_coherent_mask(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %110
  %122 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %123 = call i64 @IS_GEN2(%struct.drm_device* %122)
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 1, i32 0
  store i32 %126, i32* %9, align 4
  %127 = load %struct.intel_device_info*, %struct.intel_device_info** %7, align 8
  %128 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 5
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  store i32 524288, i32* %10, align 4
  br label %133

132:                                              ; preds = %121
  store i32 2097152, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %135 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @pci_iomap(%struct.TYPE_16__* %136, i32 %137, i32 %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %141 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %143 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %133
  %147 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %372

150:                                              ; preds = %133
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %152 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %11, align 4
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %156 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32* @io_mapping_create_wc(i32 %158, i32 %159)
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  store i32* %160, i32** %163, align 8
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %150
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %364

172:                                              ; preds = %150
  %173 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %175 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @i915_mtrr_setup(%struct.drm_i915_private* %173, i32 %177, i32 %178)
  %180 = call i32* @alloc_ordered_workqueue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %182 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %181, i32 0, i32 5
  store i32* %180, i32** %182, align 8
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %184 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %172
  %188 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %8, align 4
  br label %338

191:                                              ; preds = %172
  %192 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %193 = call i32 @intel_detect_pch(%struct.drm_device* %192)
  %194 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %195 = call i32 @intel_irq_init(%struct.drm_device* %194)
  %196 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %197 = call i32 @intel_gt_init(%struct.drm_device* %196)
  %198 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %199 = call i32 @intel_setup_mchbar(%struct.drm_device* %198)
  %200 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %201 = call i32 @intel_setup_gmbus(%struct.drm_device* %200)
  %202 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %203 = call i32 @intel_opregion_setup(%struct.drm_device* %202)
  %204 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %205 = call i32 @intel_setup_bios(%struct.drm_device* %204)
  %206 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %207 = call i32 @i915_gem_load(%struct.drm_device* %206)
  %208 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %209 = call i32 @IS_I945G(%struct.drm_device* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %191
  %212 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %213 = call i32 @IS_I945GM(%struct.drm_device* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %217 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %216, i32 0, i32 1
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = call i32 @pci_enable_msi(%struct.TYPE_16__* %218)
  br label %220

220:                                              ; preds = %215, %211, %191
  %221 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %222 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %221, i32 0, i32 10
  %223 = call i32 @spin_lock_init(i32* %222)
  %224 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %225 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = call i32 @spin_lock_init(i32* %226)
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %229 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %228, i32 0, i32 7
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 1
  %231 = call i32 @spin_lock_init(i32* %230)
  %232 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %233 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %232, i32 0, i32 8
  %234 = call i32 @mutex_init(i32* %233)
  %235 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %236 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = call i32 @mutex_init(i32* %237)
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %240 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %239, i32 0, i32 6
  %241 = call i32 @mutex_init(i32* %240)
  %242 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %243 = call i64 @IS_IVYBRIDGE(%struct.drm_device* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %220
  %246 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %247 = call i64 @IS_HASWELL(%struct.drm_device* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245, %220
  %250 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %251 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %250, i32 0, i32 0
  store i32 3, i32* %251, align 8
  br label %267

252:                                              ; preds = %245
  %253 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %254 = call i64 @IS_MOBILE(%struct.drm_device* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %258 = call i64 @IS_GEN2(%struct.drm_device* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256, %252
  %261 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %262 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %261, i32 0, i32 0
  store i32 2, i32* %262, align 8
  br label %266

263:                                              ; preds = %256
  %264 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %265 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %264, i32 0, i32 0
  store i32 1, i32* %265, align 8
  br label %266

266:                                              ; preds = %263, %260
  br label %267

267:                                              ; preds = %266, %249
  %268 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %269 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %270 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @drm_vblank_init(%struct.drm_device* %268, i32 %271)
  store i32 %272, i32* %8, align 4
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %267
  br label %305

276:                                              ; preds = %267
  %277 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %278 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  store i32 1, i32* %279, align 8
  %280 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %281 = load i32, i32* @DRIVER_MODESET, align 4
  %282 = call i64 @drm_core_check_feature(%struct.drm_device* %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %276
  %285 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %286 = call i32 @i915_load_modeset_init(%struct.drm_device* %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %305

291:                                              ; preds = %284
  br label %292

292:                                              ; preds = %291, %276
  %293 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %294 = call i32 @i915_setup_sysfs(%struct.drm_device* %293)
  %295 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %296 = call i32 @intel_opregion_init(%struct.drm_device* %295)
  %297 = call i32 (...) @acpi_video_register()
  %298 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %299 = call i64 @IS_GEN5(%struct.drm_device* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %292
  %302 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %303 = call i32 @intel_gpu_ips_init(%struct.drm_i915_private* %302)
  br label %304

304:                                              ; preds = %301, %292
  store i32 0, i32* %3, align 4
  br label %389

305:                                              ; preds = %289, %275
  %306 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %307 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %306, i32 0, i32 4
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %305
  %313 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %314 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = call i32 @unregister_shrinker(%struct.TYPE_15__* %315)
  br label %317

317:                                              ; preds = %312, %305
  %318 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %319 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %318, i32 0, i32 1
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %317
  %325 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %326 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %325, i32 0, i32 1
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = call i32 @pci_disable_msi(%struct.TYPE_16__* %327)
  br label %329

329:                                              ; preds = %324, %317
  %330 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %331 = call i32 @intel_teardown_gmbus(%struct.drm_device* %330)
  %332 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %333 = call i32 @intel_teardown_mchbar(%struct.drm_device* %332)
  %334 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %335 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %334, i32 0, i32 5
  %336 = load i32*, i32** %335, align 8
  %337 = call i32 @destroy_workqueue(i32* %336)
  br label %338

338:                                              ; preds = %329, %187
  %339 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %340 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp sge i32 %342, 0
  br i1 %343, label %344, label %358

344:                                              ; preds = %338
  %345 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %346 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %345, i32 0, i32 4
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %350 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* %11, align 4
  %354 = call i32 @mtrr_del(i32 %348, i32 %352, i32 %353)
  %355 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %356 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %355, i32 0, i32 4
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 1
  store i32 -1, i32* %357, align 4
  br label %358

358:                                              ; preds = %344, %338
  %359 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %360 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @io_mapping_free(i32* %362)
  br label %364

364:                                              ; preds = %358, %169
  %365 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %366 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %365, i32 0, i32 1
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %366, align 8
  %368 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %369 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @pci_iounmap(%struct.TYPE_16__* %367, i32 %370)
  br label %372

372:                                              ; preds = %364, %146
  %373 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %374 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 0
  %376 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %375, align 8
  %377 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %378 = bitcast %struct.drm_device* %377 to %struct.drm_device.0*
  %379 = call i32 %376(%struct.drm_device.0* %378)
  br label %380

380:                                              ; preds = %372, %82
  %381 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %382 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @pci_dev_put(i32 %383)
  br label %385

385:                                              ; preds = %380, %74
  %386 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %387 = call i32 @kfree(%struct.drm_i915_private* %386)
  %388 = load i32, i32* %8, align 4
  store i32 %388, i32* %3, align 4
  br label %389

389:                                              ; preds = %385, %304, %55, %23
  %390 = load i32, i32* %3, align 4
  ret i32 %390
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_i915_private* @kzalloc(i32, i32) #1

declare dso_local i32 @i915_dump_device_info(%struct.drm_i915_private*) #1

declare dso_local i64 @i915_get_bridge_dev(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_gtt_init(%struct.drm_device*) #1

declare dso_local i32 @i915_kick_out_firmware_fb(%struct.drm_i915_private*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_16__*) #1

declare dso_local i64 @IS_GEN2(%struct.drm_device*) #1

declare dso_local i32 @dma_set_coherent_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IS_BROADWATER(%struct.drm_device*) #1

declare dso_local i64 @IS_CRESTLINE(%struct.drm_device*) #1

declare dso_local i32 @pci_iomap(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32* @io_mapping_create_wc(i32, i32) #1

declare dso_local i32 @i915_mtrr_setup(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32* @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local i32 @intel_detect_pch(%struct.drm_device*) #1

declare dso_local i32 @intel_irq_init(%struct.drm_device*) #1

declare dso_local i32 @intel_gt_init(%struct.drm_device*) #1

declare dso_local i32 @intel_setup_mchbar(%struct.drm_device*) #1

declare dso_local i32 @intel_setup_gmbus(%struct.drm_device*) #1

declare dso_local i32 @intel_opregion_setup(%struct.drm_device*) #1

declare dso_local i32 @intel_setup_bios(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_load(%struct.drm_device*) #1

declare dso_local i32 @IS_I945G(%struct.drm_device*) #1

declare dso_local i32 @IS_I945GM(%struct.drm_device*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_16__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_device*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @i915_load_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @i915_setup_sysfs(%struct.drm_device*) #1

declare dso_local i32 @intel_opregion_init(%struct.drm_device*) #1

declare dso_local i32 @acpi_video_register(...) #1

declare dso_local i64 @IS_GEN5(%struct.drm_device*) #1

declare dso_local i32 @intel_gpu_ips_init(%struct.drm_i915_private*) #1

declare dso_local i32 @unregister_shrinker(%struct.TYPE_15__*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_16__*) #1

declare dso_local i32 @intel_teardown_gmbus(%struct.drm_device*) #1

declare dso_local i32 @intel_teardown_mchbar(%struct.drm_device*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @mtrr_del(i32, i32, i32) #1

declare dso_local i32 @io_mapping_free(i32*) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pci_dev_put(i32) #1

declare dso_local i32 @kfree(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
