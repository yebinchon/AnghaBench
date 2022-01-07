; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_eeh_mark_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh.c_eeh_mark_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.pci_dev* }

@pci_channel_io_frozen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_mark_slot(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call %struct.device_node* @find_device_pe(%struct.device_node* %6)
  store %struct.device_node* %7, %struct.device_node** %3, align 8
  %8 = load %struct.device_node*, %struct.device_node** %3, align 8
  %9 = call i32 @pcibios_find_pci_bus(%struct.device_node* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.device_node*, %struct.device_node** %3, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  %15 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %14)
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %3, align 8
  br label %21

21:                                               ; preds = %17, %11, %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 8
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %5, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = icmp ne %struct.pci_dev* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %21
  %35 = load i32, i32* @pci_channel_io_frozen, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %21
  %39 = load %struct.device_node*, %struct.device_node** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @__eeh_mark_slot(%struct.device_node* %39, i32 %40)
  ret void
}

declare dso_local %struct.device_node* @find_device_pe(%struct.device_node*) #1

declare dso_local i32 @pcibios_find_pci_bus(%struct.device_node*) #1

declare dso_local %struct.TYPE_2__* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @__eeh_mark_slot(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
