; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_pageflip_stall_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_pageflip_stall_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_crtc** }
%struct.drm_crtc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.intel_crtc = type { i32, %struct.intel_unpin_work* }
%struct.intel_unpin_work = type { %struct.drm_i915_gem_object*, i32, i32 }
%struct.drm_i915_gem_object = type { i64 }
%struct.TYPE_6__ = type { i32 }

@INTEL_FLIP_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Pageflip stall detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @i915_pageflip_stall_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_pageflip_stall_check(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca %struct.intel_unpin_work*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_crtc**, %struct.drm_crtc*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_crtc*, %struct.drm_crtc** %19, i64 %21
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %22, align 8
  store %struct.drm_crtc* %23, %struct.drm_crtc** %6, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %25 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %24)
  store %struct.intel_crtc* %25, %struct.intel_crtc** %7, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %27 = icmp eq %struct.intel_crtc* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %128

29:                                               ; preds = %2
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %34, i32 0, i32 1
  %36 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %35, align 8
  store %struct.intel_unpin_work* %36, %struct.intel_unpin_work** %9, align 8
  %37 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %9, align 8
  %38 = icmp eq %struct.intel_unpin_work* %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %29
  %40 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %9, align 8
  %41 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %40, i32 0, i32 2
  %42 = call i64 @atomic_read(i32* %41)
  %43 = load i64, i64* @INTEL_FLIP_COMPLETE, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %9, align 8
  %47 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %39, %29
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  br label %128

55:                                               ; preds = %45
  %56 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %9, align 8
  %57 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %56, i32 0, i32 0
  %58 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %57, align 8
  store %struct.drm_i915_gem_object* %58, %struct.drm_i915_gem_object** %8, align 8
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = call %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 4
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %66 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DSPSURF(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @I915_READ(i32 %69)
  %71 = call i64 @I915_HI_DISPBASE(i64 %70)
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %73 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %11, align 4
  br label %114

77:                                               ; preds = %55
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %79 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @DSPADDR(i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @I915_READ(i32 %82)
  %84 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %85 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %88 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %91 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %89, %96
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %86, %98
  %100 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %101 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %104 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %102, %107
  %109 = sdiv i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %99, %110
  %112 = icmp eq i64 %83, %111
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %77, %64
  %115 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %125 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @intel_prepare_page_flip(%struct.drm_device* %123, i32 %126)
  br label %128

128:                                              ; preds = %28, %50, %121, %114
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_6__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @DSPSURF(i32) #1

declare dso_local i64 @I915_HI_DISPBASE(i64) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @DSPADDR(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @intel_prepare_page_flip(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
