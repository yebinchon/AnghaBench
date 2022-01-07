; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_read_pci_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_read_pci_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_id = type { i32, i32, i32, i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_pci_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_pci_id* %0, %struct.acpi_pci_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %15, i32* %5, align 4
  br label %49

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %21 [
    i32 8, label %18
    i32 16, label %19
    i32 32, label %20
  ]

18:                                               ; preds = %16
  store i32 1, i32* %11, align 4
  br label %23

19:                                               ; preds = %16
  store i32 2, i32* %11, align 4
  br label %23

20:                                               ; preds = %16
  store i32 4, i32* %11, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @AE_ERROR, align 4
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %20, %19, %18
  %24 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %31 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %6, align 8
  %34 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PCI_DEVFN(i32 %32, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @raw_pci_read(i32 %26, i32 %29, i32 %36, i32 %37, i32 %38, i32* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* @AE_ERROR, align 4
  br label %47

45:                                               ; preds = %23
  %46 = load i32, i32* @AE_OK, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %21, %14
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @raw_pci_read(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
