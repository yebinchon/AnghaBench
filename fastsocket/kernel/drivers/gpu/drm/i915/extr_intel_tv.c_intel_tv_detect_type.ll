; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_detect_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_tv.c_intel_tv_detect_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_tv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_encoder }
%struct.drm_encoder = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_connector = type { i32 }
%struct.intel_crtc = type { i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@PIPE_HOTPLUG_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PIPE_HOTPLUG_TV_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@TV_DAC = common dso_local global i32 0, align 4
@TV_CTL = common dso_local global i32 0, align 4
@TV_ENC_ENABLE = common dso_local global i32 0, align 4
@TV_TEST_MODE_MASK = common dso_local global i32 0, align 4
@TV_TEST_MODE_MONITOR_DETECT = common dso_local global i32 0, align 4
@TV_ENC_PIPEB_SELECT = common dso_local global i32 0, align 4
@TVDAC_SENSE_MASK = common dso_local global i32 0, align 4
@DAC_A_MASK = common dso_local global i32 0, align 4
@DAC_B_MASK = common dso_local global i32 0, align 4
@DAC_C_MASK = common dso_local global i32 0, align 4
@TVDAC_STATE_CHG_EN = common dso_local global i32 0, align 4
@TVDAC_A_SENSE_CTL = common dso_local global i32 0, align 4
@TVDAC_B_SENSE_CTL = common dso_local global i32 0, align 4
@TVDAC_C_SENSE_CTL = common dso_local global i32 0, align 4
@DAC_CTL_OVERRIDE = common dso_local global i32 0, align 4
@DAC_A_0_7_V = common dso_local global i32 0, align 4
@DAC_B_0_7_V = common dso_local global i32 0, align 4
@DAC_C_0_7_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TV detected: %x, %x\0A\00", align 1
@TVDAC_B_SENSE = common dso_local global i32 0, align 4
@TVDAC_C_SENSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Detected Composite TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_Composite = common dso_local global i32 0, align 4
@TVDAC_A_SENSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Detected S-Video TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Detected Component TV connection\0A\00", align 1
@DRM_MODE_CONNECTOR_Component = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Unrecognised TV connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_tv*, %struct.drm_connector*)* @intel_tv_detect_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_detect_type(%struct.intel_tv* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.intel_tv*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_tv* %0, %struct.intel_tv** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %16 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %17 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.drm_encoder* %18, %struct.drm_encoder** %5, align 8
  %19 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %20 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %19, i32 0, i32 0
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %6, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %23 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %22)
  store %struct.intel_crtc* %23, %struct.intel_crtc** %7, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 1
  %26 = load %struct.drm_device*, %struct.drm_device** %25, align 8
  store %struct.drm_device* %26, %struct.drm_device** %8, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %28, align 8
  store %struct.drm_i915_private* %29, %struct.drm_i915_private** %9, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %42 = load i32, i32* @PIPE_HOTPLUG_INTERRUPT_ENABLE, align 4
  %43 = load i32, i32* @PIPE_HOTPLUG_TV_INTERRUPT_ENABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @i915_disable_pipestat(%struct.drm_i915_private* %41, i32 0, i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %36, %2
  %51 = load i32, i32* @TV_DAC, align 4
  %52 = call i32 @I915_READ(i32 %51)
  store i32 %52, i32* %13, align 4
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* @TV_CTL, align 4
  %54 = call i32 @I915_READ(i32 %53)
  store i32 %54, i32* %11, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @TV_ENC_ENABLE, align 4
  %56 = load i32, i32* @TV_TEST_MODE_MASK, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @TV_TEST_MODE_MONITOR_DETECT, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %65 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load i32, i32* @TV_ENC_PIPEB_SELECT, align 4
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %77

72:                                               ; preds = %50
  %73 = load i32, i32* @TV_ENC_PIPEB_SELECT, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %79 = load i32, i32* @DAC_A_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @DAC_B_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @DAC_C_MASK, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %89 = load i32, i32* @TVDAC_A_SENSE_CTL, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @TVDAC_B_SENSE_CTL, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @TVDAC_C_SENSE_CTL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @DAC_CTL_OVERRIDE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @DAC_A_0_7_V, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DAC_B_0_7_V, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @DAC_C_0_7_V, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %13, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %106 = call i64 @IS_GM45(%struct.drm_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %77
  %109 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %110 = load i32, i32* @TVDAC_A_SENSE_CTL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @TVDAC_B_SENSE_CTL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @TVDAC_C_SENSE_CTL, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %13, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %108, %77
  %120 = load i32, i32* @TV_CTL, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @I915_WRITE(i32 %120, i32 %121)
  %123 = load i32, i32* @TV_DAC, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @I915_WRITE(i32 %123, i32 %124)
  %126 = load i32, i32* @TV_DAC, align 4
  %127 = call i32 @POSTING_READ(i32 %126)
  %128 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %129 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %130, i32 0, i32 1
  %132 = load %struct.drm_device*, %struct.drm_device** %131, align 8
  %133 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %134 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %135, i32 0, i32 0
  %137 = load %struct.drm_crtc*, %struct.drm_crtc** %136, align 8
  %138 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %137)
  %139 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @intel_wait_for_vblank(%struct.drm_device* %132, i32 %140)
  store i32 -1, i32* %15, align 4
  %142 = load i32, i32* @TV_DAC, align 4
  %143 = call i32 @I915_READ(i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* @TVDAC_B_SENSE, align 4
  %151 = load i32, i32* @TVDAC_C_SENSE, align 4
  %152 = or i32 %150, %151
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %119
  %155 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %156 = load i32, i32* @DRM_MODE_CONNECTOR_Composite, align 4
  store i32 %156, i32* %15, align 4
  br label %180

157:                                              ; preds = %119
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @TVDAC_A_SENSE, align 4
  %160 = load i32, i32* @TVDAC_B_SENSE, align 4
  %161 = or i32 %159, %160
  %162 = and i32 %158, %161
  %163 = load i32, i32* @TVDAC_A_SENSE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  store i32 %167, i32* %15, align 4
  br label %179

168:                                              ; preds = %157
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* @TVDAC_SENSE_MASK, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @DRM_MODE_CONNECTOR_Component, align 4
  store i32 %175, i32* %15, align 4
  br label %178

176:                                              ; preds = %168
  %177 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %15, align 4
  br label %178

178:                                              ; preds = %176, %173
  br label %179

179:                                              ; preds = %178, %165
  br label %180

180:                                              ; preds = %179, %154
  %181 = load i32, i32* @TV_DAC, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @TVDAC_STATE_CHG_EN, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = call i32 @I915_WRITE(i32 %181, i32 %185)
  %187 = load i32, i32* @TV_CTL, align 4
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @I915_WRITE(i32 %187, i32 %188)
  %190 = load i32, i32* @TV_CTL, align 4
  %191 = call i32 @POSTING_READ(i32 %190)
  %192 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %193 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %194, i32 0, i32 1
  %196 = load %struct.drm_device*, %struct.drm_device** %195, align 8
  %197 = load %struct.intel_tv*, %struct.intel_tv** %3, align 8
  %198 = getelementptr inbounds %struct.intel_tv, %struct.intel_tv* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %199, i32 0, i32 0
  %201 = load %struct.drm_crtc*, %struct.drm_crtc** %200, align 8
  %202 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %201)
  %203 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @intel_wait_for_vblank(%struct.drm_device* %196, i32 %204)
  %206 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %207 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %180
  %213 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %214 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %213, i32 0, i32 0
  %215 = load i64, i64* %10, align 8
  %216 = call i32 @spin_lock_irqsave(i32* %214, i64 %215)
  %217 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %218 = load i32, i32* @PIPE_HOTPLUG_INTERRUPT_ENABLE, align 4
  %219 = load i32, i32* @PIPE_HOTPLUG_TV_INTERRUPT_ENABLE, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @i915_enable_pipestat(%struct.drm_i915_private* %217, i32 0, i32 %220)
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %223 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %222, i32 0, i32 0
  %224 = load i64, i64* %10, align 8
  %225 = call i32 @spin_unlock_irqrestore(i32* %223, i64 %224)
  br label %226

226:                                              ; preds = %212, %180
  %227 = load i32, i32* %15, align 4
  ret i32 %227
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @i915_disable_pipestat(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GM45(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @i915_enable_pipestat(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
