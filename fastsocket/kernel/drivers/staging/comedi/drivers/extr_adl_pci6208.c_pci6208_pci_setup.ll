; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_pci_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci6208.c_pci6208_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI6208_DRIVER_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"comedi%d: Failed to enable PCI device and request regions\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"comedi%d: local config registers at address 0x%4lx [0x%4lx]\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"comedi%d: 6208 registers at address 0x%4lx [0x%4lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i64*, i32)* @pci6208_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci6208_pci_setup(%struct.pci_dev* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = load i32, i32* @PCI6208_DRIVER_NAME, align 4
  %14 = call i64 @comedi_pci_enable(%struct.pci_dev* %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = call i64 @pci_resource_start(%struct.pci_dev* %22, i32 1)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = call i64 @pci_resource_len(%struct.pci_dev* %24, i32 1)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %27, i64 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i64 @pci_resource_start(%struct.pci_dev* %30, i32 2)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i64 @pci_resource_end(%struct.pci_dev* %32, i32 2)
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %33, %34
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %37, i64 %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %21, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_end(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
