; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_bo = type { i32 }
%struct.nouveau_vma = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_gem_object_open(%struct.drm_gem_object* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.nouveau_cli*, align 8
  %7 = alloca %struct.nouveau_bo*, align 8
  %8 = alloca %struct.nouveau_vma*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %10 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %11 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %10)
  store %struct.nouveau_cli* %11, %struct.nouveau_cli** %6, align 8
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  %13 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %12)
  store %struct.nouveau_bo* %13, %struct.nouveau_bo** %7, align 8
  %14 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %15 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %22 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %21, i32 0, i32 0
  %23 = call i32 @ttm_bo_reserve(i32* %22, i32 0, i32 0, i32 0, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %70

28:                                               ; preds = %20
  %29 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %30 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo* %29, i32 %33)
  store %struct.nouveau_vma* %34, %struct.nouveau_vma** %8, align 8
  %35 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %36 = icmp ne %struct.nouveau_vma* %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.nouveau_vma* @kzalloc(i32 4, i32 %38)
  store %struct.nouveau_vma* %39, %struct.nouveau_vma** %8, align 8
  %40 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %41 = icmp ne %struct.nouveau_vma* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %65

45:                                               ; preds = %37
  %46 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %47 = load %struct.nouveau_cli*, %struct.nouveau_cli** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %52 = call i32 @nouveau_bo_vma_add(%struct.nouveau_bo* %46, i32 %50, %struct.nouveau_vma* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %57 = call i32 @kfree(%struct.nouveau_vma* %56)
  br label %65

58:                                               ; preds = %45
  br label %64

59:                                               ; preds = %28
  %60 = load %struct.nouveau_vma*, %struct.nouveau_vma** %8, align 8
  %61 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %58
  br label %65

65:                                               ; preds = %64, %55, %42
  %66 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  %67 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %66, i32 0, i32 0
  %68 = call i32 @ttm_bo_unreserve(i32* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %26, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local i32 @ttm_bo_reserve(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo*, i32) #1

declare dso_local %struct.nouveau_vma* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_bo_vma_add(%struct.nouveau_bo*, i32, %struct.nouveau_vma*) #1

declare dso_local i32 @kfree(%struct.nouveau_vma*) #1

declare dso_local i32 @ttm_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
