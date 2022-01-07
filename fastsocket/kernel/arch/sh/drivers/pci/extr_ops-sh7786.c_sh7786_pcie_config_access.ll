; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_config_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_ops-sh7786.c_sh7786_pcie_config_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.pci_channel* }
%struct.pci_channel = type { i32 }

@PCIBIOS_FUNC_NOT_SUPPORTED = common dso_local global i32 0, align 4
@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@SH4A_PCIEPAR = common dso_local global i32 0, align 4
@SH4A_PCIEPCTLR = common dso_local global i32 0, align 4
@PCI_ACCESS_READ = common dso_local global i8 0, align 1
@SH4A_PCIEPDR = common dso_local global i32 0, align 4
@SH4A_PCIEPCICONF1 = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.pci_bus*, i32, i32, i32*)* @sh7786_pcie_config_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7786_pcie_config_access(i8 zeroext %0, %struct.pci_bus* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.pci_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pci_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8 %0, i8* %7, align 1
  store %struct.pci_bus* %1, %struct.pci_bus** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 1
  %17 = load %struct.pci_channel*, %struct.pci_channel** %16, align 8
  store %struct.pci_channel* %17, %struct.pci_channel** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @PCI_SLOT(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @PCI_FUNC(i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %32, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 31
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %14, align 4
  %31 = icmp sgt i32 %30, 7
  br i1 %31, label %32, label %34

32:                                               ; preds = %29, %26, %5
  %33 = load i32, i32* @PCIBIOS_FUNC_NOT_SUPPORTED, align 4
  store i32 %33, i32* %6, align 4
  br label %85

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %38, i32* %6, align 4
  br label %85

39:                                               ; preds = %34
  %40 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %41 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 24
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 %45, 19
  %47 = or i32 %44, %46
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, -4
  %53 = or i32 %50, %52
  %54 = load i32, i32* @SH4A_PCIEPAR, align 4
  %55 = call i32 @pci_write_reg(%struct.pci_channel* %40, i32 %53, i32 %54)
  %56 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %57 = load i32, i32* @SH4A_PCIEPCTLR, align 4
  %58 = call i32 @pci_write_reg(%struct.pci_channel* %56, i32 -2147483648, i32 %57)
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @PCI_ACCESS_READ, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %39
  %65 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %66 = load i32, i32* @SH4A_PCIEPDR, align 4
  %67 = call i32 @pci_read_reg(%struct.pci_channel* %65, i32 %66)
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  br label %75

69:                                               ; preds = %39
  %70 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SH4A_PCIEPDR, align 4
  %74 = call i32 @pci_write_reg(%struct.pci_channel* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.pci_channel*, %struct.pci_channel** %12, align 8
  %77 = load i32, i32* @SH4A_PCIEPCICONF1, align 4
  %78 = call i32 @pci_read_reg(%struct.pci_channel* %76, i32 %77)
  %79 = and i32 %78, 805306368
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %83, %81, %37, %32
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_write_reg(%struct.pci_channel*, i32, i32) #1

declare dso_local i32 @pci_read_reg(%struct.pci_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
