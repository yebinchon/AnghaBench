; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_detach_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_detach_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.intel_iommu = type { i32, i32, %struct.dmar_domain**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, %struct.intel_iommu*)* @iommu_detach_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_detach_domain(%struct.dmar_domain* %0, %struct.intel_iommu* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.intel_iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.intel_iommu* %1, %struct.intel_iommu** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %14 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cap_ndoms(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @find_first_bit(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %37, %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %28 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %27, i32 0, i32 2
  %29 = load %struct.dmar_domain**, %struct.dmar_domain*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dmar_domain*, %struct.dmar_domain** %29, i64 %31
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %32, align 8
  %34 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %35 = icmp eq %struct.dmar_domain* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  br label %48

37:                                               ; preds = %26
  %38 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %39 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cap_ndoms(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @find_next_bit(i32 %40, i32 %44, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %22

48:                                               ; preds = %36, %22
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %54 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clear_bit(i32 %52, i32 %55)
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %61 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clear_bit(i32 %59, i32 %62)
  %64 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %65 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %64, i32 0, i32 2
  %66 = load %struct.dmar_domain**, %struct.dmar_domain*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.dmar_domain*, %struct.dmar_domain** %66, i64 %68
  store %struct.dmar_domain* null, %struct.dmar_domain** %69, align 8
  br label %70

70:                                               ; preds = %51, %48
  %71 = load %struct.intel_iommu*, %struct.intel_iommu** %4, align 8
  %72 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %71, i32 0, i32 1
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cap_ndoms(i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
