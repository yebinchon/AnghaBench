; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_get_tile_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_get_tile_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm_tile = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.nouveau_drm_tile* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_drm_tile* (%struct.drm_device*, i32)* @nv10_bo_get_tile_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_drm_tile* @nv10_bo_get_tile_region(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nouveau_drm_tile*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %5, align 8
  %9 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %12, i64 %14
  store %struct.nouveau_drm_tile* %15, %struct.nouveau_drm_tile** %6, align 8
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %2
  %25 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %6, align 8
  %26 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nouveau_fence_done(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %24
  %36 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %6, align 8
  %37 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %39

38:                                               ; preds = %29, %2
  store %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %6, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %6, align 8
  ret %struct.nouveau_drm_tile* %44
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @nouveau_fence_done(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
