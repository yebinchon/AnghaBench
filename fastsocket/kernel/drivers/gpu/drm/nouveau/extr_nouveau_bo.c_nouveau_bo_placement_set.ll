; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_placement_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_placement_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i32, i64, %struct.ttm_placement }
%struct.ttm_placement = type { i32, i32, i32, i32 }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_bo_placement_set(%struct.nouveau_bo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_placement*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %10 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %9, i32 0, i32 3
  store %struct.ttm_placement* %10, %struct.ttm_placement** %7, align 8
  %11 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %12 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %11, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %23 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %26 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %28 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %30, i32 0, i32 2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @set_placement_list(i32 %29, i32* %31, i32 %32, i32 %33)
  %35 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %36 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %39 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %41 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ttm_placement*, %struct.ttm_placement** %7, align 8
  %44 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %43, i32 0, i32 0
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @set_placement_list(i32 %42, i32* %44, i32 %47, i32 %48)
  %50 = load %struct.nouveau_bo*, %struct.nouveau_bo** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @set_placement_range(%struct.nouveau_bo* %50, i32 %51)
  ret void
}

declare dso_local i32 @set_placement_list(i32, i32*, i32, i32) #1

declare dso_local i32 @set_placement_range(%struct.nouveau_bo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
