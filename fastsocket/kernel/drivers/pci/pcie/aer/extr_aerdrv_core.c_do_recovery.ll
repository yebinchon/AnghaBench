; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_do_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_do_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@AER_FATAL = common dso_local global i32 0, align 4
@pci_channel_io_frozen = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"error_detected\00", align 1
@report_error_detected = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"mmio_enabled\00", align 1
@report_mmio_enabled = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_NEED_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"slot_reset\00", align 1
@report_slot_reset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@report_resume = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"AER Device recovery successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"AER Device recovery failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @do_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_recovery(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AER_FATAL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @pci_channel_io_frozen, align 4
  store i32 %13, i32* %7, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @pci_channel_io_normal, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @report_error_detected, align 4
  %20 = call i64 @broadcast_error_message(%struct.pci_dev* %17, i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @AER_FATAL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = call i64 @reset_link(%struct.pci_dev* %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %63

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PCI_ERS_RESULT_CAN_RECOVER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @report_mmio_enabled, align 4
  %40 = call i64 @broadcast_error_message(%struct.pci_dev* %37, i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @PCI_ERS_RESULT_NEED_RESET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @report_slot_reset, align 4
  %49 = call i64 @broadcast_error_message(%struct.pci_dev* %46, i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %63

55:                                               ; preds = %50
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @report_resume, align 4
  %59 = call i64 @broadcast_error_message(%struct.pci_dev* %56, i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %67

63:                                               ; preds = %54, %30
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %55
  ret void
}

declare dso_local i64 @broadcast_error_message(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i64 @reset_link(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
