; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pci_dlpar.c_pcibios_find_pci_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_pci_dlpar.c_pcibios_find_pci_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { %struct.pci_dn* }
%struct.pci_dn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_bus* @pcibios_find_pci_bus(%struct.device_node* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.pci_dn*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load %struct.device_node*, %struct.device_node** %3, align 8
  %6 = getelementptr inbounds %struct.device_node, %struct.device_node* %5, i32 0, i32 0
  %7 = load %struct.pci_dn*, %struct.pci_dn** %6, align 8
  store %struct.pci_dn* %7, %struct.pci_dn** %4, align 8
  %8 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %9 = icmp ne %struct.pci_dn* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %10, %1
  store %struct.pci_bus* null, %struct.pci_bus** %2, align 8
  br label %31

23:                                               ; preds = %15
  %24 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.device_node*, %struct.device_node** %3, align 8
  %30 = call %struct.pci_bus* @find_bus_among_children(i32 %28, %struct.device_node* %29)
  store %struct.pci_bus* %30, %struct.pci_bus** %2, align 8
  br label %31

31:                                               ; preds = %23, %22
  %32 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  ret %struct.pci_bus* %32
}

declare dso_local %struct.pci_bus* @find_bus_among_children(i32, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
