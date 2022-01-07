; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pcidev_info = type { i32 }

@PCI64_ATTR_PREF = common dso_local global i32 0, align 4
@PCI32_ATE_PREF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pcibr_dma_map(%struct.pci_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pcidev_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %13 = call %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev* %12)
  store %struct.pcidev_info* %13, %struct.pcidev_info** %11, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 2147483647
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %49

19:                                               ; preds = %4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.pcidev_info*, %struct.pcidev_info** %11, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @PCI64_ATTR_PREF, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @pcibr_dmatrans_direct64(%struct.pcidev_info* %26, i64 %27, i32 %28, i32 %29)
  store i64 %30, i64* %10, align 8
  br label %47

31:                                               ; preds = %19
  %32 = load %struct.pcidev_info*, %struct.pcidev_info** %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @pcibr_dmatrans_direct32(%struct.pcidev_info* %32, i64 %33, i64 %34, i32 0, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = load %struct.pcidev_info*, %struct.pcidev_info** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* @PCI32_ATE_PREF, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @pcibr_dmamap_ate32(%struct.pcidev_info* %40, i64 %41, i64 %42, i32 %43, i32 %44)
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %39, %31
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i64, i64* %10, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %18
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local %struct.pcidev_info* @SN_PCIDEV_INFO(%struct.pci_dev*) #1

declare dso_local i64 @pcibr_dmatrans_direct64(%struct.pcidev_info*, i64, i32, i32) #1

declare dso_local i64 @pcibr_dmatrans_direct32(%struct.pcidev_info*, i64, i64, i32, i32) #1

declare dso_local i64 @pcibr_dmamap_ate32(%struct.pcidev_info*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
