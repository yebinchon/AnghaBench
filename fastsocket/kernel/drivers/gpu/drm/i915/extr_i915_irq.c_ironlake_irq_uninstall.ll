; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_uninstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_uninstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }

@HWSTAM = common dso_local global i32 0, align 4
@DEIMR = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@DEIIR = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@GTIER = common dso_local global i32 0, align 4
@GTIIR = common dso_local global i32 0, align 4
@SDEIMR = common dso_local global i32 0, align 4
@SDEIER = common dso_local global i32 0, align 4
@SDEIIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ironlake_irq_uninstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_irq_uninstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @HWSTAM, align 4
  %13 = call i32 @I915_WRITE(i32 %12, i32 -1)
  %14 = load i32, i32* @DEIMR, align 4
  %15 = call i32 @I915_WRITE(i32 %14, i32 -1)
  %16 = load i32, i32* @DEIER, align 4
  %17 = call i32 @I915_WRITE(i32 %16, i32 0)
  %18 = load i32, i32* @DEIIR, align 4
  %19 = load i32, i32* @DEIIR, align 4
  %20 = call i32 @I915_READ(i32 %19)
  %21 = call i32 @I915_WRITE(i32 %18, i32 %20)
  %22 = load i32, i32* @GTIMR, align 4
  %23 = call i32 @I915_WRITE(i32 %22, i32 -1)
  %24 = load i32, i32* @GTIER, align 4
  %25 = call i32 @I915_WRITE(i32 %24, i32 0)
  %26 = load i32, i32* @GTIIR, align 4
  %27 = load i32, i32* @GTIIR, align 4
  %28 = call i32 @I915_READ(i32 %27)
  %29 = call i32 @I915_WRITE(i32 %26, i32 %28)
  %30 = load i32, i32* @SDEIMR, align 4
  %31 = call i32 @I915_WRITE(i32 %30, i32 -1)
  %32 = load i32, i32* @SDEIER, align 4
  %33 = call i32 @I915_WRITE(i32 %32, i32 0)
  %34 = load i32, i32* @SDEIIR, align 4
  %35 = load i32, i32* @SDEIIR, align 4
  %36 = call i32 @I915_READ(i32 %35)
  %37 = call i32 @I915_WRITE(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
