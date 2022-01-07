; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_pipe_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_set_pipe_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_set_pipe_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_set_pipe_timings(%struct.intel_crtc* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %8, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = call i32 @IS_GEN2(%struct.drm_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %3
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 2
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %11, align 4
  br label %53

52:                                               ; preds = %28, %3
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %55 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @VSYNCSHIFT(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @I915_WRITE(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @HTOTAL(i32 %65)
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 %74, 16
  %76 = or i32 %70, %75
  %77 = call i32 @I915_WRITE(i32 %66, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @HBLANK(i32 %78)
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = shl i32 %87, 16
  %89 = or i32 %83, %88
  %90 = call i32 @I915_WRITE(i32 %79, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @HSYNC(i32 %91)
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = shl i32 %100, 16
  %102 = or i32 %96, %101
  %103 = call i32 @I915_WRITE(i32 %92, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @VTOTAL(i32 %104)
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = shl i32 %113, 16
  %115 = or i32 %109, %114
  %116 = call i32 @I915_WRITE(i32 %105, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @VBLANK(i32 %117)
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = shl i32 %126, 16
  %128 = or i32 %122, %127
  %129 = call i32 @I915_WRITE(i32 %118, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @VSYNC(i32 %130)
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = shl i32 %139, 16
  %141 = or i32 %135, %140
  %142 = call i32 @I915_WRITE(i32 %131, i32 %141)
  %143 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %144 = call i64 @IS_HASWELL(%struct.drm_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %165

146:                                              ; preds = %64
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @TRANSCODER_EDP, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @PIPE_B, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @PIPE_C, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %154, %150
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @VTOTAL(i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @VTOTAL(i32 %161)
  %163 = call i32 @I915_READ(i32 %162)
  %164 = call i32 @I915_WRITE(i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %154, %146, %64
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @PIPESRC(i32 %166)
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 13
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  %172 = shl i32 %171, 16
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %174 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %173, i32 0, i32 14
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 1
  %177 = or i32 %172, %176
  %178 = call i32 @I915_WRITE(i32 %167, i32 %177)
  ret void
}

declare dso_local i32 @IS_GEN2(%struct.drm_device*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @VSYNCSHIFT(i32) #1

declare dso_local i32 @HTOTAL(i32) #1

declare dso_local i32 @HBLANK(i32) #1

declare dso_local i32 @HSYNC(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPESRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
