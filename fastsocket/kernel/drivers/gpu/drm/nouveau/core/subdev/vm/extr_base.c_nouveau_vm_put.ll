; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/vm/extr_base.c_nouveau_vm_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_vma = type { %struct.TYPE_4__*, %struct.nouveau_vm* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.nouveau_vm = type { %struct.TYPE_3__, %struct.nouveau_vmmgr* }
%struct.TYPE_3__ = type { i32 }
%struct.nouveau_vmmgr = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_vm_put(%struct.nouveau_vma* %0) #0 {
  %2 = alloca %struct.nouveau_vma*, align 8
  %3 = alloca %struct.nouveau_vm*, align 8
  %4 = alloca %struct.nouveau_vmmgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_vma* %0, %struct.nouveau_vma** %2, align 8
  %7 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %8 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %7, i32 0, i32 1
  %9 = load %struct.nouveau_vm*, %struct.nouveau_vm** %8, align 8
  store %struct.nouveau_vm* %9, %struct.nouveau_vm** %3, align 8
  %10 = load %struct.nouveau_vm*, %struct.nouveau_vm** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %10, i32 0, i32 1
  %12 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %11, align 8
  store %struct.nouveau_vmmgr* %12, %struct.nouveau_vmmgr** %4, align 8
  %13 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %14 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %74

21:                                               ; preds = %1
  %22 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %23 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %32 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %37 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %35, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %4, align 8
  %44 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %42, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.nouveau_vm*, %struct.nouveau_vm** %3, align 8
  %48 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.nouveau_vm*, %struct.nouveau_vm** %3, align 8
  %52 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %53 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nouveau_vmmgr*, %struct.nouveau_vmmgr** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_vmmgr, %struct.nouveau_vmmgr* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @nouveau_vm_unmap_pgt(%struct.nouveau_vm* %51, i32 %61, i32 %62, i32 %63)
  %65 = load %struct.nouveau_vm*, %struct.nouveau_vm** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %65, i32 0, i32 0
  %67 = load %struct.nouveau_vma*, %struct.nouveau_vma** %2, align 8
  %68 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %67, i32 0, i32 0
  %69 = call i32 @nouveau_mm_free(%struct.TYPE_3__* %66, %struct.TYPE_4__** %68)
  %70 = load %struct.nouveau_vm*, %struct.nouveau_vm** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_vm, %struct.nouveau_vm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nouveau_vm_unmap_pgt(%struct.nouveau_vm*, i32, i32, i32) #1

declare dso_local i32 @nouveau_mm_free(%struct.TYPE_3__*, %struct.TYPE_4__**) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
