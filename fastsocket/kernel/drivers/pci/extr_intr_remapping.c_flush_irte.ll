; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_flush_irte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_flush_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }
%struct.irq_2_iommu = type { i32, i32, i32, %struct.intel_iommu* }

@irq_2_ir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_irte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca %struct.irq_2_iommu*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.irq_2_iommu* @valid_irq_2_iommu(i32 %11)
  store %struct.irq_2_iommu* %12, %struct.irq_2_iommu** %7, align 8
  %13 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %14 = icmp ne %struct.irq_2_iommu* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %16)
  store i32 -1, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %20 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %19, i32 0, i32 3
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %20, align 8
  store %struct.intel_iommu* %21, %struct.intel_iommu** %6, align 8
  %22 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %23 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %26 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %7, align 8
  %32 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @qi_flush_iec(%struct.intel_iommu* %29, i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %18, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.irq_2_iommu* @valid_irq_2_iommu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qi_flush_iec(%struct.intel_iommu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
