; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcidev_info = type { i64 }
%struct.pcibus_info = type { i32 }

@PCI32_MAPPED_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibr_dma_unmap(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidev_info*, align 8
  %8 = alloca %struct.pcibus_info*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev* %10)
  store %struct.pcidev_info* %11, %struct.pcidev_info** %7, align 8
  %12 = load %struct.pcidev_info*, %struct.pcidev_info** %7, align 8
  %13 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.pcibus_info*
  store %struct.pcibus_info* %15, %struct.pcibus_info** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @IS_PCI32_MAPPED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ATE_SWAP_OFF(i32 %20)
  %22 = load i64, i64* @PCI32_MAPPED_BASE, align 8
  %23 = sub nsw i64 %21, %22
  %24 = call i32 @IOPG(i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.pcibus_info*, %struct.pcibus_info** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pcibr_ate_free(%struct.pcibus_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %3
  ret void
}

declare dso_local %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i64 @IS_PCI32_MAPPED(i32) #1

declare dso_local i32 @IOPG(i64) #1

declare dso_local i64 @ATE_SWAP_OFF(i32) #1

declare dso_local i32 @pcibr_ate_free(%struct.pcibus_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
