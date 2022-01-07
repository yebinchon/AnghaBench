; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_clear_irte_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_clear_irte_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.irq_2_iommu = type { i64, i64, i32* }
%struct.TYPE_2__ = type { i64 }

@irq_2_ir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_irte_irq(i32 %0, %struct.intel_iommu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_2_iommu*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intel_iommu* %1, %struct.intel_iommu** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.irq_2_iommu* @valid_irq_2_iommu(i32 %12)
  store %struct.irq_2_iommu* %13, %struct.irq_2_iommu** %8, align 8
  %14 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %8, align 8
  %15 = icmp ne %struct.irq_2_iommu* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %17)
  store i32 -1, i32* %4, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %8, align 8
  %21 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %8, align 8
  %23 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %8, align 8
  %25 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.TYPE_2__* @irq_2_iommu(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.irq_2_iommu* @valid_irq_2_iommu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @irq_2_iommu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
