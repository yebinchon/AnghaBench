; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i32 }
%struct.page = type { i32 }

@IOMAP_MAX_ORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"iommu_alloc_consistent size too large: 0x%lx\0A\00", align 1
@IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_ERROR_CODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iommu_alloc_coherent(%struct.device* %0, %struct.iommu_table* %1, i64 %2, i64* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.iommu_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %16, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @get_order(i64 %24)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* @IOMAP_MAX_ORDER, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i8* null, i8** %8, align 8
  br label %78

32:                                               ; preds = %7
  %33 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %34 = icmp ne %struct.iommu_table* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i8* null, i8** %8, align 8
  br label %78

36:                                               ; preds = %32
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call %struct.page* @alloc_pages_node(i32 %37, i32 %38, i32 %39)
  store %struct.page* %40, %struct.page** %21, align 8
  %41 = load %struct.page*, %struct.page** %21, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i8* null, i8** %8, align 8
  br label %78

44:                                               ; preds = %36
  %45 = load %struct.page*, %struct.page** %21, align 8
  %46 = call i8* @page_address(%struct.page* %45)
  store i8* %46, i8** %16, align 8
  %47 = load i8*, i8** %16, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @memset(i8* %47, i32 0, i64 %48)
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %52 = lshr i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %19, align 4
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @get_iommu_order(i64 %54)
  store i32 %55, i32* %20, align 4
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load %struct.iommu_table*, %struct.iommu_table** %10, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load i32, i32* %20, align 4
  %65 = call i64 @iommu_alloc(%struct.device* %56, %struct.iommu_table* %57, i8* %58, i32 %59, i32 %60, i64 %63, i32 %64, i32* null)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @DMA_ERROR_CODE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %44
  %70 = load i8*, i8** %16, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @free_pages(i64 %71, i32 %72)
  store i8* null, i8** %8, align 8
  br label %78

74:                                               ; preds = %44
  %75 = load i64, i64* %17, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i8*, i8** %16, align 8
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %74, %69, %43, %35, %29
  %79 = load i8*, i8** %8, align 8
  ret i8* %79
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @get_iommu_order(i64) #1

declare dso_local i64 @iommu_alloc(%struct.device*, %struct.iommu_table*, i8*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
