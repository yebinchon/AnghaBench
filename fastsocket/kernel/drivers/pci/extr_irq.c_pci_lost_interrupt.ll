; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_irq.c_pci_lost_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_irq.c_pci_lost_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"MSIX routing failure\00", align 1
@PCI_LOST_IRQ_DISABLE_MSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MSI routing failure\00", align 1
@PCI_LOST_IRQ_DISABLE_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unknown cause (not MSI or ACPI)\00", align 1
@PCI_LOST_IRQ_NO_INFORMATION = common dso_local global i32 0, align 4
@PCI_LOST_IRQ_DISABLE_ACPI = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i64 0, align 8
@acpi_noirq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_lost_interrupt(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %9, %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = call i32 @pci_note_irq_problem(%struct.pci_dev* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @PCI_LOST_IRQ_DISABLE_MSIX, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_note_irq_problem(%struct.pci_dev* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @PCI_LOST_IRQ_DISABLE_MSI, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %33

29:                                               ; preds = %9
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @pci_note_irq_problem(%struct.pci_dev* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @PCI_LOST_IRQ_NO_INFORMATION, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @pci_note_irq_problem(%struct.pci_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
