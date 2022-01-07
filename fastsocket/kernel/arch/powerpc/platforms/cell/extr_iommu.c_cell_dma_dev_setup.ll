; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_cell_dma_dev_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_iommu.c_cell_dma_dev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@dma_iommu_fixed_ops = common dso_local global i32 0, align 4
@dma_iommu_ops = common dso_local global i32 0, align 4
@dma_direct_ops = common dso_local global i32 0, align 4
@cell_dma_direct_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @cell_dma_dev_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_dma_dev_setup(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = call i32* @get_dma_ops(%struct.device* %3)
  %5 = icmp eq i32* %4, @dma_iommu_fixed_ops
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @cell_dma_dev_setup_fixed(%struct.device* %7)
  br label %28

9:                                                ; preds = %1
  %10 = call i32* (...) @get_pci_dma_ops()
  %11 = icmp eq i32* %10, @dma_iommu_ops
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @cell_get_iommu_table(%struct.device* %14)
  %16 = call i32 @set_iommu_table_base(%struct.device* %13, i32 %15)
  br label %27

17:                                               ; preds = %9
  %18 = call i32* (...) @get_pci_dma_ops()
  %19 = icmp eq i32* %18, @dma_direct_ops
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = load i32, i32* @cell_dma_direct_offset, align 4
  %23 = call i32 @set_dma_offset(%struct.device* %21, i32 %22)
  br label %26

24:                                               ; preds = %17
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %12
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

declare dso_local i32* @get_dma_ops(%struct.device*) #1

declare dso_local i32 @cell_dma_dev_setup_fixed(%struct.device*) #1

declare dso_local i32* @get_pci_dma_ops(...) #1

declare dso_local i32 @set_iommu_table_base(%struct.device*, i32) #1

declare dso_local i32 @cell_get_iommu_table(%struct.device*) #1

declare dso_local i32 @set_dma_offset(%struct.device*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
