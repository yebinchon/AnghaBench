; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bridge_check_ranges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c_pci_bridge_check_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i32, %struct.resource* }
%struct.resource = type { i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PCI_IO_BASE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_DEC = common dso_local global i64 0, align 8
@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_MASK = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_64 = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@PCI_PREF_BASE_UPPER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_bus*)* @pci_bridge_check_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_bridge_check_ranges(%struct.pci_bus* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %2, align 8
  %9 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  %10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 2
  %14 = load %struct.resource*, %struct.resource** %13, align 8
  %15 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %14, i64 %15
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = load %struct.resource*, %struct.resource** %6, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i64 1
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load i32, i32* @PCI_IO_BASE, align 4
  %25 = call i32 @pci_read_config_word(%struct.pci_dev* %23, i32 %24, i64* %3)
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %1
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = load i32, i32* @PCI_IO_BASE, align 4
  %31 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i32 %30, i32 61680)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* @PCI_IO_BASE, align 4
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i32 %33, i64* %3)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* @PCI_IO_BASE, align 4
  %37 = call i32 @pci_write_config_word(%struct.pci_dev* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %28, %1
  %39 = load i64, i64* %3, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @IORESOURCE_IO, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i64 0
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI_VENDOR_ID_DEC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %134

60:                                               ; preds = %54, %48
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %63 = call i32 @pci_read_config_dword(%struct.pci_dev* %61, i32 %62, i32* %4)
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %69 = call i32 @pci_write_config_dword(%struct.pci_dev* %67, i32 %68, i32 -983056)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %72 = call i32 @pci_read_config_dword(%struct.pci_dev* %70, i32 %71, i32* %4)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %75 = call i32 @pci_write_config_dword(%struct.pci_dev* %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %66, %60
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i64 2
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PCI_PREF_RANGE_TYPE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @PCI_PREF_RANGE_TYPE_64, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %95 = load %struct.resource*, %struct.resource** %6, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i64 2
  %97 = getelementptr inbounds %struct.resource, %struct.resource* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %79
  br label %101

101:                                              ; preds = %100, %76
  %102 = load %struct.resource*, %struct.resource** %6, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i64 2
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %101
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %112 = call i32 @pci_read_config_dword(%struct.pci_dev* %110, i32 %111, i32* %7)
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %115 = call i32 @pci_write_config_dword(%struct.pci_dev* %113, i32 %114, i32 -1)
  %116 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %117 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %118 = call i32 @pci_read_config_dword(%struct.pci_dev* %116, i32 %117, i32* %8)
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.resource*, %struct.resource** %6, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i64 2
  %126 = getelementptr inbounds %struct.resource, %struct.resource* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %121, %109
  %130 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %131 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @pci_write_config_dword(%struct.pci_dev* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %59, %129, %101
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
