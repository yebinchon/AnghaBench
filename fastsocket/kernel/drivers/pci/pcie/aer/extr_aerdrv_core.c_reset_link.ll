; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_reset_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pcie_port_service_driver = type { i64 (%struct.pci_dev.0*)* }
%struct.pci_dev.0 = type opaque

@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"no link-reset support at upstream device %s\0A\00", align 1
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i64 0, align 8
@PCI_ERS_RESULT_RECOVERED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"link reset at upstream device %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*)* @reset_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reset_link(%struct.pci_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcie_port_service_driver*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %4, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %4, align 8
  br label %21

21:                                               ; preds = %15, %13
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call %struct.pcie_port_service_driver* @find_aer_service(%struct.pci_dev* %22)
  store %struct.pcie_port_service_driver* %23, %struct.pcie_port_service_driver** %6, align 8
  %24 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %25 = icmp ne %struct.pcie_port_service_driver* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %28 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %27, i32 0, i32 0
  %29 = load i64 (%struct.pci_dev.0*)*, i64 (%struct.pci_dev.0*)** %28, align 8
  %30 = icmp ne i64 (%struct.pci_dev.0*)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.pcie_port_service_driver*, %struct.pcie_port_service_driver** %6, align 8
  %33 = getelementptr inbounds %struct.pcie_port_service_driver, %struct.pcie_port_service_driver* %32, i32 0, i32 0
  %34 = load i64 (%struct.pci_dev.0*)*, i64 (%struct.pci_dev.0*)** %33, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = bitcast %struct.pci_dev* %35 to %struct.pci_dev.0*
  %37 = call i64 %34(%struct.pci_dev.0* %36)
  store i64 %37, i64* %5, align 8
  br label %60

38:                                               ; preds = %26, %21
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i64 @pci_pcie_type(%struct.pci_dev* %39)
  %41 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i64 @pci_pcie_type(%struct.pci_dev* %44)
  %46 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %38
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = call i64 @default_reset_link(%struct.pci_dev* %49)
  store i64 %50, i64* %5, align 8
  br label %59

51:                                               ; preds = %43
  %52 = load i32, i32* @KERN_DEBUG, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 1
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i32 @pci_name(%struct.pci_dev* %55)
  %57 = call i32 @dev_printk(i32 %52, i32* %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %58, i64* %2, align 8
  br label %74

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @PCI_ERS_RESULT_RECOVERED, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32, i32* @KERN_DEBUG, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_name(%struct.pci_dev* %68)
  %70 = call i32 @dev_printk(i32 %65, i32* %67, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i64, i64* @PCI_ERS_RESULT_DISCONNECT, align 8
  store i64 %71, i64* %2, align 8
  br label %74

72:                                               ; preds = %60
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %72, %64, %51
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local %struct.pcie_port_service_driver* @find_aer_service(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i64 @default_reset_link(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
