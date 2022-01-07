; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-vdk.c_pci_frv_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mb93090-mb00/extr_pci-vdk.c_pci_frv_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_frv_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_frv_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, -4
  %23 = call i32 @__get_PciBridgeDataL(i32 %22)
  store i32 %23, i32* %11, align 4
  br label %33

24:                                               ; preds = %16, %5
  %25 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CONFIG_CMD(%struct.pci_bus* %25, i32 %26, i32 %27)
  %29 = call i32 @__set_PciCfgAddr(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, -4
  %32 = call i32 @__get_PciCfgDataL(i32 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %48 [
    i32 1, label %35
    i32 2, label %41
    i32 4, label %47
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 3
  %39 = mul nsw i32 %38, 8
  %40 = ashr i32 %36, %39
  store i32 %40, i32* %11, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 2
  %45 = mul nsw i32 %44, 8
  %46 = ashr i32 %42, %45
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %33
  br label %50

48:                                               ; preds = %33
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48, %47, %41, %35
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  ret i32 %53
}

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @__get_PciBridgeDataL(i32) #1

declare dso_local i32 @__set_PciCfgAddr(i32) #1

declare dso_local i32 @CONFIG_CMD(%struct.pci_bus*, i32, i32) #1

declare dso_local i32 @__get_PciCfgDataL(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
