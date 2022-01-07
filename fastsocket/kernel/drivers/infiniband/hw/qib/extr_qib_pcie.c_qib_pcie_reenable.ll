; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_reenable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pcie_reenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rewrite of BAR0 failed: %d\0A\00", align 1
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"rewrite of BAR1 failed: %d\0A\00", align 1
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_INTERRUPT_LINE = common dso_local global i32 0, align 4
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"pci_enable_device failed after reset: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_pcie_reenable(%struct.qib_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %11 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_write_config_dword(i32 %12, i32 %13, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @qib_dev_err(%struct.qib_devdata* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %30 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pci_write_config_dword(i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @qib_dev_err(%struct.qib_devdata* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PCI_COMMAND, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pci_write_config_word(i32 %42, i32 %43, i32 %44)
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PCI_INTERRUPT_LINE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @pci_write_config_byte(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %53 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pci_write_config_byte(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_enable_device(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %39
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @qib_dev_err(%struct.qib_devdata* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %39
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @pci_enable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
