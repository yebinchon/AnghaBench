; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_vunmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_dmabuf.c_i915_gem_dmabuf_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, i8*)* @i915_gem_dmabuf_vunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gem_dmabuf_vunmap(%struct.dma_buf* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %9 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  store %struct.drm_i915_gem_object* %10, %struct.drm_i915_gem_object** %5, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call i32 @i915_mutex_lock_interruptible(%struct.drm_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @vunmap(i32* %29)
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %34 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %33)
  br label %35

35:                                               ; preds = %26, %20
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %19
  ret void
}

declare dso_local i32 @i915_mutex_lock_interruptible(%struct.drm_device*) #1

declare dso_local i32 @vunmap(i32*) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
