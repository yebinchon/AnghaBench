; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_range_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_range_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu = type { i32, i32 (%struct.iommu*)*, %struct.iommu_arena }
%struct.iommu_arena = type { i64, i64, i32 }

@DMA_ERROR_CODE = common dso_local global i64 0, align 8
@IO_PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @iommu_range_alloc(%struct.device* %0, %struct.iommu* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iommu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.iommu_arena*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.iommu* %1, %struct.iommu** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load %struct.iommu*, %struct.iommu** %7, align 8
  %18 = getelementptr inbounds %struct.iommu, %struct.iommu* %17, i32 0, i32 2
  store %struct.iommu_arena* %18, %struct.iommu_arena** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = call i64 (...) @printk_ratelimit()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @WARN_ON(i32 1)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %30, i64* %5, align 8
  br label %134

31:                                               ; preds = %4
  %32 = load i64*, i64** %9, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  br label %45

41:                                               ; preds = %34, %31
  %42 = load %struct.iommu_arena*, %struct.iommu_arena** %15, align 8
  %43 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.iommu_arena*, %struct.iommu_arena** %15, align 8
  %47 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  %53 = load %struct.iommu*, %struct.iommu** %7, align 8
  %54 = getelementptr inbounds %struct.iommu, %struct.iommu* %53, i32 0, i32 1
  %55 = load i32 (%struct.iommu*)*, i32 (%struct.iommu*)** %54, align 8
  %56 = icmp ne i32 (%struct.iommu*)* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.iommu*, %struct.iommu** %7, align 8
  %59 = getelementptr inbounds %struct.iommu, %struct.iommu* %58, i32 0, i32 1
  %60 = load i32 (%struct.iommu*)*, i32 (%struct.iommu*)** %59, align 8
  %61 = load %struct.iommu*, %struct.iommu** %7, align 8
  %62 = call i32 %60(%struct.iommu* %61)
  br label %63

63:                                               ; preds = %57, %52
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %115, %64
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = icmp ne %struct.device* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i64 @dma_get_seg_boundary(%struct.device* %69)
  %71 = add i64 %70, 1
  %72 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = call i64 @ALIGN(i64 %71, i32 %73)
  store i64 %74, i64* %14, align 8
  br label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = call i64 @ALIGN(i64 4294967296, i32 %77)
  store i64 %78, i64* %14, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.iommu_arena*, %struct.iommu_arena** %15, align 8
  %81 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.iommu*, %struct.iommu** %7, align 8
  %87 = getelementptr inbounds %struct.iommu, %struct.iommu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %90 = ashr i32 %88, %89
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* @IO_PAGE_SHIFT, align 4
  %93 = zext i32 %92 to i64
  %94 = lshr i64 %91, %93
  %95 = call i64 @iommu_area_alloc(i32 %82, i64 %83, i64 %84, i64 %85, i32 %90, i64 %94, i32 0)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %96, -1
  br i1 %97, label %98, label %120

98:                                               ; preds = %79
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i64 @likely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  store i64 0, i64* %12, align 8
  %105 = load %struct.iommu*, %struct.iommu** %7, align 8
  %106 = getelementptr inbounds %struct.iommu, %struct.iommu* %105, i32 0, i32 1
  %107 = load i32 (%struct.iommu*)*, i32 (%struct.iommu*)** %106, align 8
  %108 = icmp ne i32 (%struct.iommu*)* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.iommu*, %struct.iommu** %7, align 8
  %111 = getelementptr inbounds %struct.iommu, %struct.iommu* %110, i32 0, i32 1
  %112 = load i32 (%struct.iommu*)*, i32 (%struct.iommu*)** %111, align 8
  %113 = load %struct.iommu*, %struct.iommu** %7, align 8
  %114 = call i32 %112(%struct.iommu* %113)
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %65

118:                                              ; preds = %98
  %119 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %119, i64* %5, align 8
  br label %134

120:                                              ; preds = %79
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %121, %122
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.iommu_arena*, %struct.iommu_arena** %15, align 8
  %126 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load i64*, i64** %9, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i64, i64* %11, align 8
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  br label %132

132:                                              ; preds = %129, %120
  %133 = load i64, i64* %10, align 8
  store i64 %133, i64* %5, align 8
  br label %134

134:                                              ; preds = %132, %118, %29
  %135 = load i64, i64* %5, align 8
  ret i64 %135
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @dma_get_seg_boundary(%struct.device*) #1

declare dso_local i64 @iommu_area_alloc(i32, i64, i64, i64, i32, i64, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
