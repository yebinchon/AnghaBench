; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_errata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32 }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371AB_3 = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_errata(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  %6 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %7 = icmp ne %struct.acpi_processor* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %13 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371AB_3, align 4
  %14 = load i32, i32* @PCI_ANY_ID, align 4
  %15 = load i32, i32* @PCI_ANY_ID, align 4
  %16 = call %struct.pci_dev* @pci_get_subsys(i32 %12, i32 %13, i32 %14, i32 %15, i32* null)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = call i32 @acpi_processor_errata_piix4(%struct.pci_dev* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i32 @pci_dev_put(%struct.pci_dev* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.pci_dev* @pci_get_subsys(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @acpi_processor_errata_piix4(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
