; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_iommu_set_intr_remapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_iommu_set_intr_remapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DMAR_IRTA_REG = common dso_local global i64 0, align 8
@INTR_REMAP_TABLE_REG_SIZE = common dso_local global i32 0, align 4
@DMA_GCMD_SIRTP = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i64 0, align 8
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DMA_GSTS_IRTPS = common dso_local global i32 0, align 4
@DMA_GCMD_IRE = common dso_local global i32 0, align 4
@DMA_GSTS_IRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i32)* @iommu_set_intr_remapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_set_intr_remapping(%struct.intel_iommu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %9 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @virt_to_phys(i8* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %16 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %20 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DMAR_IRTA_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @IR_X2APIC_MODE(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @INTR_REMAP_TABLE_REG_SIZE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @dmar_writeq(i64 %23, i32 %29)
  %31 = load i32, i32* @DMA_GCMD_SIRTP, align 4
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %37 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMAR_GCMD_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %46 = load i32, i32* @DMAR_GSTS_REG, align 4
  %47 = load i32, i32* @readl, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DMA_GSTS_IRTPS, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %45, i32 %46, i32 %47, i32 %50, i32 %51)
  %53 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %54 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %53, i32 0, i32 0
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %58 = call i32 @qi_global_iec(%struct.intel_iommu* %57)
  %59 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %60 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load i32, i32* @DMA_GCMD_IRE, align 4
  %64 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %65 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %69 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %72 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DMAR_GCMD_REG, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %78 = load i32, i32* @DMAR_GSTS_REG, align 4
  %79 = load i32, i32* @readl, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @DMA_GSTS_IRES, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %77, i32 %78, i32 %79, i32 %82, i32 %83)
  %85 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %86 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %85, i32 0, i32 0
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_writeq(i64, i32) #1

declare dso_local i32 @IR_X2APIC_MODE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qi_global_iec(%struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
