; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_do_intel_finish_page_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_do_intel_finish_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.intel_crtc = type { i32, i32, %struct.intel_unpin_work* }
%struct.intel_unpin_work = type { i32, i32, %struct.drm_i915_gem_object*, i64, i32 }
%struct.drm_i915_gem_object = type { i32 }

@INTEL_FLIP_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_crtc*)* @do_intel_finish_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_intel_finish_page_flip(%struct.drm_device* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_unpin_work*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %14 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %13)
  store %struct.intel_crtc* %14, %struct.intel_crtc** %6, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %16 = icmp eq %struct.intel_crtc* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %86

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %24 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %23, i32 0, i32 2
  %25 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %24, align 8
  store %struct.intel_unpin_work* %25, %struct.intel_unpin_work** %7, align 8
  %26 = call i32 (...) @smp_rmb()
  %27 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %28 = icmp eq %struct.intel_unpin_work* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %18
  %30 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %31 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %30, i32 0, i32 4
  %32 = call i64 @atomic_read(i32* %31)
  %33 = load i64, i64* @INTEL_FLIP_COMPLETE, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29, %18
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %86

40:                                               ; preds = %29
  %41 = call i32 (...) @smp_rmb()
  %42 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %43 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %42, i32 0, i32 2
  store %struct.intel_unpin_work* null, %struct.intel_unpin_work** %43, align 8
  %44 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %45 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %51 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %54 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @drm_send_vblank_event(%struct.drm_device* %49, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %48, %40
  %58 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %59 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %60 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @drm_vblank_put(%struct.drm_device* %58, i32 %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %68 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %67, i32 0, i32 2
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %68, align 8
  store %struct.drm_i915_gem_object* %69, %struct.drm_i915_gem_object** %8, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @wake_up_all(i32* %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %77 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %76, i32 0, i32 1
  %78 = call i32 @queue_work(i32 %75, i32* %77)
  %79 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %80 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %7, align 8
  %83 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @trace_i915_flip_complete(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %57, %35, %17
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drm_send_vblank_event(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @drm_vblank_put(%struct.drm_device*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @trace_i915_flip_complete(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
