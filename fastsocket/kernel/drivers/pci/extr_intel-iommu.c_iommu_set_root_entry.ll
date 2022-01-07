; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_set_root_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_set_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i64, i8* }

@DMAR_RTADDR_REG = common dso_local global i64 0, align 8
@DMA_GCMD_SRTP = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DMA_GSTS_RTPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_set_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_set_root_entry(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %14 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMAR_RTADDR_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @virt_to_phys(i8* %18)
  %20 = call i32 @dmar_writeq(i64 %17, i32 %19)
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_GCMD_SRTP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %27 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMAR_GCMD_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %33 = load i32, i32* @DMAR_GSTS_REG, align 4
  %34 = load i32, i32* @readl, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @DMA_GSTS_RTPS, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %32, i32 %33, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %41 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %40, i32 0, i32 1
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_writeq(i64, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
