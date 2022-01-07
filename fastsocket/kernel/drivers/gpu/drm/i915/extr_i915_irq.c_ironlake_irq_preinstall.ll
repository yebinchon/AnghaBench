; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32 }

@HWSTAM = common dso_local global i32 0, align 4
@DEIMR = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@GTIER = common dso_local global i32 0, align 4
@SDEIMR = common dso_local global i32 0, align 4
@SDEIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_irq_preinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_irq_preinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load i32, i32* @HWSTAM, align 4
  %12 = call i32 @I915_WRITE(i32 %11, i32 61438)
  %13 = load i32, i32* @DEIMR, align 4
  %14 = call i32 @I915_WRITE(i32 %13, i32 -1)
  %15 = load i32, i32* @DEIER, align 4
  %16 = call i32 @I915_WRITE(i32 %15, i32 0)
  %17 = load i32, i32* @DEIER, align 4
  %18 = call i32 @POSTING_READ(i32 %17)
  %19 = load i32, i32* @GTIMR, align 4
  %20 = call i32 @I915_WRITE(i32 %19, i32 -1)
  %21 = load i32, i32* @GTIER, align 4
  %22 = call i32 @I915_WRITE(i32 %21, i32 0)
  %23 = load i32, i32* @GTIER, align 4
  %24 = call i32 @POSTING_READ(i32 %23)
  %25 = load i32, i32* @SDEIMR, align 4
  %26 = call i32 @I915_WRITE(i32 %25, i32 -1)
  %27 = load i32, i32* @SDEIER, align 4
  %28 = call i32 @I915_WRITE(i32 %27, i32 0)
  %29 = load i32, i32* @SDEIER, align 4
  %30 = call i32 @POSTING_READ(i32 %29)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
