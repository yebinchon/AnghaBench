; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-vdk.c_pci_frv_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-vdk.c_pci_frv_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @pci_frv_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_frv_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %81 [
    i32 1, label %12
    i32 2, label %35
    i32 4, label %58
  ]

12:                                               ; preds = %5
  %13 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @__set_PciBridgeDataB(i32 %22, i32 %23)
  br label %34

25:                                               ; preds = %17, %12
  %26 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @CONFIG_CMD(%struct.pci_bus* %26, i32 %27, i32 %28)
  %30 = call i32 @__set_PciCfgAddr(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @__set_PciCfgDataB(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %21
  br label %83

35:                                               ; preds = %5
  %36 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %37 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @__set_PciBridgeDataW(i32 %45, i32 %46)
  br label %57

48:                                               ; preds = %40, %35
  %49 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @CONFIG_CMD(%struct.pci_bus* %49, i32 %50, i32 %51)
  %53 = call i32 @__set_PciCfgAddr(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @__set_PciCfgDataW(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %44
  br label %83

58:                                               ; preds = %5
  %59 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %60 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @__set_PciBridgeDataL(i32 %68, i32 %69)
  br label %80

71:                                               ; preds = %63, %58
  %72 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @CONFIG_CMD(%struct.pci_bus* %72, i32 %73, i32 %74)
  %76 = call i32 @__set_PciCfgAddr(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @__set_PciCfgDataL(i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %67
  br label %83

81:                                               ; preds = %5
  %82 = call i32 (...) @BUG()
  br label %83

83:                                               ; preds = %81, %80, %57, %34
  %84 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %84
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @__set_PciBridgeDataB(i32, i32) #1

declare dso_local i32 @__set_PciCfgAddr(i32) #1

declare dso_local i32 @CONFIG_CMD(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @__set_PciCfgDataB(i32, i32) #1

declare dso_local i32 @__set_PciBridgeDataW(i32, i32) #1

declare dso_local i32 @__set_PciCfgDataW(i32, i32) #1

declare dso_local i32 @__set_PciBridgeDataL(i32, i32) #1

declare dso_local i32 @__set_PciCfgDataL(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
