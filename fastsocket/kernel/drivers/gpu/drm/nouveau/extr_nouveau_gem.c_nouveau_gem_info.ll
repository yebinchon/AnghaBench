; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { i32 }
%struct.drm_nouveau_gem_info = type { i32, i32, i32, i32, i32, i32 }
%struct.nouveau_cli = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nouveau_bo = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nouveau_vma = type { i32 }

@TTM_PL_TT = common dso_local global i64 0, align 8
@NOUVEAU_GEM_DOMAIN_GART = common dso_local global i32 0, align 4
@NOUVEAU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_gem_object*, %struct.drm_nouveau_gem_info*)* @nouveau_gem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_gem_info(%struct.drm_file* %0, %struct.drm_gem_object* %1, %struct.drm_nouveau_gem_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_gem_object*, align 8
  %7 = alloca %struct.drm_nouveau_gem_info*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.nouveau_bo*, align 8
  %10 = alloca %struct.nouveau_vma*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %6, align 8
  store %struct.drm_nouveau_gem_info* %2, %struct.drm_nouveau_gem_info** %7, align 8
  %11 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %12 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %11)
  store %struct.nouveau_cli* %12, %struct.nouveau_cli** %8, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %14 = call %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object* %13)
  store %struct.nouveau_bo* %14, %struct.nouveau_bo** %9, align 8
  %15 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %16 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TTM_PL_TT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @NOUVEAU_GEM_DOMAIN_GART, align 4
  %24 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %25 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @NOUVEAU_GEM_DOMAIN_VRAM, align 4
  %28 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %29 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %32 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %36 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %38 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %30
  %43 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %44 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %45 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo* %43, i64 %47)
  store %struct.nouveau_vma* %48, %struct.nouveau_vma** %10, align 8
  %49 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %50 = icmp ne %struct.nouveau_vma* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %86

54:                                               ; preds = %42
  %55 = load %struct.nouveau_vma*, %struct.nouveau_vma** %10, align 8
  %56 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %59 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %30
  %61 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %62 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PAGE_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %69 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %71 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %75 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %77 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %80 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nouveau_bo*, %struct.nouveau_bo** %9, align 8
  %82 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.drm_nouveau_gem_info*, %struct.drm_nouveau_gem_info** %7, align 8
  %85 = getelementptr inbounds %struct.drm_nouveau_gem_info, %struct.drm_nouveau_gem_info* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %60, %51
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.nouveau_bo* @nouveau_gem_object(%struct.drm_gem_object*) #1

declare dso_local %struct.nouveau_vma* @nouveau_bo_vma_find(%struct.nouveau_bo*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
