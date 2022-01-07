; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_fini.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@TTM_PL_VRAM = common dso_local global i32 0, align 4
@TTM_PL_TT = common dso_local global i32 0, align 4
@DRM_MTRR_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_ttm_fini(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %3 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %4 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* @TTM_PL_VRAM, align 4
  %12 = call i32 @ttm_bo_clean_mm(i32* %10, i32 %11)
  %13 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* @TTM_PL_TT, align 4
  %17 = call i32 @ttm_bo_clean_mm(i32* %15, i32 %16)
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @ttm_bo_device_release(i32* %25)
  %27 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %28 = call i32 @nouveau_ttm_global_release(%struct.nouveau_drm* %27)
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %1
  %35 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pci_resource_start(i32 %43, i32 1)
  %45 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %46 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_resource_len(i32 %49, i32 1)
  %51 = load i32, i32* @DRM_MTRR_WC, align 4
  %52 = call i32 @drm_mtrr_del(i32 %38, i32 %44, i32 %50, i32 %51)
  %53 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  br label %56

56:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ttm_bo_clean_mm(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ttm_bo_device_release(i32*) #1

declare dso_local i32 @nouveau_ttm_global_release(%struct.nouveau_drm*) #1

declare dso_local i32 @drm_mtrr_del(i32, i32, i32, i32) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
