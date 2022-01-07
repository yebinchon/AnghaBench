; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_write_sdvox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_write_sdvox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@PCH_SDVOB = common dso_local global i64 0, align 8
@SDVOB = common dso_local global i64 0, align 8
@SDVOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_sdvo*, i32)* @intel_sdvo_write_sdvox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_write_sdvox(%struct.intel_sdvo* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %11 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %21 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCH_SDVOB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %27 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @I915_WRITE(i64 %28, i32 %29)
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @I915_READ(i64 %33)
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %37 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SDVOB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i64, i64* @SDVOC, align 8
  %43 = call i32 @I915_READ(i64 %42)
  store i32 %43, i32* %8, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i64, i64* @SDVOB, align 8
  %46 = call i32 @I915_READ(i64 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %41
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i64, i64* @SDVOB, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @I915_WRITE(i64 %52, i32 %53)
  %55 = load i64, i64* @SDVOB, align 8
  %56 = call i32 @I915_READ(i64 %55)
  %57 = load i64, i64* @SDVOC, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @I915_WRITE(i64 %57, i32 %58)
  %60 = load i64, i64* @SDVOC, align 8
  %61 = call i32 @I915_READ(i64 %60)
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %48

65:                                               ; preds = %25, %48
  ret void
}

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @I915_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
