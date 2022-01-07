; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_rom.c_pci_enable_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_rom.c_pci_enable_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.pci_bus_region = type { i32 }

@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_MASK = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_enable_rom(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 1
  %9 = load %struct.resource*, %struct.resource** %8, align 8
  %10 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %9, i64 %11
  store %struct.resource* %12, %struct.resource** %4, align 8
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %19, %struct.pci_bus_region* %5, %struct.resource* %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %25, i32* %6)
  %27 = load i32, i32* @PCI_ROM_ADDRESS_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @pci_write_config_dword(%struct.pci_dev* %37, i32 %40, i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %18, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_dev*, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
