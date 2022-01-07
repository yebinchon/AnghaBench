; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_flips.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_move_flips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32* }
%struct.ttm_placement = type { i32, i32, i32*, i32*, i64, i64 }

@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @nouveau_bo_move_flips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bo_move_flips(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_placement, align 8
  %14 = alloca %struct.ttm_mem_reg, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %16 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %17 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 3
  store i32* %12, i32** %23, align 8
  %24 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %13, i32 0, i32 2
  store i32* %12, i32** %24, align 8
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %26 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %27 = bitcast %struct.ttm_mem_reg* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %29, %struct.ttm_placement* %13, %struct.ttm_mem_reg* %14, i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %6, align 4
  br label %58

37:                                               ; preds = %5
  %38 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %38, i32 1, i32 %39, %struct.ttm_mem_reg* %14)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %49 = call i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object* %45, i32 1, i32 %46, i32 %47, %struct.ttm_mem_reg* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %52, %43
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %56 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %55, %struct.ttm_mem_reg* %14)
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %35
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #2

declare dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*) #2

declare dso_local i32 @nouveau_bo_move_m2mf(%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
