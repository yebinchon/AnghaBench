; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_iommu_disable_intr_remapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_iommu_disable_intr_remapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32, i32 }

@DMAR_GSTS_REG = common dso_local global i64 0, align 8
@DMA_GSTS_IRES = common dso_local global i32 0, align 4
@DMA_GCMD_IRE = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@readl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*)* @iommu_disable_intr_remapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_disable_intr_remapping(%struct.intel_iommu* %0) #0 {
  %2 = alloca %struct.intel_iommu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %2, align 8
  %5 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %6 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ecap_ir_support(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %61

11:                                               ; preds = %1
  %12 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %13 = call i32 @qi_global_iec(%struct.intel_iommu* %12)
  %14 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %15 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %14, i32 0, i32 0
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %19 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMAR_GSTS_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @dmar_readq(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DMA_GSTS_IRES, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  br label %56

29:                                               ; preds = %11
  %30 = load i32, i32* @DMA_GCMD_IRE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %37 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMAR_GCMD_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %46 = load i64, i64* @DMAR_GSTS_REG, align 8
  %47 = load i32, i32* @readl, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DMA_GSTS_IRES, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %45, i64 %46, i32 %47, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %29, %28
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %2, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 0
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @ecap_ir_support(i32) #1

declare dso_local i32 @qi_global_iec(%struct.intel_iommu*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_readq(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
