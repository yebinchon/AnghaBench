; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_irq_2_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intr_remapping.c_irq_2_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_2_iommu = type { i32 }

@nr_irqs = common dso_local global i32 0, align 4
@irq_2_iommuX = common dso_local global %struct.irq_2_iommu* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irq_2_iommu* (i32)* @irq_2_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irq_2_iommu* @irq_2_iommu(i32 %0) #0 {
  %2 = alloca %struct.irq_2_iommu*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @nr_irqs, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** @irq_2_iommuX, align 8
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.irq_2_iommu, %struct.irq_2_iommu* %8, i64 %10
  store %struct.irq_2_iommu* %11, %struct.irq_2_iommu** %2, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.irq_2_iommu* null, %struct.irq_2_iommu** %2, align 8
  br label %13

13:                                               ; preds = %12, %7
  %14 = load %struct.irq_2_iommu*, %struct.irq_2_iommu** %2, align 8
  ret %struct.irq_2_iommu* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
