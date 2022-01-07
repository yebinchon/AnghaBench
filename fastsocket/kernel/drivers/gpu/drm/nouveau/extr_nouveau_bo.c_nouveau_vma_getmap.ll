; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_vma_getmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_vma_getmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.nouveau_bo = type { i32 }
%struct.ttm_mem_reg = type { i32, i64, %struct.nouveau_mem* }
%struct.nouveau_mem = type { i32 }
%struct.nouveau_vma = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.nouveau_bo*, %struct.ttm_mem_reg*, %struct.nouveau_vma*)* @nouveau_vma_getmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_vma_getmap(%struct.nouveau_channel* %0, %struct.nouveau_bo* %1, %struct.ttm_mem_reg* %2, %struct.nouveau_vma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.nouveau_bo*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.nouveau_vma*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.nouveau_vma* %3, %struct.nouveau_vma** %9, align 8
  %12 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %13 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %12, i32 0, i32 2
  %14 = load %struct.nouveau_mem*, %struct.nouveau_mem** %13, align 8
  store %struct.nouveau_mem* %14, %struct.nouveau_mem** %10, align 8
  %15 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @nv_client(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %27 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %30 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %31 = call i32 @nouveau_vm_get(i32 %20, i32 %25, i32 %28, i32 %29, %struct.nouveau_vma* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %56

36:                                               ; preds = %4
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %38 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TTM_PL_VRAM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %44 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %45 = call i32 @nouveau_vm_map(%struct.nouveau_vma* %43, %struct.nouveau_mem* %44)
  br label %55

46:                                               ; preds = %36
  %47 = load %struct.nouveau_vma*, %struct.nouveau_vma** %9, align 8
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %49 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %54 = call i32 @nouveau_vm_map_sg(%struct.nouveau_vma* %47, i32 0, i32 %52, %struct.nouveau_mem* %53)
  br label %55

55:                                               ; preds = %46, %42
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @nouveau_vm_get(i32, i32, i32, i32, %struct.nouveau_vma*) #1

declare dso_local %struct.TYPE_2__* @nv_client(i32) #1

declare dso_local i32 @nouveau_vm_map(%struct.nouveau_vma*, %struct.nouveau_mem*) #1

declare dso_local i32 @nouveau_vm_map_sg(%struct.nouveau_vma*, i32, i32, %struct.nouveau_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
