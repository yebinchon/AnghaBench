; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pci_error_detected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_pci_error_detected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.qib_devdata = type { i32 }

@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"State Normal, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"State Frozen, requesting reset\0A\00", align 1
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"State Permanent Failure, disabling\0A\00", align 1
@QIB_PRESENT = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"QIB PCI errors detected (state %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @qib_pci_error_detected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_pci_error_detected(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = call %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.qib_devdata* %8, %struct.qib_devdata** %5, align 8
  %9 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %36 [
    i32 129, label %11
    i32 130, label %14
    i32 128, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 (%struct.pci_dev*, i8*, ...) @qib_devinfo(%struct.pci_dev* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i32 (%struct.pci_dev*, i8*, ...) @qib_devinfo(%struct.pci_dev* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call i32 @pci_disable_device(%struct.pci_dev* %17)
  %19 = load i32, i32* @PCI_ERS_RESULT_NEED_RESET, align 4
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 (%struct.pci_dev*, i8*, ...) @qib_devinfo(%struct.pci_dev* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %24 = icmp ne %struct.qib_devdata* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* @QIB_PRESENT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %33 = call i32 @qib_disable_after_error(%struct.qib_devdata* %32)
  br label %34

34:                                               ; preds = %25, %20
  %35 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  store i32 %35, i32* %6, align 4
  br label %40

36:                                               ; preds = %2
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (%struct.pci_dev*, i8*, ...) @qib_devinfo(%struct.pci_dev* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %34, %14, %11
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.qib_devdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @qib_devinfo(%struct.pci_dev*, i8*, ...) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @qib_disable_after_error(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
