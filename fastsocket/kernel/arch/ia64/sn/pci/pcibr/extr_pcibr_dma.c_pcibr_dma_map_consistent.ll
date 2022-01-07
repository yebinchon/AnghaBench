; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_map_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_map_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.pcidev_info = type { i32 }

@PCI64_ATTR_BAR = common dso_local global i32 0, align 4
@PCI32_ATE_BAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pcibr_dma_map_consistent(%struct.pci_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcidev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev* %11)
  store %struct.pcidev_info* %12, %struct.pcidev_info** %10, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.pcidev_info*, %struct.pcidev_info** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @PCI64_ATTR_BAR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @pcibr_dmatrans_direct64(%struct.pcidev_info* %19, i64 %20, i32 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  br label %31

24:                                               ; preds = %4
  %25 = load %struct.pcidev_info*, %struct.pcidev_info** %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @PCI32_ATE_BAR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @pcibr_dmamap_ate32(%struct.pcidev_info* %25, i64 %26, i64 %27, i32 %28, i32 %29)
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i64, i64* %9, align 8
  ret i64 %32
}

declare dso_local %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i64 @pcibr_dmatrans_direct64(%struct.pcidev_info*, i64, i32, i32) #1

declare dso_local i64 @pcibr_dmamap_ate32(%struct.pcidev_info*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
