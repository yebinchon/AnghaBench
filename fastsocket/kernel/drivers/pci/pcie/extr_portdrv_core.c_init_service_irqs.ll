; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_init_service_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_portdrv_core.c_init_service_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@PCIE_PORT_SERVICE_PME = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_HP = common dso_local global i32 0, align 4
@PCIE_PORT_DEVICE_MAXSERVICES = common dso_local global i32 0, align 4
@PCIE_PORT_SERVICE_VC_SHIFT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, i32)* @init_service_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_service_irqs(%struct.pci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PCIE_PORT_SERVICE_PME, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br i1 false, label %23, label %15

15:                                               ; preds = %14, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PCIE_PORT_SERVICE_HP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = call i64 (...) @pciehp_no_msi()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20, %14
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %23
  br label %54

33:                                               ; preds = %20, %15
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @pcie_port_enable_msix(%struct.pci_dev* %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %78

40:                                               ; preds = %33
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = call i32 @pci_enable_msi(%struct.pci_dev* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44, %40
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %54

54:                                               ; preds = %53, %32
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PCIE_PORT_DEVICE_MAXSERVICES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* @PCIE_PORT_SERVICE_VC_SHIFT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 -1, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74, %39
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @pciehp_no_msi(...) #1

declare dso_local i32 @pcie_port_enable_msix(%struct.pci_dev*, i32*, i32) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
