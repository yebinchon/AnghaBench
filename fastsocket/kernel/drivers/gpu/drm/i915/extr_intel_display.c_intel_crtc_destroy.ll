; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_crtc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc = type { i32, %struct.intel_crtc* }
%struct.intel_unpin_work = type { i32, %struct.intel_unpin_work* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @intel_crtc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_crtc_destroy(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.intel_unpin_work*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call %struct.intel_unpin_work* @to_intel_crtc(%struct.drm_crtc* %7)
  %9 = bitcast %struct.intel_unpin_work* %8 to %struct.intel_crtc*
  store %struct.intel_crtc* %9, %struct.intel_crtc** %3, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %18 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %17, i32 0, i32 1
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %18, align 8
  %20 = bitcast %struct.intel_crtc* %19 to %struct.intel_unpin_work*
  store %struct.intel_unpin_work* %20, %struct.intel_unpin_work** %5, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 1
  store %struct.intel_crtc* null, %struct.intel_crtc** %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %5, align 8
  %28 = icmp ne %struct.intel_unpin_work* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %5, align 8
  %31 = getelementptr inbounds %struct.intel_unpin_work, %struct.intel_unpin_work* %30, i32 0, i32 0
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.intel_unpin_work*, %struct.intel_unpin_work** %5, align 8
  %34 = call i32 @kfree(%struct.intel_unpin_work* %33)
  br label %35

35:                                               ; preds = %29, %1
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %37 = call i32 @drm_crtc_cleanup(%struct.drm_crtc* %36)
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %39 = bitcast %struct.intel_crtc* %38 to %struct.intel_unpin_work*
  %40 = call i32 @kfree(%struct.intel_unpin_work* %39)
  ret void
}

declare dso_local %struct.intel_unpin_work* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kfree(%struct.intel_unpin_work*) #1

declare dso_local i32 @drm_crtc_cleanup(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
