; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_msi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_msi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_msg = type { i8*, i8*, i8* }
%struct.intel_iommu = type { i32, i64 }

@DMAR_FEDATA_REG = common dso_local global i64 0, align 8
@DMAR_FEADDR_REG = common dso_local global i64 0, align 8
@DMAR_FEUADDR_REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_msi_read(i32 %0, %struct.msi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.intel_iommu* @get_irq_data(i32 %7)
  store %struct.intel_iommu* %8, %struct.intel_iommu** %5, align 8
  %9 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %10 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %14 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DMAR_FEDATA_REG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i8* @readl(i64 %17)
  %19 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %20 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DMAR_FEADDR_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i8* @readl(i64 %25)
  %27 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %30 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DMAR_FEUADDR_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i8* @readl(i64 %33)
  %35 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %38 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  ret void
}

declare dso_local %struct.intel_iommu* @get_irq_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
