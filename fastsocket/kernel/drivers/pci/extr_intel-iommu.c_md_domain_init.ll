; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_md_domain_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_md_domain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, %struct.dma_pte*, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.dma_pte = type { i32 }

@DMA_32BIT_PFN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, i32)* @md_domain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_domain_init(%struct.dmar_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 9
  %9 = load i32, i32* @DMA_32BIT_PFN, align 4
  %10 = call i32 @init_iova_domain(i32* %8, i32 %9)
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %12 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %11, i32 0, i32 8
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %15 = call i32 @domain_reserve_special_ranges(%struct.dmar_domain* %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %18 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @guestwidth_to_adjustwidth(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @width_to_agaw(i32 %21)
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %24 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %26 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %25, i32 0, i32 6
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %31 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %33 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %35 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = call i64 (...) @alloc_pgtable_page()
  %37 = inttoptr i64 %36 to %struct.dma_pte*
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %39 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %38, i32 0, i32 1
  store %struct.dma_pte* %37, %struct.dma_pte** %39, align 8
  %40 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %41 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %40, i32 0, i32 1
  %42 = load %struct.dma_pte*, %struct.dma_pte** %41, align 8
  %43 = icmp ne %struct.dma_pte* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %54

47:                                               ; preds = %2
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %49 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %50 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %49, i32 0, i32 1
  %51 = load %struct.dma_pte*, %struct.dma_pte** %50, align 8
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = call i32 @domain_flush_cache(%struct.dmar_domain* %48, %struct.dma_pte* %51, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @init_iova_domain(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @domain_reserve_special_ranges(%struct.dmar_domain*) #1

declare dso_local i32 @guestwidth_to_adjustwidth(i32) #1

declare dso_local i32 @width_to_agaw(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @alloc_pgtable_page(...) #1

declare dso_local i32 @domain_flush_cache(%struct.dmar_domain*, %struct.dma_pte*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
