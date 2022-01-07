; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_pcibios_bus_to_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci.c_pcibios_bus_to_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_pbm_info* }
%struct.pci_pbm_info = type { %struct.resource, %struct.resource }
%struct.resource = type { i32, i32, i32 }
%struct.pci_bus_region = type { i32, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcibios_bus_to_resource(%struct.pci_dev* %0, %struct.resource* %1, %struct.pci_bus_region* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.pci_bus_region*, align 8
  %7 = alloca %struct.pci_pbm_info*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.pci_bus_region* %2, %struct.pci_bus_region** %6, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %12, align 8
  store %struct.pci_pbm_info* %13, %struct.pci_pbm_info** %7, align 8
  %14 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %15 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.pci_bus_region*, %struct.pci_bus_region** %6, align 8
  %20 = getelementptr inbounds %struct.pci_bus_region, %struct.pci_bus_region* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IORESOURCE_IO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %32 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %31, i32 0, i32 1
  store %struct.resource* %32, %struct.resource** %8, align 8
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %7, align 8
  %35 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %34, i32 0, i32 0
  store %struct.resource* %35, %struct.resource** %8, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = load %struct.resource*, %struct.resource** %8, align 8
  %39 = call i32 @pci_resource_adjust(%struct.resource* %37, %struct.resource* %38)
  ret void
}

declare dso_local i32 @pci_resource_adjust(%struct.resource*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
