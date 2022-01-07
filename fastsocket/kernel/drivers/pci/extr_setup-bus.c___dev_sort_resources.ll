; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c___dev_sort_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_setup-bus.c___dev_sort_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.resource_list = type { i32 }

@PCI_CLASS_NOT_DEFINED = common dso_local global i64 0, align 8
@PCI_CLASS_BRIDGE_HOST = common dso_local global i64 0, align 8
@PCI_CLASS_SYSTEM_PIC = common dso_local global i64 0, align 8
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i64 0, align 8
@PCI_COMMAND_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.resource_list*)* @__dev_sort_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dev_sort_resources(%struct.pci_dev* %0, %struct.resource_list* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.resource_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.resource_list* %1, %struct.resource_list** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 8
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @PCI_CLASS_NOT_DEFINED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PCI_CLASS_BRIDGE_HOST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  br label %40

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @PCI_CLASS_SYSTEM_PIC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @PCI_COMMAND, align 4
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %26, i64* %6)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @PCI_COMMAND_IO, align 8
  %30 = load i64, i64* @PCI_COMMAND_MEMORY, align 8
  %31 = or i64 %29, %30
  %32 = and i64 %28, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %40

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load %struct.resource_list*, %struct.resource_list** %4, align 8
  %39 = call i32 @pdev_sort_resources(%struct.pci_dev* %37, %struct.resource_list* %38)
  br label %40

40:                                               ; preds = %36, %34, %19
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pdev_sort_resources(%struct.pci_dev*, %struct.resource_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
