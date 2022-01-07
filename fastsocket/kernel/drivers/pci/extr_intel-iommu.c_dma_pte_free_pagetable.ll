; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pte_free_pagetable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pte_free_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32*, i32, i32 }
%struct.dma_pte = type { i32 }

@VTD_PAGE_SHIFT = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, i64, i64)* @dma_pte_free_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_pte_free_pagetable(%struct.dmar_domain* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_pte*, align 8
  %9 = alloca %struct.dma_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %14 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @agaw_to_width(i32 %15)
  %17 = load i32, i32* @VTD_PAGE_SHIFT, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %20 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @agaw_to_level(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @BITS_PER_LONG, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = lshr i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i1 [ false, %3 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BITS_PER_LONG, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i1 [ false, %32 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ugt i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  store i32 2, i32* %11, align 4
  br label %54

54:                                               ; preds = %142, %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %145

58:                                               ; preds = %54
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @align_to_level(i64 %59, i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @level_size(i32 %63)
  %65 = add i64 %62, %64
  %66 = sub i64 %65, 1
  %67 = load i64, i64* %6, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %162

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %140, %70
  %72 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain* %72, i64 %73, i32 %74)
  store %struct.dma_pte* %75, %struct.dma_pte** %9, align 8
  store %struct.dma_pte* %75, %struct.dma_pte** %8, align 8
  %76 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %77 = icmp ne %struct.dma_pte* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i64 @align_to_level(i64 %80, i32 %82)
  store i64 %83, i64* %12, align 8
  br label %129

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %115, %84
  %86 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %87 = call i64 @dma_pte_present(%struct.dma_pte* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %91 = call i32 @dma_pte_addr(%struct.dma_pte* %90)
  %92 = call i32* @phys_to_virt(i32 %91)
  %93 = call i32 @free_pgtable_page(i32* %92)
  %94 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %95 = call i32 @dma_clear_pte(%struct.dma_pte* %94)
  br label %96

96:                                               ; preds = %89, %85
  %97 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %98 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %97, i32 1
  store %struct.dma_pte* %98, %struct.dma_pte** %9, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @level_size(i32 %99)
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %96
  %104 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %105 = call i32 @first_pte_in_page(%struct.dma_pte* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i64 @level_size(i32 %109)
  %111 = add i64 %108, %110
  %112 = sub i64 %111, 1
  %113 = load i64, i64* %6, align 8
  %114 = icmp ule i64 %112, %113
  br label %115

115:                                              ; preds = %107, %103
  %116 = phi i1 [ false, %103 ], [ %114, %107 ]
  br i1 %116, label %85, label %117

117:                                              ; preds = %115
  %118 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %119 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %120 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %121 = bitcast %struct.dma_pte* %120 to i8*
  %122 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %123 = bitcast %struct.dma_pte* %122 to i8*
  %124 = ptrtoint i8* %121 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  %128 = call i32 @domain_flush_cache(%struct.dmar_domain* %118, %struct.dma_pte* %119, i32 %127)
  br label %129

129:                                              ; preds = %117, %78
  %130 = load i64, i64* %12, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i64, i64* %12, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i64 @level_size(i32 %134)
  %136 = add i64 %133, %135
  %137 = sub i64 %136, 1
  %138 = load i64, i64* %6, align 8
  %139 = icmp ule i64 %137, %138
  br label %140

140:                                              ; preds = %132, %129
  %141 = phi i1 [ false, %129 ], [ %139, %132 ]
  br i1 %141, label %71, label %142

142:                                              ; preds = %140
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %54

145:                                              ; preds = %54
  %146 = load i64, i64* %5, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %151 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @DOMAIN_MAX_PFN(i32 %152)
  %154 = icmp eq i64 %149, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %157 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @free_pgtable_page(i32* %158)
  %160 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %161 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %160, i32 0, i32 0
  store i32* null, i32** %161, align 8
  br label %162

162:                                              ; preds = %69, %155, %148, %145
  ret void
}

declare dso_local i32 @agaw_to_width(i32) #1

declare dso_local i32 @agaw_to_level(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @align_to_level(i64, i32) #1

declare dso_local i64 @level_size(i32) #1

declare dso_local %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain*, i64, i32) #1

declare dso_local i64 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local i32 @free_pgtable_page(i32*) #1

declare dso_local i32* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

declare dso_local i32 @dma_clear_pte(%struct.dma_pte*) #1

declare dso_local i32 @first_pte_in_page(%struct.dma_pte*) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

declare dso_local i64 @DOMAIN_MAX_PFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
