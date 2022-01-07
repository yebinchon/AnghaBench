; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pci_mmio_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pci_mmio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qib_devdata = type { i64 (i64, i32)*, i64 }

@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDRCV = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"QIB mmio_enabled function called, read wordscntr %Lx, returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @qib_pci_mmio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_pci_mmio_enabled(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.qib_devdata* %7, %struct.qib_devdata** %4, align 8
  %8 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %10 = icmp ne %struct.qib_devdata* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load i64 (i64, i32)*, i64 (i64, i32)** %18, align 8
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @QIBPORTCNTR_WORDRCV, align 4
  %24 = call i64 %19(i64 %22, i32 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %16
  br label %30

30:                                               ; preds = %29, %11, %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @qib_devinfo(%struct.pci_dev* %31, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @qib_devinfo(%struct.pci_dev*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
