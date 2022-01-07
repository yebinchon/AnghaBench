; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pci_bus_region = type { i32 }

@CB_LEGACY_MODE_BASE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_COMMAND_WAIT = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCI_PRIMARY_BUS = common dso_local global i32 0, align 4
@CB_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@CB_BRIDGE_CRST = common dso_local global i32 0, align 4
@CB_BRIDGE_PREFETCH1 = common dso_local global i32 0, align 4
@CB_BRIDGE_ISAEN = common dso_local global i32 0, align 4
@CB_BRIDGE_VGAEN = common dso_local global i32 0, align 4
@CB_BRIDGE_PREFETCH0 = common dso_local global i32 0, align 4
@CB_BRIDGE_POSTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*)* @yenta_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_config_init(%struct.yenta_socket* %0) #0 {
  %2 = alloca %struct.yenta_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %2, align 8
  %6 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %7 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %10 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %11, %struct.pci_bus_region* %5, i32* %15)
  %17 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %18 = load i32, i32* @CB_LEGACY_MODE_BASE, align 4
  %19 = call i32 @config_writel(%struct.yenta_socket* %17, i32 %18, i32 0)
  %20 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %21 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %22 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @config_writel(%struct.yenta_socket* %20, i32 %21, i32 %23)
  %25 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %26 = load i32, i32* @PCI_COMMAND, align 4
  %27 = load i32, i32* @PCI_COMMAND_IO, align 4
  %28 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @PCI_COMMAND_WAIT, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @config_writew(%struct.yenta_socket* %25, i32 %26, i32 %33)
  %35 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %36 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %37 = load i32, i32* @L1_CACHE_BYTES, align 4
  %38 = sdiv i32 %37, 4
  %39 = call i32 @config_writeb(%struct.yenta_socket* %35, i32 %36, i32 %38)
  %40 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %41 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %42 = call i32 @config_writeb(%struct.yenta_socket* %40, i32 %41, i32 168)
  %43 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %44 = load i32, i32* @PCI_PRIMARY_BUS, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 -1342177280, %50
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %51, %57
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %58, %63
  %65 = call i32 @config_writel(%struct.yenta_socket* %43, i32 %44, i32 %64)
  %66 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %67 = load i32, i32* @CB_BRIDGE_CONTROL, align 4
  %68 = call i32 @config_readw(%struct.yenta_socket* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @CB_BRIDGE_CRST, align 4
  %70 = load i32, i32* @CB_BRIDGE_PREFETCH1, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @CB_BRIDGE_ISAEN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @CB_BRIDGE_VGAEN, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @CB_BRIDGE_PREFETCH0, align 4
  %80 = load i32, i32* @CB_BRIDGE_POSTEN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %85 = load i32, i32* @CB_BRIDGE_CONTROL, align 4
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @config_writew(%struct.yenta_socket* %84, i32 %85, i32 %86)
  ret void
}

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_dev*, %struct.pci_bus_region*, i32*) #1

declare dso_local i32 @config_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_writew(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @config_readw(%struct.yenta_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
