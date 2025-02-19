; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-acpi.c_acpi_pci_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-acpi.c_acpi_pci_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @acpi_pci_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_find_device(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PCI_SLOT(i32 %12)
  %14 = shl i32 %13, 16
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_FUNC(i32 %17)
  %19 = or i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DEVICE_ACPI_HANDLE(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @acpi_get_child(i32 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @acpi_get_child(i32, i32) #1

declare dso_local i32 @DEVICE_ACPI_HANDLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
