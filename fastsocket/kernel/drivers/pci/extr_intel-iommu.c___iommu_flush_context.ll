; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c___iommu_flush_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c___iommu_flush_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i64 }

@DMA_CCMD_ICC = common dso_local global i32 0, align 4
@DMAR_CCMD_REG = common dso_local global i64 0, align 8
@dmar_readq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_iommu*, i32, i32, i32, i32)* @__iommu_flush_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_flush_context(%struct.intel_iommu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.intel_iommu* %0, %struct.intel_iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  switch i32 %13, label %29 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %19
  ]

14:                                               ; preds = %5
  store i32 128, i32* %11, align 4
  br label %31

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DMA_CCMD_DID(i32 %16)
  %18 = or i32 129, %17
  store i32 %18, i32* %11, align 4
  br label %31

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DMA_CCMD_DID(i32 %20)
  %22 = or i32 130, %21
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DMA_CCMD_SID(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @DMA_CCMD_FM(i32 %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %5
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %29, %19, %15, %14
  %32 = load i32, i32* @DMA_CCMD_ICC, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %36 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %35, i32 0, i32 0
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %40 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMAR_CCMD_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @dmar_writeq(i64 %43, i32 %44)
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %47 = load i64, i64* @DMAR_CCMD_REG, align 8
  %48 = load i32, i32* @dmar_readq, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @DMA_CCMD_ICC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @IOMMU_WAIT_OP(%struct.intel_iommu* %46, i64 %47, i32 %48, i32 %54, i32 %55)
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %58 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret void
}

declare dso_local i32 @DMA_CCMD_DID(i32) #1

declare dso_local i32 @DMA_CCMD_SID(i32) #1

declare dso_local i32 @DMA_CCMD_FM(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmar_writeq(i64, i32) #1

declare dso_local i32 @IOMMU_WAIT_OP(%struct.intel_iommu*, i64, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
