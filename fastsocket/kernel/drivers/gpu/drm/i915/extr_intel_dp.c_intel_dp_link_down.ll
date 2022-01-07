; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_dp_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32, i32, i32 }
%struct.intel_digital_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc*, %struct.drm_device* }
%struct.drm_crtc = type { i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc = type { i32 }

@DP_PORT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DP_LINK_TRAIN_MASK_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_IDLE_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_IDLE = common dso_local global i32 0, align 4
@DP_PIPEB_SELECT = common dso_local global i32 0, align 4
@DP_AUDIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*)* @intel_dp_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_link_down(%struct.intel_dp* %0) #0 {
  %2 = alloca %struct.intel_dp*, align 8
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_crtc*, align 8
  store %struct.intel_dp* %0, %struct.intel_dp** %2, align 8
  %9 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %10 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %9)
  store %struct.intel_digital_port* %10, %struct.intel_digital_port** %3, align 8
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %12 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %5, align 8
  %19 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %20 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  %24 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %23)
  store %struct.intel_crtc* %24, %struct.intel_crtc** %6, align 8
  %25 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %26 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i64 @HAS_DDI(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %156

32:                                               ; preds = %1
  %33 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %34 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @I915_READ(i32 %35)
  %37 = load i32, i32* @DP_PORT_EN, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %156

44:                                               ; preds = %32
  %45 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = call i64 @HAS_PCH_CPT(%struct.drm_device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = call i64 @IS_GEN7(%struct.drm_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %55 = call i32 @is_cpu_edp(%struct.intel_dp* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* @DP_LINK_TRAIN_MASK_CPT, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %63 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @DP_LINK_TRAIN_PAT_IDLE_CPT, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @I915_WRITE(i32 %64, i32 %67)
  br label %81

69:                                               ; preds = %53, %44
  %70 = load i32, i32* @DP_LINK_TRAIN_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %75 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @DP_LINK_TRAIN_PAT_IDLE, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @I915_WRITE(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %69, %57
  %82 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %83 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @POSTING_READ(i32 %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %87 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %88 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @intel_wait_for_vblank(%struct.drm_device* %86, i32 %89)
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = call i64 @HAS_PCH_IBX(%struct.drm_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %135

94:                                               ; preds = %81
  %95 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %96 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I915_READ(i32 %97)
  %99 = load i32, i32* @DP_PIPEB_SELECT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %94
  %103 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %104 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load %struct.drm_crtc*, %struct.drm_crtc** %106, align 8
  store %struct.drm_crtc* %107, %struct.drm_crtc** %8, align 8
  %108 = load i32, i32* @DP_PIPEB_SELECT, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %113 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @I915_WRITE(i32 %114, i32 %115)
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %118 = icmp eq %struct.drm_crtc* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i64 @WARN_ON(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %102
  %123 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %124 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @POSTING_READ(i32 %125)
  %127 = call i32 @msleep(i32 50)
  br label %134

128:                                              ; preds = %102
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %131 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @intel_wait_for_vblank(%struct.drm_device* %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %122
  br label %135

135:                                              ; preds = %134, %94, %81
  %136 = load i32, i32* @DP_AUDIO_OUTPUT_ENABLE, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %7, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %141 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @DP_PORT_EN, align 4
  %145 = xor i32 %144, -1
  %146 = and i32 %143, %145
  %147 = call i32 @I915_WRITE(i32 %142, i32 %146)
  %148 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %149 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @POSTING_READ(i32 %150)
  %152 = load %struct.intel_dp*, %struct.intel_dp** %2, align 8
  %153 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @msleep(i32 %154)
  br label %156

156:                                              ; preds = %135, %43, %31
  ret void
}

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_device*) #1

declare dso_local i64 @IS_GEN7(%struct.drm_device*) #1

declare dso_local i32 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_device*, i32) #1

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
