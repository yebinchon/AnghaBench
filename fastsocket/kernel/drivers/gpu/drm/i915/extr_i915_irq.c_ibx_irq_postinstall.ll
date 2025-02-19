; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ibx_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@SDE_HOTPLUG_MASK = common dso_local global i32 0, align 4
@SDE_GMBUS = common dso_local global i32 0, align 4
@SDE_AUX_MASK = common dso_local global i32 0, align 4
@SDE_HOTPLUG_MASK_CPT = common dso_local global i32 0, align 4
@SDE_GMBUS_CPT = common dso_local global i32 0, align 4
@SDE_AUX_MASK_CPT = common dso_local global i32 0, align 4
@SDEIIR = common dso_local global i32 0, align 4
@SDEIMR = common dso_local global i32 0, align 4
@SDEIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ibx_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibx_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = call i64 @HAS_PCH_IBX(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @SDE_HOTPLUG_MASK, align 4
  %14 = load i32, i32* @SDE_GMBUS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SDE_AUX_MASK, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @SDE_HOTPLUG_MASK_CPT, align 4
  %20 = load i32, i32* @SDE_GMBUS_CPT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SDE_AUX_MASK_CPT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @SDEIIR, align 4
  %26 = load i32, i32* @SDEIIR, align 4
  %27 = call i32 @I915_READ(i32 %26)
  %28 = call i32 @I915_WRITE(i32 %25, i32 %27)
  %29 = load i32, i32* @SDEIMR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = xor i32 %30, -1
  %32 = call i32 @I915_WRITE(i32 %29, i32 %31)
  %33 = load i32, i32* @SDEIER, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @I915_WRITE(i32 %33, i32 %34)
  %36 = load i32, i32* @SDEIER, align 4
  %37 = call i32 @POSTING_READ(i32 %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %39 = call i32 @ibx_enable_hotplug(%struct.drm_device* %38)
  ret void
}

declare dso_local i64 @HAS_PCH_IBX(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @ibx_enable_hotplug(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
