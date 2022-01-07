; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_fault_reserve_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_ttm_fault_reserve_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.nouveau_device = type { i64, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@NV_50 = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*)* @nouveau_ttm_fault_reserve_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_ttm_fault_reserve_notify(%struct.ttm_buffer_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nouveau_device*, align 8
  %7 = alloca i64, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.nouveau_drm* @nouveau_bdev(i32 %10)
  store %struct.nouveau_drm* %11, %struct.nouveau_drm** %4, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %13 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %12)
  store %struct.nouveau_bo* %13, %struct.nouveau_bo** %5, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nouveau_device* @nv_device(i32 %16)
  store %struct.nouveau_device* %17, %struct.nouveau_device** %6, align 8
  %18 = load %struct.nouveau_device*, %struct.nouveau_device** %6, align 8
  %19 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @pci_resource_len(i32 %20, i32 1)
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = ashr i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TTM_PL_VRAM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nouveau_device* @nv_device(i32 %33)
  %35 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NV_50, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %41 = call i32 @nouveau_bo_tile_layout(%struct.nouveau_bo* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39, %30
  store i32 0, i32* %2, align 4
  br label %71

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %51 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %49, %53
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %71

58:                                               ; preds = %45
  %59 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %60 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %64 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %67 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %68 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %66, i32 %67, i32 0)
  %69 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %70 = call i32 @nouveau_bo_validate(%struct.nouveau_bo* %69, i32 0, i32 0)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %58, %57, %43
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.nouveau_device* @nv_device(i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @nouveau_bo_tile_layout(%struct.nouveau_bo*) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

declare dso_local i32 @nouveau_bo_validate(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
