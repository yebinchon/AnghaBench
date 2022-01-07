; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_drps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_enable_drps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MEMMODECTL = common dso_local global i32 0, align 4
@mchdev_lock = common dso_local global i32 0, align 4
@PMMISC = common dso_local global i32 0, align 4
@MCPPCE_EN = common dso_local global i32 0, align 4
@TSC1 = common dso_local global i32 0, align 4
@TSE = common dso_local global i32 0, align 4
@RCUPEI = common dso_local global i32 0, align 4
@RCDNEI = common dso_local global i32 0, align 4
@RCBMAXAVG = common dso_local global i32 0, align 4
@RCBMINAVG = common dso_local global i32 0, align 4
@MEMIHYST = common dso_local global i32 0, align 4
@MEMMODE_FMAX_MASK = common dso_local global i32 0, align 4
@MEMMODE_FMAX_SHIFT = common dso_local global i32 0, align 4
@MEMMODE_FMIN_MASK = common dso_local global i32 0, align 4
@MEMMODE_FSTART_MASK = common dso_local global i32 0, align 4
@MEMMODE_FSTART_SHIFT = common dso_local global i32 0, align 4
@PXVFREQ_BASE = common dso_local global i32 0, align 4
@PXVFREQ_PX_MASK = common dso_local global i32 0, align 4
@PXVFREQ_PX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fmax: %d, fmin: %d, fstart: %d\0A\00", align 1
@MEMINTREN = common dso_local global i32 0, align 4
@MEMINT_CX_SUPR_EN = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG_EN = common dso_local global i32 0, align 4
@VIDSTART = common dso_local global i32 0, align 4
@MEMMODE_SWMODE_EN = common dso_local global i32 0, align 4
@MEMSWCTL = common dso_local global i32 0, align 4
@MEMCTL_CMD_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"stuck trying to change perf mode\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_enable_drps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_enable_drps(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load i32, i32* @MEMMODECTL, align 4
  %13 = call i32 @I915_READ(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %15 = load i32, i32* @PMMISC, align 4
  %16 = load i32, i32* @PMMISC, align 4
  %17 = call i32 @I915_READ(i32 %16)
  %18 = load i32, i32* @MCPPCE_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @I915_WRITE16(i32 %15, i32 %19)
  %21 = load i32, i32* @TSC1, align 4
  %22 = load i32, i32* @TSC1, align 4
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @TSE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @I915_WRITE16(i32 %21, i32 %25)
  %27 = load i32, i32* @RCUPEI, align 4
  %28 = call i32 @I915_WRITE(i32 %27, i32 100000)
  %29 = load i32, i32* @RCDNEI, align 4
  %30 = call i32 @I915_WRITE(i32 %29, i32 100000)
  %31 = load i32, i32* @RCBMAXAVG, align 4
  %32 = call i32 @I915_WRITE(i32 %31, i32 90000)
  %33 = load i32, i32* @RCBMINAVG, align 4
  %34 = call i32 @I915_WRITE(i32 %33, i32 80000)
  %35 = load i32, i32* @MEMIHYST, align 4
  %36 = call i32 @I915_WRITE(i32 %35, i32 1)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MEMMODE_FMAX_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MEMMODE_FMAX_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MEMMODE_FMIN_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MEMMODE_FSTART_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @MEMMODE_FSTART_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @PXVFREQ_BASE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 %51, 4
  %53 = add nsw i32 %50, %52
  %54 = call i32 @I915_READ(i32 %53)
  %55 = load i32, i32* @PXVFREQ_PX_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PXVFREQ_PX_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %77 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @MEMINTREN, align 4
  %84 = load i32, i32* @MEMINT_CX_SUPR_EN, align 4
  %85 = load i32, i32* @MEMINT_EVAL_CHG_EN, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @I915_WRITE(i32 %83, i32 %86)
  %88 = load i32, i32* @VIDSTART, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @I915_WRITE(i32 %88, i32 %89)
  %91 = load i32, i32* @VIDSTART, align 4
  %92 = call i32 @POSTING_READ(i32 %91)
  %93 = load i32, i32* @MEMMODE_SWMODE_EN, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @MEMMODECTL, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @I915_WRITE(i32 %96, i32 %97)
  %99 = load i32, i32* @MEMSWCTL, align 4
  %100 = call i32 @I915_READ(i32 %99)
  %101 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i64 @wait_for_atomic(i32 %104, i32 10)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %1
  %108 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %1
  %110 = call i32 @mdelay(i32 1)
  %111 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @ironlake_set_drps(%struct.drm_device* %111, i32 %112)
  %114 = call i32 @I915_READ(i32 70372)
  %115 = call i32 @I915_READ(i32 70376)
  %116 = add nsw i32 %114, %115
  %117 = call i32 @I915_READ(i32 70368)
  %118 = add nsw i32 %116, %117
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 5
  store i32 %118, i32* %121, align 4
  %122 = load i32, i32* @jiffies, align 4
  %123 = call i32 @jiffies_to_msecs(i32 %122)
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %125 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 8
  store i32 %123, i32* %126, align 4
  %127 = call i32 @I915_READ(i32 70388)
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %129 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 6
  store i32 %127, i32* %130, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 7
  %134 = call i32 @getrawmonotonic(i32* %133)
  %135 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  ret void
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @I915_WRITE16(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @wait_for_atomic(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ironlake_set_drps(%struct.drm_device*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @getrawmonotonic(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
