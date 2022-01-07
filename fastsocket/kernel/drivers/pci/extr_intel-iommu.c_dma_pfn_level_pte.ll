; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pfn_level_pte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_dma_pfn_level_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_pte = type { i32 }
%struct.dmar_domain = type { %struct.dma_pte*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_pte* (%struct.dmar_domain*, i64, i32)* @dma_pfn_level_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_pte* @dma_pfn_level_pte(%struct.dmar_domain* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_pte*, align 8
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_pte*, align 8
  %9 = alloca %struct.dma_pte*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dma_pte* null, %struct.dma_pte** %9, align 8
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @agaw_to_level(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %17 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %16, i32 0, i32 0
  %18 = load %struct.dma_pte*, %struct.dma_pte** %17, align 8
  store %struct.dma_pte* %18, %struct.dma_pte** %8, align 8
  br label %19

19:                                               ; preds = %41, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @pfn_level_offset(i64 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.dma_pte*, %struct.dma_pte** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dma_pte, %struct.dma_pte* %27, i64 %29
  store %struct.dma_pte* %30, %struct.dma_pte** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  store %struct.dma_pte* %35, %struct.dma_pte** %4, align 8
  br label %48

36:                                               ; preds = %23
  %37 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %38 = call i32 @dma_pte_present(%struct.dma_pte* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %47

41:                                               ; preds = %36
  %42 = load %struct.dma_pte*, %struct.dma_pte** %9, align 8
  %43 = call i32 @dma_pte_addr(%struct.dma_pte* %42)
  %44 = call %struct.dma_pte* @phys_to_virt(i32 %43)
  store %struct.dma_pte* %44, %struct.dma_pte** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %10, align 4
  br label %19

47:                                               ; preds = %40, %19
  store %struct.dma_pte* null, %struct.dma_pte** %4, align 8
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.dma_pte*, %struct.dma_pte** %4, align 8
  ret %struct.dma_pte* %49
}

declare dso_local i32 @agaw_to_level(i32) #1

declare dso_local i32 @pfn_level_offset(i64, i32) #1

declare dso_local i32 @dma_pte_present(%struct.dma_pte*) #1

declare dso_local %struct.dma_pte* @phys_to_virt(i32) #1

declare dso_local i32 @dma_pte_addr(%struct.dma_pte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
