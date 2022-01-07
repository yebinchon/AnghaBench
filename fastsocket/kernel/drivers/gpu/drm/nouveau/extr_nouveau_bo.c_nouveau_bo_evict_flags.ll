; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_evict_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_evict_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ttm_placement = type { i32 }
%struct.nouveau_bo = type { %struct.ttm_placement }

@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_placement*)* @nouveau_bo_evict_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_bo_evict_flags(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %6 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %7 = call %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object* %6)
  store %struct.nouveau_bo* %7, %struct.nouveau_bo** %5, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %17 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %14 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %15 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %16 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %13, i32 %14, i32 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %19 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %20 = call i32 @nouveau_bo_placement_set(%struct.nouveau_bo* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %23 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %24 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %23, i32 0, i32 0
  %25 = bitcast %struct.ttm_placement* %22 to i8*
  %26 = bitcast %struct.ttm_placement* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  ret void
}

declare dso_local %struct.nouveau_bo* @nouveau_bo(%struct.ttm_buffer_object*) #1

declare dso_local i32 @nouveau_bo_placement_set(%struct.nouveau_bo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
