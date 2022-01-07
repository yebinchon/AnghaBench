; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_init_clock_gating.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_init_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@ILK_VRHUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFCRUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFCUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DPFDUNIT_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@PCH_3DCGDIS0 = common dso_local global i32 0, align 4
@MARIUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@SVSMUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@PCH_3DCGDIS1 = common dso_local global i32 0, align 4
@VFMUNIT_CLOCK_GATE_DISABLE = common dso_local global i32 0, align 4
@ILK_DISPLAY_CHICKEN2 = common dso_local global i32 0, align 4
@ILK_DPARB_GATE = common dso_local global i32 0, align 4
@ILK_VSDPFD_FULL = common dso_local global i32 0, align 4
@ILK_DPARBUNIT_CLOCK_GATE_ENABLE = common dso_local global i32 0, align 4
@DISP_ARB_CTL = common dso_local global i32 0, align 4
@DISP_FBC_WM_DIS = common dso_local global i32 0, align 4
@WM3_LP_ILK = common dso_local global i32 0, align 4
@WM2_LP_ILK = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@ILK_DISPLAY_CHICKEN1 = common dso_local global i32 0, align 4
@ILK_FBCQ_DIS = common dso_local global i32 0, align 4
@ILK_DSPCLK_GATE_D = common dso_local global i32 0, align 4
@ILK_ELPIN_409_SELECT = common dso_local global i32 0, align 4
@_3D_CHICKEN2 = common dso_local global i32 0, align 4
@_3D_CHICKEN2_WM_READ_PIPELINED = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@CM0_PIPELINED_RENDER_FLUSH_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_init_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_init_clock_gating(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load i32, i32* @ILK_VRHUNIT_CLOCK_GATE_DISABLE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @ILK_DPFCRUNIT_CLOCK_GATE_DISABLE, align 4
  %10 = load i32, i32* @ILK_DPFCUNIT_CLOCK_GATE_DISABLE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ILK_DPFDUNIT_CLOCK_GATE_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @PCH_3DCGDIS0, align 4
  %17 = load i32, i32* @MARIUNIT_CLOCK_GATE_DISABLE, align 4
  %18 = load i32, i32* @SVSMUNIT_CLOCK_GATE_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @I915_WRITE(i32 %16, i32 %19)
  %21 = load i32, i32* @PCH_3DCGDIS1, align 4
  %22 = load i32, i32* @VFMUNIT_CLOCK_GATE_DISABLE, align 4
  %23 = call i32 @I915_WRITE(i32 %21, i32 %22)
  %24 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %25 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @ILK_DPARB_GATE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ILK_VSDPFD_FULL, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @I915_WRITE(i32 %24, i32 %30)
  %32 = load i32, i32* @ILK_DPARBUNIT_CLOCK_GATE_ENABLE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @DISP_ARB_CTL, align 4
  %36 = load i32, i32* @DISP_ARB_CTL, align 4
  %37 = call i32 @I915_READ(i32 %36)
  %38 = load i32, i32* @DISP_FBC_WM_DIS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @I915_WRITE(i32 %35, i32 %39)
  %41 = load i32, i32* @WM3_LP_ILK, align 4
  %42 = call i32 @I915_WRITE(i32 %41, i32 0)
  %43 = load i32, i32* @WM2_LP_ILK, align 4
  %44 = call i32 @I915_WRITE(i32 %43, i32 0)
  %45 = load i32, i32* @WM1_LP_ILK, align 4
  %46 = call i32 @I915_WRITE(i32 %45, i32 0)
  %47 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %48 = call i64 @IS_IRONLAKE_M(%struct.drm_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %1
  %51 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %52 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %53 = call i32 @I915_READ(i32 %52)
  %54 = load i32, i32* @ILK_FBCQ_DIS, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @I915_WRITE(i32 %51, i32 %55)
  %57 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %58 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %59 = call i32 @I915_READ(i32 %58)
  %60 = load i32, i32* @ILK_DPARB_GATE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @I915_WRITE(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %50, %1
  %64 = load i32, i32* @ILK_DSPCLK_GATE_D, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @I915_WRITE(i32 %64, i32 %65)
  %67 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %68 = load i32, i32* @ILK_DISPLAY_CHICKEN2, align 4
  %69 = call i32 @I915_READ(i32 %68)
  %70 = load i32, i32* @ILK_ELPIN_409_SELECT, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @I915_WRITE(i32 %67, i32 %71)
  %73 = load i32, i32* @_3D_CHICKEN2, align 4
  %74 = load i32, i32* @_3D_CHICKEN2_WM_READ_PIPELINED, align 4
  %75 = shl i32 %74, 16
  %76 = load i32, i32* @_3D_CHICKEN2_WM_READ_PIPELINED, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @I915_WRITE(i32 %73, i32 %77)
  %79 = load i32, i32* @CACHE_MODE_0, align 4
  %80 = load i32, i32* @CM0_PIPELINED_RENDER_FLUSH_DISABLE, align 4
  %81 = call i32 @_MASKED_BIT_ENABLE(i32 %80)
  %82 = call i32 @I915_WRITE(i32 %79, i32 %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %84 = call i32 @ibx_init_clock_gating(%struct.drm_device* %83)
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_device*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @ibx_init_clock_gating(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
