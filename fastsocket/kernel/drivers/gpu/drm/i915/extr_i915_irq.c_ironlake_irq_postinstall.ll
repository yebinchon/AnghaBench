; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_ironlake_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@DE_MASTER_IRQ_CONTROL = common dso_local global i32 0, align 4
@DE_GSE = common dso_local global i32 0, align 4
@DE_PCH_EVENT = common dso_local global i32 0, align 4
@DE_PLANEA_FLIP_DONE = common dso_local global i32 0, align 4
@DE_PLANEB_FLIP_DONE = common dso_local global i32 0, align 4
@DE_AUX_CHANNEL_A = common dso_local global i32 0, align 4
@DEIIR = common dso_local global i32 0, align 4
@DEIMR = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@DE_PIPEA_VBLANK = common dso_local global i32 0, align 4
@DE_PIPEB_VBLANK = common dso_local global i32 0, align 4
@GTIIR = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@GT_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN6_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@GEN6_BLITTER_USER_INTERRUPT = common dso_local global i32 0, align 4
@GT_PIPE_NOTIFY = common dso_local global i32 0, align 4
@GT_BSD_USER_INTERRUPT = common dso_local global i32 0, align 4
@GTIER = common dso_local global i32 0, align 4
@DE_PCU_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ironlake_irq_postinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_irq_postinstall(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load i32, i32* @DE_MASTER_IRQ_CONTROL, align 4
  %11 = load i32, i32* @DE_GSE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DE_PCH_EVENT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DE_PLANEA_FLIP_DONE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DE_PLANEB_FLIP_DONE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @DE_AUX_CHANNEL_A, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @DEIIR, align 4
  %26 = load i32, i32* @DEIIR, align 4
  %27 = call i32 @I915_READ(i32 %26)
  %28 = call i32 @I915_WRITE(i32 %25, i32 %27)
  %29 = load i32, i32* @DEIMR, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_WRITE(i32 %29, i32 %32)
  %34 = load i32, i32* @DEIER, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DE_PIPEA_VBLANK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DE_PIPEB_VBLANK, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @I915_WRITE(i32 %34, i32 %39)
  %41 = load i32, i32* @DEIER, align 4
  %42 = call i32 @POSTING_READ(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load i32, i32* @GTIIR, align 4
  %46 = load i32, i32* @GTIIR, align 4
  %47 = call i32 @I915_READ(i32 %46)
  %48 = call i32 @I915_WRITE(i32 %45, i32 %47)
  %49 = load i32, i32* @GTIMR, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @I915_WRITE(i32 %49, i32 %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %55 = call i64 @IS_GEN6(%struct.drm_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %1
  %58 = load i32, i32* @GT_USER_INTERRUPT, align 4
  %59 = load i32, i32* @GEN6_BSD_USER_INTERRUPT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @GEN6_BLITTER_USER_INTERRUPT, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %1
  %64 = load i32, i32* @GT_USER_INTERRUPT, align 4
  %65 = load i32, i32* @GT_PIPE_NOTIFY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @GT_BSD_USER_INTERRUPT, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @GTIER, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @I915_WRITE(i32 %70, i32 %71)
  %73 = load i32, i32* @GTIER, align 4
  %74 = call i32 @POSTING_READ(i32 %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %76 = call i32 @ibx_irq_postinstall(%struct.drm_device* %75)
  %77 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %78 = call i64 @IS_IRONLAKE_M(%struct.drm_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %69
  %81 = load i32, i32* @DEIIR, align 4
  %82 = load i32, i32* @DE_PCU_EVENT, align 4
  %83 = call i32 @I915_WRITE(i32 %81, i32 %82)
  %84 = load i32, i32* @DEIER, align 4
  %85 = load i32, i32* @DEIER, align 4
  %86 = call i32 @I915_READ(i32 %85)
  %87 = load i32, i32* @DE_PCU_EVENT, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @I915_WRITE(i32 %84, i32 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = load i32, i32* @DE_PCU_EVENT, align 4
  %92 = call i32 @ironlake_enable_display_irq(%struct.TYPE_3__* %90, i32 %91)
  br label %93

93:                                               ; preds = %80, %69
  ret i32 0
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @IS_GEN6(%struct.drm_device*) #1

declare dso_local i32 @ibx_irq_postinstall(%struct.drm_device*) #1

declare dso_local i64 @IS_IRONLAKE_M(%struct.drm_device*) #1

declare dso_local i32 @ironlake_enable_display_irq(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
