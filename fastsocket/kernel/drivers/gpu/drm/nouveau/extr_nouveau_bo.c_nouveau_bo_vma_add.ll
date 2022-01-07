; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vma_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vma_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, %struct.nouveau_mem* }
%struct.nouveau_mem = type { i64 }
%struct.nouveau_vm = type { i32 }
%struct.nouveau_vma = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NV_MEM_ACCESS_RW = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_vma_add(%struct.nouveau_bo* %0, %struct.nouveau_vm* %1, %struct.nouveau_vma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nouveau_vm*, align 8
  %7 = alloca %struct.nouveau_vma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_mem*, align 8
  %10 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %5, align 8
  store %struct.nouveau_vm* %1, %struct.nouveau_vm** %6, align 8
  store %struct.nouveau_vma* %2, %struct.nouveau_vma** %7, align 8
  %11 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %12 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %19 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load %struct.nouveau_mem*, %struct.nouveau_mem** %21, align 8
  store %struct.nouveau_mem* %22, %struct.nouveau_mem** %9, align 8
  %23 = load %struct.nouveau_vm*, %struct.nouveau_vm** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %26 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NV_MEM_ACCESS_RW, align 4
  %29 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %30 = call i32 @nouveau_vm_get(%struct.nouveau_vm* %23, i32 %24, i32 %27, i32 %28, %struct.nouveau_vma* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %84

35:                                               ; preds = %3
  %36 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %37 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TTM_PL_VRAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %45 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %46 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load %struct.nouveau_mem*, %struct.nouveau_mem** %48, align 8
  %50 = call i32 @nouveau_vm_map(%struct.nouveau_vma* %44, %struct.nouveau_mem* %49)
  br label %76

51:                                               ; preds = %35
  %52 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %53 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TTM_PL_TT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %51
  %60 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %61 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %68 = call i32 @nouveau_vm_map_sg_table(%struct.nouveau_vma* %65, i32 0, i32 %66, %struct.nouveau_mem* %67)
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.nouveau_mem*, %struct.nouveau_mem** %9, align 8
  %73 = call i32 @nouveau_vm_map_sg(%struct.nouveau_vma* %70, i32 0, i32 %71, %struct.nouveau_mem* %72)
  br label %74

74:                                               ; preds = %69, %64
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %78 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %77, i32 0, i32 1
  %79 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %80 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %79, i32 0, i32 0
  %81 = call i32 @list_add_tail(i32* %78, i32* %80)
  %82 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %83 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %33
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @nouveau_vm_get(%struct.nouveau_vm*, i32, i32, i32, %struct.nouveau_vma*) #1

declare dso_local i32 @nouveau_vm_map(%struct.nouveau_vma*, %struct.nouveau_mem*) #1

declare dso_local i32 @nouveau_vm_map_sg_table(%struct.nouveau_vma*, i32, i32, %struct.nouveau_mem*) #1

declare dso_local i32 @nouveau_vm_map_sg(%struct.nouveau_vma*, i32, i32, %struct.nouveau_mem*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
