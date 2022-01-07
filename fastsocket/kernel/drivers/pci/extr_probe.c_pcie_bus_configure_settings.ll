; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pcie_bus_configure_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pcie_bus_configure_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_TUNE_OFF = common dso_local global i64 0, align 8
@PCIE_BUS_PEER2PEER = common dso_local global i64 0, align 8
@PCIE_BUS_SAFE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_bus_configure_settings(%struct.pci_bus* %0, i64 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pci_is_pcie(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %41

12:                                               ; preds = %2
  %13 = load i64, i64* @pcie_bus_config, align 8
  %14 = load i64, i64* @PCIE_BUS_TUNE_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %41

17:                                               ; preds = %12
  %18 = load i64, i64* @pcie_bus_config, align 8
  %19 = load i64, i64* @PCIE_BUS_PEER2PEER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i64, i64* @pcie_bus_config, align 8
  %24 = load i64, i64* @PCIE_BUS_SAFE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pcie_find_smpss(i32 %30, i64* %5)
  %32 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %33 = call i32 @pci_walk_bus(%struct.pci_bus* %32, i32 (i32, i64*)* @pcie_find_smpss, i64* %5)
  br label %34

34:                                               ; preds = %26, %22
  %35 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %36 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pcie_bus_configure_set(i32 %37, i64* %5)
  %39 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %40 = call i32 @pci_walk_bus(%struct.pci_bus* %39, i32 (i32, i64*)* @pcie_bus_configure_set, i64* %5)
  br label %41

41:                                               ; preds = %34, %16, %11
  ret void
}

declare dso_local i32 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_find_smpss(i32, i64*) #1

declare dso_local i32 @pci_walk_bus(%struct.pci_bus*, i32 (i32, i64*)*, i64*) #1

declare dso_local i32 @pcie_bus_configure_set(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
