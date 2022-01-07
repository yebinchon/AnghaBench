; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pcie_write_mrrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pcie_write_mrrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_PERFORMANCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed attempting to set the MRRS\0A\00", align 1
@.str.1 = private unnamed_addr constant [119 x i8] c"MRRS was unable to be configured with a safe value.  If problems are experienced, try running with pci=pcie_bus_safe.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pcie_write_mrrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcie_write_mrrs(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i64, i64* @pcie_bus_config, align 8
  %6 = load i64, i64* @PCIE_BUS_PERFORMANCE, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = call i32 @pcie_get_mps(%struct.pci_dev* %10)
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %9
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pcie_get_readrq(%struct.pci_dev* %14)
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 128
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i1 [ false, %12 ], [ %19, %17 ]
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pcie_set_readrq(%struct.pci_dev* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %35

29:                                               ; preds = %22
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %28, %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %8, %38, %35
  ret void
}

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i32 @pcie_get_readrq(%struct.pci_dev*) #1

declare dso_local i32 @pcie_set_readrq(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
