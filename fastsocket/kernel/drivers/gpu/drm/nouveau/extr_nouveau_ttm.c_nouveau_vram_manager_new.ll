; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_vram_manager_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.ttm_mem_reg = type { i32, i32, i32, %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32, i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.nouveau_mem**)* }
%struct.nouveau_fb.0 = type opaque
%struct.nouveau_bo = type { i32, i32 }

@NOUVEAU_GEM_TILE_NONCONTIG = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*)* @nouveau_vram_manager_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_vram_manager_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_placement* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_placement*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_drm*, align 8
  %11 = alloca %struct.nouveau_fb*, align 8
  %12 = alloca %struct.nouveau_bo*, align 8
  %13 = alloca %struct.nouveau_mem*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_placement* %2, %struct.ttm_placement** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.nouveau_drm* @nouveau_bdev(i32 %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %10, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %10, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.nouveau_fb* @nouveau_fb(i32 %22)
  store %struct.nouveau_fb* %23, %struct.nouveau_fb** %11, align 8
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %25 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %24)
  store %struct.nouveau_bo* %25, %struct.nouveau_bo** %12, align 8
  store i32 0, i32* %14, align 4
  %26 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %27 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NOUVEAU_GEM_TILE_NONCONTIG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %34 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  store i32 %36, i32* %14, align 4
  br label %37

37:                                               ; preds = %32, %4
  %38 = load %struct.nouveau_fb*, %struct.nouveau_fb** %11, align 8
  %39 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.nouveau_mem**)*, i32 (%struct.nouveau_fb.0*, i32, i32, i32, i32, %struct.nouveau_mem**)** %40, align 8
  %42 = load %struct.nouveau_fb*, %struct.nouveau_fb** %11, align 8
  %43 = bitcast %struct.nouveau_fb* %42 to %struct.nouveau_fb.0*
  %44 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %45 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %56 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 1023
  %60 = call i32 %41(%struct.nouveau_fb.0* %43, i32 %48, i32 %53, i32 %54, i32 %59, %struct.nouveau_mem** %13)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %37
  %64 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %65 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %64, i32 0, i32 3
  store %struct.nouveau_mem* null, %struct.nouveau_mem** %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %73

71:                                               ; preds = %63
  %72 = load i32, i32* %15, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  store i32 %74, i32* %5, align 4
  br label %91

75:                                               ; preds = %37
  %76 = load %struct.nouveau_bo*, %struct.nouveau_bo** %12, align 8
  %77 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nouveau_mem*, %struct.nouveau_mem** %13, align 8
  %80 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nouveau_mem*, %struct.nouveau_mem** %13, align 8
  %82 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %83 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %82, i32 0, i32 3
  store %struct.nouveau_mem* %81, %struct.nouveau_mem** %83, align 8
  %84 = load %struct.nouveau_mem*, %struct.nouveau_mem** %13, align 8
  %85 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = ashr i32 %86, %87
  %89 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %90 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %75, %73
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.nouveau_drm* @nouveau_bdev(i32) #1

declare dso_local %struct.nouveau_fb* @nouveau_fb(i32) #1

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
