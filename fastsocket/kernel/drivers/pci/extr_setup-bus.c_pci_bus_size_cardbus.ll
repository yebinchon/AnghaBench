; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bus_size_cardbus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bus_size_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { %struct.resource* }
%struct.resource = type { i32, i32, i64 }

@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@pci_cardbus_io_size = common dso_local global i8* null, align 8
@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_SIZEALIGN = common dso_local global i32 0, align 4
@PCI_CB_BRIDGE_CONTROL = common dso_local global i32 0, align 4
@PCI_CB_BRIDGE_CTL_PREFETCH_MEM0 = common dso_local global i32 0, align 4
@pci_cardbus_mem_size = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_bus_size_cardbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bus_size_cardbus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.resource*, %struct.resource** %10, align 8
  %12 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %11, i64 %12
  store %struct.resource* %13, %struct.resource** %4, align 8
  %14 = load %struct.resource*, %struct.resource** %4, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i64 0
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** @pci_cardbus_io_size, align 8
  %18 = getelementptr i8, i8* %17, i64 -1
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i64 0
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @IORESOURCE_IO, align 4
  %24 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i64 0
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i64 1
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @pci_cardbus_io_size, align 8
  %35 = getelementptr i8, i8* %34, i64 -1
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i64 1
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @IORESOURCE_IO, align 4
  %41 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i64 1
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load i32, i32* @PCI_CB_BRIDGE_CONTROL, align 4
  %50 = call i32 @pci_read_config_word(%struct.pci_dev* %48, i32 %49, i32* %5)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PCI_CB_BRIDGE_CTL_PREFETCH_MEM0, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %1
  %56 = load i32, i32* @PCI_CB_BRIDGE_CTL_PREFETCH_MEM0, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = load i32, i32* @PCI_CB_BRIDGE_CONTROL, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pci_write_config_word(%struct.pci_dev* %59, i32 %60, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = load i32, i32* @PCI_CB_BRIDGE_CONTROL, align 4
  %65 = call i32 @pci_read_config_word(%struct.pci_dev* %63, i32 %64, i32* %5)
  br label %66

66:                                               ; preds = %55, %1
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PCI_CB_BRIDGE_CTL_PREFETCH_MEM0, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %66
  %72 = load %struct.resource*, %struct.resource** %4, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i64 2
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @pci_cardbus_mem_size, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load %struct.resource*, %struct.resource** %4, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i64 2
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.resource*, %struct.resource** %4, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i64 2
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.resource*, %struct.resource** %4, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i64 3
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @pci_cardbus_mem_size, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.resource*, %struct.resource** %4, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i64 3
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load i32, i32* @IORESOURCE_MEM, align 4
  %99 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.resource*, %struct.resource** %4, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i64 3
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  br label %124

106:                                              ; preds = %66
  %107 = load %struct.resource*, %struct.resource** %4, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i64 3
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @pci_cardbus_mem_size, align 4
  %111 = mul nsw i32 %110, 2
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.resource*, %struct.resource** %4, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i64 3
  %115 = getelementptr inbounds %struct.resource, %struct.resource* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @IORESOURCE_MEM, align 4
  %117 = load i32, i32* @IORESOURCE_SIZEALIGN, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.resource*, %struct.resource** %4, align 8
  %120 = getelementptr inbounds %struct.resource, %struct.resource* %119, i64 3
  %121 = getelementptr inbounds %struct.resource, %struct.resource* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %118
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %106, %71
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
