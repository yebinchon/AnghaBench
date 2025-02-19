; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_gen6_do_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_gen6_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.1*)* }
%struct.drm_i915_private.0 = type opaque
%struct.drm_i915_private.1 = type opaque

@GEN6_GDRST = common dso_local global i32 0, align 4
@GEN6_GRDOM_FULL = common dso_local global i32 0, align 4
@GT_FIFO_FREE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @gen6_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_do_reset(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @GEN6_GDRST, align 4
  %14 = load i32, i32* @GEN6_GRDOM_FULL, align 4
  %15 = call i32 @I915_WRITE_NOTRACE(i32 %13, i32 %14)
  %16 = load i32, i32* @GEN6_GDRST, align 4
  %17 = call i32 @I915_READ_NOTRACE(i32 %16)
  %18 = load i32, i32* @GEN6_GRDOM_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @wait_for(i32 %21, i32 500)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (%struct.drm_i915_private.1*)*, i32 (%struct.drm_i915_private.1*)** %30, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = bitcast %struct.drm_i915_private* %32 to %struct.drm_i915_private.1*
  %34 = call i32 %31(%struct.drm_i915_private.1* %33)
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.drm_i915_private.0*)*, i32 (%struct.drm_i915_private.0*)** %38, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = bitcast %struct.drm_i915_private* %40 to %struct.drm_i915_private.0*
  %42 = call i32 %39(%struct.drm_i915_private.0* %41)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load i32, i32* @GT_FIFO_FREE_ENTRIES, align 4
  %45 = call i32 @I915_READ_NOTRACE(i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %48, i32 0, i32 1
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @I915_WRITE_NOTRACE(i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ_NOTRACE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
