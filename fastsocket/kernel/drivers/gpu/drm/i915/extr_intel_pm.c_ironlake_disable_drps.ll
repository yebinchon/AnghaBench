; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_drps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_drps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@MEMSWCTL = common dso_local global i32 0, align 4
@MEMINTREN = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG_EN = common dso_local global i32 0, align 4
@MEMINTRSTS = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@DE_PCU_EVENT = common dso_local global i32 0, align 4
@DEIIR = common dso_local global i32 0, align 4
@DEIMR = common dso_local global i32 0, align 4
@MEMCTL_CMD_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_disable_drps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_disable_drps(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %9 = load i32, i32* @MEMSWCTL, align 4
  %10 = call i32 @I915_READ16(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @MEMINTREN, align 4
  %12 = load i32, i32* @MEMINTREN, align 4
  %13 = call i32 @I915_READ(i32 %12)
  %14 = load i32, i32* @MEMINT_EVAL_CHG_EN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @I915_WRITE(i32 %11, i32 %16)
  %18 = load i32, i32* @MEMINTRSTS, align 4
  %19 = load i32, i32* @MEMINT_EVAL_CHG, align 4
  %20 = call i32 @I915_WRITE(i32 %18, i32 %19)
  %21 = load i32, i32* @DEIER, align 4
  %22 = load i32, i32* @DEIER, align 4
  %23 = call i32 @I915_READ(i32 %22)
  %24 = load i32, i32* @DE_PCU_EVENT, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @I915_WRITE(i32 %21, i32 %26)
  %28 = load i32, i32* @DEIIR, align 4
  %29 = load i32, i32* @DE_PCU_EVENT, align 4
  %30 = call i32 @I915_WRITE(i32 %28, i32 %29)
  %31 = load i32, i32* @DEIMR, align 4
  %32 = load i32, i32* @DEIMR, align 4
  %33 = call i32 @I915_READ(i32 %32)
  %34 = load i32, i32* @DE_PCU_EVENT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @I915_WRITE(i32 %31, i32 %35)
  %37 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ironlake_set_drps(%struct.drm_device* %37, i32 %41)
  %43 = call i32 @mdelay(i32 1)
  %44 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @MEMSWCTL, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = call i32 @mdelay(i32 1)
  %51 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @I915_READ16(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @ironlake_set_drps(%struct.drm_device*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
