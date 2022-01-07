; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_should_identity_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_intel-iommu.c_iommu_should_identity_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@PCI_CLASS_SERIAL_USB = common dso_local global i32 0, align 4
@iommu_identity_mapping = common dso_local global i32 0, align 4
@IDENTMAP_AZALIA = common dso_local global i32 0, align 4
@IDENTMAP_GFX = common dso_local global i32 0, align 4
@IDENTMAP_ALL = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_PCI_BRIDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @iommu_should_identity_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_should_identity_map(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i64 @device_has_rmrr(%struct.pci_dev* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = ashr i32 %13, 8
  %15 = load i32, i32* @PCI_CLASS_SERIAL_USB, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %103

18:                                               ; preds = %10, %2
  %19 = load i32, i32* @iommu_identity_mapping, align 4
  %20 = load i32, i32* @IDENTMAP_AZALIA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i64 @IS_AZALIA(%struct.pci_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %103

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @iommu_identity_mapping, align 4
  %30 = load i32, i32* @IDENTMAP_GFX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i64 @IS_GFX_DEVICE(%struct.pci_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %103

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @iommu_identity_mapping, align 4
  %40 = load i32, i32* @IDENTMAP_ALL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %103

44:                                               ; preds = %38
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_is_pcie(%struct.pci_dev* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_is_root_bus(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %103

55:                                               ; preds = %48
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 8
  %60 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %103

63:                                               ; preds = %55
  br label %71

64:                                               ; preds = %44
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i64 @pci_pcie_type(%struct.pci_dev* %65)
  %67 = load i64, i64* @PCI_EXP_TYPE_PCI_BRIDGE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %103

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %71
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %6, align 8
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %6, align 8
  br label %95

95:                                               ; preds = %90, %83, %74
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 2
  %99 = call i64 @dma_get_required_mask(%struct.TYPE_2__* %98)
  %100 = icmp sge i64 %96, %99
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %71
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %95, %69, %62, %54, %43, %37, %27, %17
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @device_has_rmrr(%struct.pci_dev*) #1

declare dso_local i64 @IS_AZALIA(%struct.pci_dev*) #1

declare dso_local i64 @IS_GFX_DEVICE(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_root_bus(i32) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i64 @dma_get_required_mask(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
