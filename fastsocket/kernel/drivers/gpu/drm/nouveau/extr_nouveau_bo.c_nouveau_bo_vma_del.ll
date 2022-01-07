; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vma_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_vma_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_vma = type { i32, i64 }

@TTM_PL_SYSTEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_bo_vma_del(%struct.nouveau_bo* %0, %struct.nouveau_vma* %1) #0 {
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.nouveau_vma*, align 8
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  store %struct.nouveau_vma* %1, %struct.nouveau_vma** %4, align 8
  %5 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %19 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %25 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %24, i32 0, i32 0
  %26 = call i32 @ttm_bo_wait(%struct.TYPE_6__* %25, i32 0, i32 0, i32 0)
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %3, align 8
  %28 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %34 = call i32 @nouveau_vm_unmap(%struct.nouveau_vma* %33)
  br label %35

35:                                               ; preds = %17, %9
  %36 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %37 = call i32 @nouveau_vm_put(%struct.nouveau_vma* %36)
  %38 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %38, i32 0, i32 0
  %40 = call i32 @list_del(i32* %39)
  br label %41

41:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nouveau_vm_unmap(%struct.nouveau_vma*) #1

declare dso_local i32 @nouveau_vm_put(%struct.nouveau_vma*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
