; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_modify_irte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_modify_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irte = type { i32, i32 }
%struct.intel_iommu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.irte* }
%struct.irq_2_iommu = type { i32, i32, %struct.intel_iommu* }

@irq_2_ir_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @modify_irte(i32 %0, %struct.irte* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.irte*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.irte*, align 8
  %9 = alloca %struct.intel_iommu*, align 8
  %10 = alloca %struct.irq_2_iommu*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.irte* %1, %struct.irte** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @irq_2_ir_lock, i64 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.irq_2_iommu* @valid_irq_2_iommu(i32 %14)
  store %struct.irq_2_iommu* %15, %struct.irq_2_iommu** %10, align 8
  %16 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %10, align 8
  %17 = icmp ne %struct.irq_2_iommu* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %19)
  store i32 -1, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %10, align 8
  %23 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %22, i32 0, i32 2
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %23, align 8
  store %struct.intel_iommu* %24, %struct.intel_iommu** %9, align 8
  %25 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %10, align 8
  %26 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %10, align 8
  %29 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.intel_iommu*, %struct.intel_iommu** %9, align 8
  %33 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.irte*, %struct.irte** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.irte, %struct.irte* %36, i64 %38
  store %struct.irte* %39, %struct.irte** %8, align 8
  %40 = load %struct.irte*, %struct.irte** %8, align 8
  %41 = getelementptr inbounds %struct.irte, %struct.irte* %40, i32 0, i32 1
  %42 = bitcast i32* %41 to i64*
  %43 = load %struct.irte*, %struct.irte** %5, align 8
  %44 = getelementptr inbounds %struct.irte, %struct.irte* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_64bit(i64* %42, i32 %45)
  %47 = load %struct.irte*, %struct.irte** %8, align 8
  %48 = getelementptr inbounds %struct.irte, %struct.irte* %47, i32 0, i32 0
  %49 = bitcast i32* %48 to i64*
  %50 = load %struct.irte*, %struct.irte** %5, align 8
  %51 = getelementptr inbounds %struct.irte, %struct.irte* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @set_64bit(i64* %49, i32 %52)
  %54 = load %struct.intel_iommu*, %struct.intel_iommu** %9, align 8
  %55 = load %struct.irte*, %struct.irte** %8, align 8
  %56 = call i32 @__iommu_flush_cache(%struct.intel_iommu* %54, %struct.irte* %55, i32 8)
  %57 = load %struct.intel_iommu*, %struct.intel_iommu** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @qi_flush_iec(%struct.intel_iommu* %57, i32 %58, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* @irq_2_ir_lock, i64 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %21, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.irq_2_iommu* @valid_irq_2_iommu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_64bit(i64*, i32) #1

declare dso_local i32 @__iommu_flush_cache(%struct.intel_iommu*, %struct.irte*, i32) #1

declare dso_local i32 @qi_flush_iec(%struct.intel_iommu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
