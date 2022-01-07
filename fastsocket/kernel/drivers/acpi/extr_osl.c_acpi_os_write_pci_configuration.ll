; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_write_pci_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_write_pci_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_id = type { i32, i32, i32, i32 }

@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_write_pci_configuration(%struct.acpi_pci_id* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_pci_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_pci_id* %0, %struct.acpi_pci_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %16 [
    i32 8, label %13
    i32 16, label %14
    i32 32, label %15
  ]

13:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %18

14:                                               ; preds = %4
  store i32 2, i32* %11, align 4
  br label %18

15:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @AE_ERROR, align 4
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %15, %14, %13
  %19 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %26 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PCI_DEVFN(i32 %27, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @raw_pci_write(i32 %21, i32 %24, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %18
  %39 = load i32, i32* @AE_ERROR, align 4
  br label %42

40:                                               ; preds = %18
  %41 = load i32, i32* @AE_OK, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @raw_pci_write(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
