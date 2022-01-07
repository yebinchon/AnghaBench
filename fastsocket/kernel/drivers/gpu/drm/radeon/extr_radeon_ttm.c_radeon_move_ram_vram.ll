; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_ram_vram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_move_ram_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_mem_reg }
%struct.ttm_mem_reg = type { i32* }
%struct.radeon_device = type { i32 }
%struct.ttm_placement = type { i32, i32*, i32, i32*, i64, i64 }

@TTM_PL_MASK_CACHING = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i32, i32, i32, %struct.ttm_mem_reg*)* @radeon_move_ram_vram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_move_ram_vram(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, %struct.ttm_mem_reg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.radeon_device*, align 8
  %13 = alloca %struct.ttm_mem_reg*, align 8
  %14 = alloca %struct.ttm_mem_reg, align 8
  %15 = alloca %struct.ttm_placement, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ttm_mem_reg* %4, %struct.ttm_mem_reg** %11, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  store %struct.ttm_mem_reg* %19, %struct.ttm_mem_reg** %13, align 8
  %20 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %21 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.radeon_device* @radeon_get_rdev(i32 %22)
  store %struct.radeon_device* %23, %struct.radeon_device** %12, align 8
  %24 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %25 = bitcast %struct.ttm_mem_reg* %14 to i8*
  %26 = bitcast %struct.ttm_mem_reg* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %14, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 1
  store i32* %16, i32** %31, align 8
  %32 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 2
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %15, i32 0, i32 3
  store i32* %16, i32** %33, align 8
  %34 = load i32, i32* @TTM_PL_MASK_CACHING, align 4
  %35 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %16, align 4
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ttm_bo_mem_space(%struct.ttm_buffer_object* %37, %struct.ttm_placement* %15, %struct.ttm_mem_reg* %14, i32 %38, i32 %39)
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %6, align 4
  br label %69

46:                                               ; preds = %5
  %47 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object* %47, i32 1, i32 %48, %struct.ttm_mem_reg* %14)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %65

54:                                               ; preds = %46
  %55 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %58 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %13, align 8
  %59 = call i32 @radeon_move_blit(%struct.ttm_buffer_object* %55, i32 1, i32 %56, %struct.ttm_mem_reg* %57, %struct.ttm_mem_reg* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %63, %53
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %67 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %66, %struct.ttm_mem_reg* %14)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %44
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ttm_bo_mem_space(%struct.ttm_buffer_object*, %struct.ttm_placement*, %struct.ttm_mem_reg*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_move_ttm(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*) #1

declare dso_local i32 @radeon_move_blit(%struct.ttm_buffer_object*, i32, i32, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*) #1

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
