; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_setup_cardbus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_setup_cardbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.resource**, i32, i32, %struct.pci_dev* }
%struct.resource = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_bus_region = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"CardBus bridge to [bus %02x-%02x]\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@PCI_CB_IO_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_IO_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_IO_LIMIT_1 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_0 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_BASE_1 = common dso_local global i32 0, align 4
@PCI_CB_MEMORY_LIMIT_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_setup_cardbus(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pci_bus_region, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %6 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %7 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %12 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.resource*
  %16 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32*, i8*, %struct.resource*, ...) @dev_info(i32* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.resource* %15, i32 %18)
  %20 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %21 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %20, i32 0, i32 0
  %22 = load %struct.resource**, %struct.resource*** %21, align 8
  %23 = getelementptr inbounds %struct.resource*, %struct.resource** %22, i64 0
  %24 = load %struct.resource*, %struct.resource** %23, align 8
  store %struct.resource* %24, %struct.resource** %4, align 8
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load %struct.resource*, %struct.resource** %4, align 8
  %27 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %25, %struct.pci_bus_region* %5, %struct.resource* %26)
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IORESOURCE_IO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = call i32 (i32*, i8*, %struct.resource*, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = load i32, i32* @PCI_CB_IO_BASE_0, align 4
  %41 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pci_write_config_dword(%struct.pci_dev* %39, i32 %40, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* @PCI_CB_IO_LIMIT_0, align 4
  %46 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_write_config_dword(%struct.pci_dev* %44, i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %34, %1
  %50 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %51 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %50, i32 0, i32 0
  %52 = load %struct.resource**, %struct.resource*** %51, align 8
  %53 = getelementptr inbounds %struct.resource*, %struct.resource** %52, i64 1
  %54 = load %struct.resource*, %struct.resource** %53, align 8
  store %struct.resource* %54, %struct.resource** %4, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = load %struct.resource*, %struct.resource** %4, align 8
  %57 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %55, %struct.pci_bus_region* %5, %struct.resource* %56)
  %58 = load %struct.resource*, %struct.resource** %4, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IORESOURCE_IO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %49
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = call i32 (i32*, i8*, %struct.resource*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i32, i32* @PCI_CB_IO_BASE_1, align 4
  %71 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %69, i32 %70, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = load i32, i32* @PCI_CB_IO_LIMIT_1, align 4
  %76 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pci_write_config_dword(%struct.pci_dev* %74, i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %64, %49
  %80 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %81 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %80, i32 0, i32 0
  %82 = load %struct.resource**, %struct.resource*** %81, align 8
  %83 = getelementptr inbounds %struct.resource*, %struct.resource** %82, i64 2
  %84 = load %struct.resource*, %struct.resource** %83, align 8
  store %struct.resource* %84, %struct.resource** %4, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = load %struct.resource*, %struct.resource** %4, align 8
  %87 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %85, %struct.pci_bus_region* %5, %struct.resource* %86)
  %88 = load %struct.resource*, %struct.resource** %4, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %79
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load %struct.resource*, %struct.resource** %4, align 8
  %98 = call i32 (i32*, i8*, %struct.resource*, ...) @dev_info(i32* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = load i32, i32* @PCI_CB_MEMORY_BASE_0, align 4
  %101 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pci_write_config_dword(%struct.pci_dev* %99, i32 %100, i32 %102)
  %104 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %105 = load i32, i32* @PCI_CB_MEMORY_LIMIT_0, align 4
  %106 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pci_write_config_dword(%struct.pci_dev* %104, i32 %105, i32 %107)
  br label %109

109:                                              ; preds = %94, %79
  %110 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %111 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %110, i32 0, i32 0
  %112 = load %struct.resource**, %struct.resource*** %111, align 8
  %113 = getelementptr inbounds %struct.resource*, %struct.resource** %112, i64 3
  %114 = load %struct.resource*, %struct.resource** %113, align 8
  store %struct.resource* %114, %struct.resource** %4, align 8
  %115 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %116 = load %struct.resource*, %struct.resource** %4, align 8
  %117 = call i32 @pcibios_resource_to_bus(%struct.pci_dev* %115, %struct.pci_bus_region* %5, %struct.resource* %116)
  %118 = load %struct.resource*, %struct.resource** %4, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IORESOURCE_MEM, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %109
  %125 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = load %struct.resource*, %struct.resource** %4, align 8
  %128 = call i32 (i32*, i8*, %struct.resource*, ...) @dev_info(i32* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %130 = load i32, i32* @PCI_CB_MEMORY_BASE_1, align 4
  %131 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pci_write_config_dword(%struct.pci_dev* %129, i32 %130, i32 %132)
  %134 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %135 = load i32, i32* @PCI_CB_MEMORY_LIMIT_1, align 4
  %136 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %5, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pci_write_config_dword(%struct.pci_dev* %134, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %124, %109
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, ...) #1

declare dso_local i32 @pcibios_resource_to_bus(%struct.pci_dev*, %struct.pci_bus_region*, %struct.resource*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
