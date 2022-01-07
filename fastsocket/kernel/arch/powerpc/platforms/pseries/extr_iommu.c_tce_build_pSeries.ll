; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_build_pSeries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_iommu.c_tce_build_pSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64 }
%struct.dma_attrs = type { i32 }

@TCE_PCI_READ = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TCE_PCI_WRITE = common dso_local global i32 0, align 4
@TCE_SHIFT = common dso_local global i32 0, align 4
@TCE_RPN_MASK = common dso_local global i32 0, align 4
@TCE_RPN_SHIFT = common dso_local global i32 0, align 4
@TCE_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_table*, i64, i64, i64, i32, %struct.dma_attrs*)* @tce_build_pSeries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_build_pSeries(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_attrs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %12, align 8
  %16 = load i32, i32* @TCE_PCI_READ, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %6
  %21 = load i32, i32* @TCE_PCI_WRITE, align 4
  %22 = load i32, i32* %13, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %20, %6
  %25 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %26 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %14, align 8
  br label %31

31:                                               ; preds = %35, %24
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %9, align 8
  %34 = icmp ne i64 %32, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @virt_to_abs(i64 %36)
  %38 = load i32, i32* @TCE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @TCE_RPN_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @TCE_RPN_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* @TCE_PAGE_SIZE, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %14, align 8
  br label %31

53:                                               ; preds = %31
  ret i32 0
}

declare dso_local i32 @virt_to_abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
