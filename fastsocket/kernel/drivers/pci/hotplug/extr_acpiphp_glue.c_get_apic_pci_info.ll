; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_get_apic_pci_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_get_apic_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }

@PCI_CLASS_SYSTEM_PIC_IOAPIC = common dso_local global i64 0, align 8
@PCI_CLASS_SYSTEM_PIC_IOXAPIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (i32)* @get_apic_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @get_apic_pci_info(i32 %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.pci_dev* @acpi_get_pci_dev(i32 %5)
  store %struct.pci_dev* %6, %struct.pci_dev** %4, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PCI_CLASS_SYSTEM_PIC_IOAPIC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCI_CLASS_SYSTEM_PIC_IOXAPIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_dev_put(%struct.pci_dev* %23)
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %27

25:                                               ; preds = %16, %10
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %2, align 8
  br label %27

27:                                               ; preds = %25, %22, %9
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %28
}

declare dso_local %struct.pci_dev* @acpi_get_pci_dev(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
