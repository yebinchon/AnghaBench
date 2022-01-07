; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_broadcast_error_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_broadcast_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, i32 }
%struct.aer_broadcast_data = type { i32, i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"broadcast %s message\0A\00", align 1
@PCI_ERS_RESULT_CAN_RECOVER = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@pci_channel_io_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*, i32 (%struct.pci_dev*, i8*)*)* @broadcast_error_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadcast_error_message(%struct.pci_dev* %0, i32 %1, i8* %2, i32 (%struct.pci_dev*, i8*)* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32 (%struct.pci_dev*, i8*)*, align 8
  %9 = alloca %struct.aer_broadcast_data, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 (%struct.pci_dev*, i8*)* %3, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %10 = load i32, i32* @KERN_DEBUG, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @dev_printk(i32 %10, i32* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %18 = icmp eq i32 (%struct.pci_dev*, i8*)* %17, @report_error_detected
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @PCI_ERS_RESULT_CAN_RECOVER, align 4
  %21 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %9, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  br label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  %24 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %34 = icmp eq i32 (%struct.pci_dev*, i8*)* %33, @report_error_detected
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %44 = call i32 @pci_walk_bus(i32 %42, i32 (%struct.pci_dev*, i8*)* %43, %struct.aer_broadcast_data* %9)
  %45 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %46 = icmp eq i32 (%struct.pci_dev*, i8*)* %45, @report_resume
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = call i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev* %48)
  %50 = load i32, i32* @pci_channel_io_normal, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %39
  br label %60

54:                                               ; preds = %25
  %55 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32 (%struct.pci_dev*, i8*)*, i32 (%struct.pci_dev*, i8*)** %8, align 8
  %59 = call i32 @pci_walk_bus(i32 %57, i32 (%struct.pci_dev*, i8*)* %58, %struct.aer_broadcast_data* %9)
  br label %60

60:                                               ; preds = %54, %53
  %61 = getelementptr inbounds %struct.aer_broadcast_data, %struct.aer_broadcast_data* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  ret i32 %62
}

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*) #1

declare dso_local i32 @report_error_detected(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_walk_bus(i32, i32 (%struct.pci_dev*, i8*)*, %struct.aer_broadcast_data*) #1

declare dso_local i32 @report_resume(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_cleanup_aer_uncorrect_error_status(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
