; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_iommu.c_tce_build_iSeries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_iommu.c_tce_build_iSeries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { i64, i64 }
%struct.dma_attrs = type { i32 }

@TCE_SHIFT = common dso_local global i32 0, align 4
@TCE_RPN_MASK = common dso_local global i32 0, align 4
@TCE_RPN_SHIFT = common dso_local global i32 0, align 4
@TCE_VB = common dso_local global i64 0, align 8
@TCE_VALID = common dso_local global i32 0, align 4
@TCE_ALLIO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TCE_VB_WRITE = common dso_local global i32 0, align 4
@TCE_PCI_READ = common dso_local global i32 0, align 4
@TCE_PCI_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"PCI_DMA: HvCallXm_setTce failed, Rc: 0x%llx\0A\00", align 1
@TCE_PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_table*, i64, i64, i64, i32, %struct.dma_attrs*)* @tce_build_iSeries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tce_build_iSeries(%struct.iommu_table* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.dma_attrs* %5) #0 {
  %7 = alloca %struct.iommu_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_attrs*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.dma_attrs* %5, %struct.dma_attrs** %12, align 8
  br label %16

16:                                               ; preds = %75, %6
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %9, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %81

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @virt_to_abs(i64 %21)
  %23 = load i32, i32* @TCE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @TCE_RPN_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @TCE_RPN_SHIFT, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %31 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TCE_VB, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %20
  %36 = load i32, i32* @TCE_VALID, align 4
  %37 = load i32, i32* @TCE_ALLIO, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %14, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @TCE_VB_WRITE, align 4
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %44, %35
  br label %61

49:                                               ; preds = %20
  %50 = load i32, i32* @TCE_PCI_READ, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @TCE_PCI_WRITE, align 4
  %58 = load i32, i32* %14, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load %struct.iommu_table*, %struct.iommu_table** %7, align 8
  %63 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @HvCallXm_setTce(i32 %65, i32 %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %61
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = load i64, i64* @TCE_PAGE_SIZE, align 8
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %10, align 8
  br label %16

81:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @virt_to_abs(i64) #1

declare dso_local i32 @HvCallXm_setTce(i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
