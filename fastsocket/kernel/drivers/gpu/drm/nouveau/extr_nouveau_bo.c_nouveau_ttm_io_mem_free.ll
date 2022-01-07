; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_io_mem_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_io_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { i32 }
%struct.ttm_mem_reg = type { %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_bar = type { i32 (%struct.nouveau_bar*, %struct.TYPE_2__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_bo_device*, %struct.ttm_mem_reg*)* @nouveau_ttm_io_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_ttm_io_mem_free(%struct.ttm_bo_device* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca %struct.ttm_bo_device*, align 8
  %4 = alloca %struct.ttm_mem_reg*, align 8
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_bar*, align 8
  %7 = alloca %struct.nouveau_mem*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %3, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %4, align 8
  %8 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %3, align 8
  %9 = call %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %5, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nouveau_bar* @nouveau_bar(i32 %12)
  store %struct.nouveau_bar* %13, %struct.nouveau_bar** %6, align 8
  %14 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %4, align 8
  %15 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  %16 = load %struct.nouveau_mem*, %struct.nouveau_mem** %15, align 8
  store %struct.nouveau_mem* %16, %struct.nouveau_mem** %7, align 8
  %17 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %18 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %31

23:                                               ; preds = %2
  %24 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %25 = getelementptr inbounds %struct.nouveau_bar, %struct.nouveau_bar* %24, i32 0, i32 0
  %26 = load i32 (%struct.nouveau_bar*, %struct.TYPE_2__*)*, i32 (%struct.nouveau_bar*, %struct.TYPE_2__*)** %25, align 8
  %27 = load %struct.nouveau_bar*, %struct.nouveau_bar** %6, align 8
  %28 = load %struct.nouveau_mem*, %struct.nouveau_mem** %7, align 8
  %29 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %28, i32 0, i32 0
  %30 = call i32 %26(%struct.nouveau_bar* %27, %struct.TYPE_2__* %29)
  br label %31

31:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device*) #1

declare dso_local %struct.nouveau_bar* @nouveau_bar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
