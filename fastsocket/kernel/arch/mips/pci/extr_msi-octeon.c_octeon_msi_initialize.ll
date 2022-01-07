; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_octeon_msi_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_msi-octeon.c_octeon_msi_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_FEATURE_PCIE = common dso_local global i32 0, align 4
@OCTEON_IRQ_PCI_MSI0 = common dso_local global i32 0, align 4
@octeon_msi_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"MSI[0:63]\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"request_irq(OCTEON_IRQ_PCI_MSI0) failed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MSI[0:15]\00", align 1
@OCTEON_IRQ_PCI_MSI1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"MSI[16:31]\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"request_irq(OCTEON_IRQ_PCI_MSI1) failed\00", align 1
@OCTEON_IRQ_PCI_MSI2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"MSI[32:47]\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"request_irq(OCTEON_IRQ_PCI_MSI2) failed\00", align 1
@OCTEON_IRQ_PCI_MSI3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"MSI[48:63]\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"request_irq(OCTEON_IRQ_PCI_MSI3) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_msi_initialize() #0 {
  %1 = load i32, i32* @OCTEON_FEATURE_PCIE, align 4
  %2 = call i64 @octeon_has_feature(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i32, i32* @OCTEON_IRQ_PCI_MSI0, align 4
  %6 = load i32, i32* @octeon_msi_interrupt, align 4
  %7 = load i32, i32* @IRQF_SHARED, align 4
  %8 = load i32, i32* @octeon_msi_interrupt, align 4
  %9 = call i64 @request_irq(i32 %5, i32 %6, i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %4
  br label %55

14:                                               ; preds = %0
  %15 = call i64 (...) @octeon_is_pci_host()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = load i32, i32* @OCTEON_IRQ_PCI_MSI0, align 4
  %19 = load i32, i32* @octeon_msi_interrupt, align 4
  %20 = load i32, i32* @IRQF_SHARED, align 4
  %21 = load i32, i32* @octeon_msi_interrupt, align 4
  %22 = call i64 @request_irq(i32 %18, i32 %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* @OCTEON_IRQ_PCI_MSI1, align 4
  %28 = load i32, i32* @octeon_msi_interrupt, align 4
  %29 = load i32, i32* @IRQF_SHARED, align 4
  %30 = load i32, i32* @octeon_msi_interrupt, align 4
  %31 = call i64 @request_irq(i32 %27, i32 %28, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %26
  %36 = load i32, i32* @OCTEON_IRQ_PCI_MSI2, align 4
  %37 = load i32, i32* @octeon_msi_interrupt, align 4
  %38 = load i32, i32* @IRQF_SHARED, align 4
  %39 = load i32, i32* @octeon_msi_interrupt, align 4
  %40 = call i64 @request_irq(i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i32, i32* @OCTEON_IRQ_PCI_MSI3, align 4
  %46 = load i32, i32* @octeon_msi_interrupt, align 4
  %47 = load i32, i32* @IRQF_SHARED, align 4
  %48 = load i32, i32* @octeon_msi_interrupt, align 4
  %49 = call i64 @request_irq(i32 %45, i32 %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53, %14
  br label %55

55:                                               ; preds = %54, %13
  ret i32 0
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @octeon_is_pci_host(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
