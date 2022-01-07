; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_create_ttm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_sgdma.c_nouveau_sgdma_create_ttm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32* }
%struct.ttm_bo_device = type { i32 }
%struct.page = type { i32 }
%struct.nouveau_drm = type { i32, i32 }
%struct.nouveau_sgdma_be = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ttm_tt }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NV_50 = common dso_local global i64 0, align 8
@nv04_sgdma_backend = common dso_local global i32 0, align 4
@nv50_sgdma_backend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ttm_tt* @nouveau_sgdma_create_ttm(%struct.ttm_bo_device* %0, i64 %1, i32 %2, %struct.page* %3) #0 {
  %5 = alloca %struct.ttm_tt*, align 8
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_sgdma_be*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  %12 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %13 = call %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nouveau_sgdma_be* @kzalloc(i32 16, i32 %14)
  store %struct.nouveau_sgdma_be* %15, %struct.nouveau_sgdma_be** %11, align 8
  %16 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %17 = icmp ne %struct.nouveau_sgdma_be* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.ttm_tt* null, %struct.ttm_tt** %5, align 8
  br label %59

19:                                               ; preds = %4
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %24 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_4__* @nv_device(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NV_50, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %35 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %36, i32 0, i32 0
  store i32* @nv04_sgdma_backend, i32** %37, align 8
  br label %43

38:                                               ; preds = %19
  %39 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %40 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %41, i32 0, i32 0
  store i32* @nv50_sgdma_backend, i32** %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %45 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %44, i32 0, i32 0
  %46 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i64 @ttm_dma_tt_init(%struct.TYPE_3__* %45, %struct.ttm_bo_device* %46, i64 %47, i32 %48, %struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %54 = call i32 @kfree(%struct.nouveau_sgdma_be* %53)
  store %struct.ttm_tt* null, %struct.ttm_tt** %5, align 8
  br label %59

55:                                               ; preds = %43
  %56 = load %struct.nouveau_sgdma_be*, %struct.nouveau_sgdma_be** %11, align 8
  %57 = getelementptr inbounds %struct.nouveau_sgdma_be, %struct.nouveau_sgdma_be* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.ttm_tt* %58, %struct.ttm_tt** %5, align 8
  br label %59

59:                                               ; preds = %55, %52, %18
  %60 = load %struct.ttm_tt*, %struct.ttm_tt** %5, align 8
  ret %struct.ttm_tt* %60
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(%struct.ttm_bo_device*) #1

declare dso_local %struct.nouveau_sgdma_be* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(i32) #1

declare dso_local i64 @ttm_dma_tt_init(%struct.TYPE_3__*, %struct.ttm_bo_device*, i64, i32, %struct.page*) #1

declare dso_local i32 @kfree(%struct.nouveau_sgdma_be*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
