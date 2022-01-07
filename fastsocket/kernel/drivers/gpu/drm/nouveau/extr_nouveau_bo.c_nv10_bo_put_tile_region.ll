; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_put_tile_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_put_tile_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm_tile = type { i32, %struct.nouveau_fence* }
%struct.nouveau_fence = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_drm_tile*, %struct.nouveau_fence*)* @nv10_bo_put_tile_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_bo_put_tile_region(%struct.drm_device* %0, %struct.nouveau_drm_tile* %1, %struct.nouveau_fence* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_drm_tile*, align 8
  %6 = alloca %struct.nouveau_fence*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nouveau_drm_tile* %1, %struct.nouveau_drm_tile** %5, align 8
  store %struct.nouveau_fence* %2, %struct.nouveau_fence** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %7, align 8
  %10 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %5, align 8
  %11 = icmp ne %struct.nouveau_drm_tile* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %3
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.nouveau_fence*, %struct.nouveau_fence** %6, align 8
  %18 = icmp ne %struct.nouveau_fence* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.nouveau_fence*, %struct.nouveau_fence** %6, align 8
  %21 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %21, i32 0, i32 1
  store %struct.nouveau_fence* %20, %struct.nouveau_fence** %22, align 8
  %23 = load %struct.nouveau_fence*, %struct.nouveau_fence** %6, align 8
  %24 = call i32 @nouveau_fence_ref(%struct.nouveau_fence* %23)
  br label %25

25:                                               ; preds = %19, %12
  %26 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %5, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  br label %32

32:                                               ; preds = %25, %3
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nouveau_fence_ref(%struct.nouveau_fence*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
