; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_iommu_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_iommu_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_iommu_arena = type { i64*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMMU_RESERVED_PTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_reserve(%struct.pci_iommu_arena* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_iommu_arena*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pci_iommu_arena* %0, %struct.pci_iommu_arena** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %13 = icmp ne %struct.pci_iommu_arena* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %19 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %18, i32 0, i32 2
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %23 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %9, align 8
  %25 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @iommu_arena_find_pages(i32* null, %struct.pci_iommu_arena* %25, i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %33 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %32, i32 0, i32 2
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 -1, i32* %4, align 4
  br label %63

36:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* @IOMMU_RESERVED_PTE, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %10, align 8
  br label %37

51:                                               ; preds = %37
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %56 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %5, align 8
  %58 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %57, i32 0, i32 2
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %51, %31, %14
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @iommu_arena_find_pages(i32*, %struct.pci_iommu_arena*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
