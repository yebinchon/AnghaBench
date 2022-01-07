; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nva3_bo_move_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nva3_bo_move_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, %struct.nouveau_mem* }
%struct.nouveau_mem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NvSubCopy = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nva3_bo_move_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nva3_bo_move_copy(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %16 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %17 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %16, i32 0, i32 1
  %18 = load %struct.nouveau_mem*, %struct.nouveau_mem** %17, align 8
  store %struct.nouveau_mem* %18, %struct.nouveau_mem** %10, align 8
  %19 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %20 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %26 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %54, %4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 8191
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 8191, %43 ], [ %45, %44 ]
  store i32 %47, i32* %15, align 4
  %48 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %49 = call i32 @RING_SPACE(%struct.nouveau_channel* %48, i32 11)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %105

54:                                               ; preds = %46
  %55 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %56 = load i32, i32* @NvSubCopy, align 4
  %57 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %55, i32 %56, i32 780, i32 8)
  %58 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = call i32 @OUT_RING(%struct.nouveau_channel* %58, i32 %60)
  %62 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @lower_32_bits(i32 %63)
  %65 = call i32 @OUT_RING(%struct.nouveau_channel* %62, i32 %64)
  %66 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @upper_32_bits(i32 %67)
  %69 = call i32 @OUT_RING(%struct.nouveau_channel* %66, i32 %68)
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @lower_32_bits(i32 %71)
  %73 = call i32 @OUT_RING(%struct.nouveau_channel* %70, i32 %72)
  %74 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call i32 @OUT_RING(%struct.nouveau_channel* %74, i32 %75)
  %77 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i32 @OUT_RING(%struct.nouveau_channel* %77, i32 %78)
  %80 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = call i32 @OUT_RING(%struct.nouveau_channel* %80, i32 %81)
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @OUT_RING(%struct.nouveau_channel* %83, i32 %84)
  %86 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %87 = load i32, i32* @NvSubCopy, align 4
  %88 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %86, i32 %87, i32 768, i32 1)
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %89, i32 272)
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %37

104:                                              ; preds = %37
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %52
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
