; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_setup_bridge_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_setup_bridge_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, i32, i32, %struct.pci_dev* }
%struct.resource = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"PCI bridge to [bus %02x-%02x]\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_IO_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"  bridge window [io  disabled]\0A\00", align 1
@PCI_IO_BASE_UPPER16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_setup_bridge_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_setup_bridge_io(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %8 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %3, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = call i64 @pci_is_enabled(%struct.pci_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %22 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %25, i32 0, i32 0
  %27 = load %struct.resource**, %struct.resource*** %26, align 8
  %28 = getelementptr inbounds %struct.resource*, %struct.resource** %27, i64 0
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  store %struct.resource* %29, %struct.resource** %4, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %30, %struct.pci_bus_region* %5, %struct.resource* %31)
  %33 = load %struct.resource*, %struct.resource** %4, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IORESOURCE_IO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %15
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* @PCI_IO_BASE, align 4
  %42 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %6)
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, -65536
  store i32 %44, i32* %6, align 4
  %45 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 240
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 61440
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -65536
  %59 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 16
  %62 = or i32 %58, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load %struct.resource*, %struct.resource** %4, align 8
  %66 = call i32 (i32*, i8*, ...) @dev_info(i32* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %65)
  br label %71

67:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i32 240, i32* %6, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_info(i32* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %39
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* @PCI_IO_BASE_UPPER16, align 4
  %74 = call i32 @pci_write_config_dword(%struct.pci_dev* %72, i32 %73, i32 65535)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = load i32, i32* @PCI_IO_BASE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @pci_write_config_dword(%struct.pci_dev* %75, i32 %76, i32 %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = load i32, i32* @PCI_IO_BASE_UPPER16, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @pci_write_config_dword(%struct.pci_dev* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %14
  ret void
}

declare dso_local i64 @pci_is_enabled(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_dev*, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
