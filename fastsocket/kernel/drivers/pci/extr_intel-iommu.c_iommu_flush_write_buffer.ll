; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_flush_write_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_flush_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i64, i32 }

@rwbf_quirk = common dso_local global i32 0, align 4
@DMA_GCMD_WBF = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DMA_GSTS_WBFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_flush_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_flush_write_buffer(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %5 = load i32, i32* @rwbf_quirk, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %9 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @cap_rwbf(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  br label %45

14:                                               ; preds = %7, %1
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %20 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DMA_GCMD_WBF, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMAR_GCMD_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %31 = load i32, i32* @DMAR_GSTS_REG, align 4
  %32 = load i32, i32* @readl, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @DMA_GSTS_WBFS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %30, i32 %31, i32 %32, i32 %38, i32 %39)
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 1
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @cap_rwbf(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
