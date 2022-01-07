; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.acpi_prt_entry = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"PCI INT %c disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_pci_irq_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.acpi_prt_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev* %13, i32 %14)
  store %struct.acpi_prt_entry* %15, %struct.acpi_prt_entry** %3, align 8
  %16 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %17 = icmp ne %struct.acpi_prt_entry* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @acpi_pci_link_free_irq(i64 %27)
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pin_name(i32 %36)
  %38 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @acpi_unregister_gsi(i32 %39)
  br label %41

41:                                               ; preds = %33, %18, %11
  ret void
}

declare dso_local %struct.acpi_prt_entry* @acpi_pci_irq_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @acpi_pci_link_free_irq(i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pin_name(i32) #1

declare dso_local i32 @acpi_unregister_gsi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
