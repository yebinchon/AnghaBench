; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_read_bars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_read_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to read bar0 before enable: error %d\0A\00", align 1
@PCI_BASE_ADDRESS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to read bar1 before enable: error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Read bar0 %x bar1 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, %struct.pci_dev*, i32*, i32*)* @read_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_bars(%struct.ipath_devdata* %0, %struct.pci_dev* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %11 = load i32, i32* @PCI_BASE_ADDRESS_0, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 %11, i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @ipath_dev_err(%struct.ipath_devdata* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %23 = load i32, i32* @PCI_BASE_ADDRESS_1, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %22, i32 %23, i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 @ipath_dev_err(%struct.ipath_devdata* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipath_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i32) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
