; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { %struct.dma_buf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*)* @drm_gem_dmabuf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gem_dmabuf_release(%struct.dma_buf* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %2, align 8
  %4 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %5 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %4, i32 0, i32 0
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  store %struct.drm_gem_object* %6, %struct.drm_gem_object** %3, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.dma_buf*, %struct.dma_buf** %8, align 8
  %10 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %11 = icmp eq %struct.dma_buf* %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %13, i32 0, i32 0
  store %struct.dma_buf* null, %struct.dma_buf** %14, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %16 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %15)
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
