; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_msi_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_msi_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64 }

@DMAR_FECTL_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_msi_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.intel_iommu* @get_irq_data(i32 %5)
  store %struct.intel_iommu* %6, %struct.intel_iommu** %3, align 8
  %7 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %12 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DMAR_FECTL_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 0, i64 %15)
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMAR_FECTL_REG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %24 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local %struct.intel_iommu* @get_irq_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
