; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_iommu.c_pci_dma_bus_setup_pasemi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_iommu.c_pci_dma_bus_setup_pasemi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"pci_dma_bus_setup, bus %p, bus->self %p\0A\00", align 1
@iommu_table_iobmap_inited = common dso_local global i32 0, align 4
@iommu_table_iobmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_dma_bus_setup_pasemi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_dma_bus_setup_pasemi(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.device_node*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %4 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %5 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %6 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.pci_bus* %4, i32 %7)
  %9 = load i32, i32* @iommu_table_iobmap_inited, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  store i32 1, i32* @iommu_table_iobmap_inited, align 4
  %12 = call i32 (...) @iommu_table_iobmap_setup()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %15 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %14)
  store %struct.device_node* %15, %struct.device_node** %3, align 8
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* @iommu_table_iobmap, i32** %21, align 8
  br label %22

22:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.pci_bus*, i32) #1

declare dso_local i32 @iommu_table_iobmap_setup(...) #1

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local %struct.TYPE_2__* @PCI_DN(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
