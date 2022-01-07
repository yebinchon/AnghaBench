; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_bo = type { i32 }
%struct.nouveau_vma = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_gem_object_close(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.nouveau_cli*, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca %struct.nouveau_vma*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %9 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %10 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %9)
  store %struct.nouveau_cli* %10, %struct.nouveau_cli** %5, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %11)
  store %struct.nouveau_bo* %12, %struct.nouveau_bo** %6, align 8
  %13 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %21 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %20, i32 0, i32 0
  %22 = call i32 @ttm_bo_reserve(i32* %21, i32 0, i32 0, i32 0, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %28 = load %struct.nouveau_cli*, %struct.nouveau_cli** %5, align 8
  %29 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo* %27, i32 %31)
  store %struct.nouveau_vma* %32, %struct.nouveau_vma** %7, align 8
  %33 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %34 = icmp ne %struct.nouveau_vma* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %37 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %43 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %44 = call i32 @nouveau_bo_vma_del(%struct.nouveau_bo* %42, %struct.nouveau_vma* %43)
  %45 = load %struct.nouveau_vma*, %struct.nouveau_vma** %7, align 8
  %46 = call i32 @kfree(%struct.nouveau_vma* %45)
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %50 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %49, i32 0, i32 0
  %51 = call i32 @ttm_bo_unreserve(i32* %50)
  br label %52

52:                                               ; preds = %48, %25, %18
  ret void
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nouveau_bo_vma_del(%struct.nouveau_bo*, %struct.nouveau_vma*) #1

declare dso_local i32 @kfree(%struct.nouveau_vma*) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
