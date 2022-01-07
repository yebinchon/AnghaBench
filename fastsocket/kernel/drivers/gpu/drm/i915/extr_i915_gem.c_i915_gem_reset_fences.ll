; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_reset_fences.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_reset_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32, %struct.TYPE_2__, %struct.drm_i915_fence_reg* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_fence_reg = type { i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i915_gem_reset_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_reset_fences(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_fence_reg*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 2
  %18 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %18, i64 %20
  store %struct.drm_i915_fence_reg* %21, %struct.drm_i915_fence_reg** %5, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @i915_gem_write_fence(%struct.drm_device* %22, i32 %23, i32* null)
  %25 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %15
  %30 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %31 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @i915_gem_object_fence_lost(i32* %32)
  br label %34

34:                                               ; preds = %29, %15
  %35 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %36 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %38 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.drm_i915_fence_reg*, %struct.drm_i915_fence_reg** %5, align 8
  %40 = getelementptr inbounds %struct.drm_i915_fence_reg, %struct.drm_i915_fence_reg* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  ret void
}

declare dso_local i32 @i915_gem_write_fence(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @i915_gem_object_fence_lost(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
