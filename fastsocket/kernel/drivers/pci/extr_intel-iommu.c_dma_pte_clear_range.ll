; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pte_clear_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pte_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dma_pte = type { i32 }

@VTD_PAGE_SHIFT = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i64, i64)* @dma_pte_clear_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pte_clear_range(%struct.dmar_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_pte*, align 8
  %9 = alloca %struct.dma_pte*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @agaw_to_width(i32 %12)
  %14 = load i32, i32* @VTD_PAGE_SHIFT, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @BITS_PER_LONG, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i1 [ false, %3 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = lshr i64 %33, %35
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %25
  %39 = phi i1 [ false, %25 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ugt i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  br label %47

47:                                               ; preds = %95, %38
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain* %48, i64 %49, i32 1)
  store %struct.dma_pte* %50, %struct.dma_pte** %9, align 8
  store %struct.dma_pte* %50, %struct.dma_pte** %8, align 8
  %51 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %52 = icmp ne %struct.dma_pte* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  %56 = call i64 @align_to_level(i64 %55, i32 2)
  store i64 %56, i64* %5, align 8
  br label %88

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %74, %57
  %59 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %60 = call i32 @dma_clear_pte(%struct.dma_pte* %59)
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %64 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %63, i32 1
  store %struct.dma_pte* %64, %struct.dma_pte** %9, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %71 = call i32 @first_pte_in_page(%struct.dma_pte* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %58, label %76

76:                                               ; preds = %74
  %77 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %78 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %79 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %80 = bitcast %struct.dma_pte* %79 to i8*
  %81 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %82 = bitcast %struct.dma_pte* %81 to i8*
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @domain_flush_cache(%struct.dmar_domain* %77, %struct.dma_pte* %78, i32 %86)
  br label %88

88:                                               ; preds = %76, %53
  %89 = load i64, i64* %5, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* %6, align 8
  %94 = icmp ule i64 %92, %93
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i1 [ false, %88 ], [ %94, %91 ]
  br i1 %96, label %47, label %97

97:                                               ; preds = %95
  ret void
}

declare dso_local i32 @agaw_to_width(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain*, i64, i32) #1

declare dso_local i64 @align_to_level(i64, i32) #1

declare dso_local i32 @dma_clear_pte(%struct.dma_pte*) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
