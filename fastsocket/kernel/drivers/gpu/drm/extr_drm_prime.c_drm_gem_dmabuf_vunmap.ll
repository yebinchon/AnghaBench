; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_vunmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_prime.c_drm_gem_dmabuf_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.drm_gem_object* }
%struct.drm_gem_object = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.drm_gem_object*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, i8*)* @drm_gem_dmabuf_vunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_gem_dmabuf_vunmap(%struct.dma_buf* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.drm_device*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %8 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %7, i32 0, i32 0
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %9, %struct.drm_gem_object** %5, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, i8*)** %16, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 %17(%struct.drm_gem_object* %18, i8* %19)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
