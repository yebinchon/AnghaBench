; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_iommu_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_iommu_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_iommu_arena = type { i64*, i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IOMMU_RESERVED_PTE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_bind(%struct.pci_iommu_arena* %0, i64 %1, i64 %2, %struct.page** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_iommu_arena*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.pci_iommu_arena* %0, %struct.pci_iommu_arena** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.page** %3, %struct.page*** %9, align 8
  %14 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %6, align 8
  %15 = icmp ne %struct.pci_iommu_arena* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %78

19:                                               ; preds = %4
  %20 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %6, align 8
  %21 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %20, i32 0, i32 1
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %6, align 8
  %25 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %11, align 8
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %13, align 8
  br label %28

28:                                               ; preds = %49, %19
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IOMMU_RESERVED_PTE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %6, align 8
  %43 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %42, i32 0, i32 1
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %78

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %28

52:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.page**, %struct.page*** %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.page*, %struct.page** %59, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = call i32 @page_to_phys(%struct.page* %62)
  %64 = call i64 @mk_iommu_pte(i32 %63)
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i64, i64* %12, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %13, align 8
  br label %54

73:                                               ; preds = %54
  %74 = load %struct.pci_iommu_arena*, %struct.pci_iommu_arena** %6, align 8
  %75 = getelementptr inbounds %struct.pci_iommu_arena, %struct.pci_iommu_arena* %74, i32 0, i32 1
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %41, %16
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mk_iommu_pte(i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
