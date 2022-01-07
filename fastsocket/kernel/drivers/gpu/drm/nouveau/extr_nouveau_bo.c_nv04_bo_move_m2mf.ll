; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv04_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv04_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NvSubCopy = common dso_local global i32 0, align 4
@NV_MEMORY_TO_MEMORY_FORMAT_DMA_SOURCE = common dso_local global i32 0, align 4
@NV_MEMORY_TO_MEMORY_FORMAT_OFFSET_IN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NV_MEMORY_TO_MEMORY_FORMAT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv04_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_bo_move_m2mf(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %15 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %16 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %21 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %26 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %29 = call i32 @RING_SPACE(%struct.nouveau_channel* %28, i32 3)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %5, align 4
  br label %118

34:                                               ; preds = %4
  %35 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %36 = load i32, i32* @NvSubCopy, align 4
  %37 = load i32, i32* @NV_MEMORY_TO_MEMORY_FORMAT_DMA_SOURCE, align 4
  %38 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %35, i32 %36, i32 %37, i32 2)
  %39 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %41 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %42 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %43 = call i32 @nouveau_bo_mem_ctxdma(%struct.ttm_buffer_object* %40, %struct.nouveau_channel* %41, %struct.ttm_mem_reg* %42)
  %44 = call i32 @OUT_RING(%struct.nouveau_channel* %39, i32 %43)
  %45 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %46 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %47 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %48 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %49 = call i32 @nouveau_bo_mem_ctxdma(%struct.ttm_buffer_object* %46, %struct.nouveau_channel* %47, %struct.ttm_mem_reg* %48)
  %50 = call i32 @OUT_RING(%struct.nouveau_channel* %45, i32 %49)
  %51 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %52 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %71, %34
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %117

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 2047
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 2047, %60 ], [ %62, %61 ]
  store i32 %64, i32* %14, align 4
  %65 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %66 = call i32 @RING_SPACE(%struct.nouveau_channel* %65, i32 11)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %118

71:                                               ; preds = %63
  %72 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %73 = load i32, i32* @NvSubCopy, align 4
  %74 = load i32, i32* @NV_MEMORY_TO_MEMORY_FORMAT_OFFSET_IN, align 4
  %75 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %72, i32 %73, i32 %74, i32 8)
  %76 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @OUT_RING(%struct.nouveau_channel* %76, i32 %77)
  %79 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @OUT_RING(%struct.nouveau_channel* %79, i32 %80)
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %82, i32 %83)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %86)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 %89)
  %91 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @OUT_RING(%struct.nouveau_channel* %91, i32 %92)
  %94 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %95 = call i32 @OUT_RING(%struct.nouveau_channel* %94, i32 257)
  %96 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %97 = call i32 @OUT_RING(%struct.nouveau_channel* %96, i32 0)
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %99 = load i32, i32* @NvSubCopy, align 4
  %100 = load i32, i32* @NV_MEMORY_TO_MEMORY_FORMAT_NOP, align 4
  %101 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %98, i32 %99, i32 %100, i32 1)
  %102 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %103 = call i32 @OUT_RING(%struct.nouveau_channel* %102, i32 0)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = load i32, i32* %14, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = load i32, i32* %14, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %54

117:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %69, %32
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @nouveau_bo_mem_ctxdma(%struct.ttm_buffer_object*, %struct.nouveau_channel*, %struct.ttm_mem_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
