; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt_pci_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt3000.c_dt_pci_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i64 }

@PCI_VENDOR_ID_DT = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@n_dt3k_boards = common dso_local global i32 0, align 4
@dt3k_boardtypes = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [65 x i8] c"unknown Data Translation PCI device found with device_id=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_dev*, i32*)* @dt_pci_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @dt_pci_find_device(%struct.pci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @PCI_VENDOR_ID_DT, align 4
  %8 = load i32, i32* @PCI_ANY_ID, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.pci_dev* @pci_get_device(i32 %7, i32 %8, %struct.pci_dev* %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  br label %11

11:                                               ; preds = %43, %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = icmp ne %struct.pci_dev* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @n_dt3k_boards, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dt3k_boardtypes, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %22, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %3, align 8
  br label %51

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @PCI_VENDOR_ID_DT, align 4
  %45 = load i32, i32* @PCI_ANY_ID, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call %struct.pci_dev* @pci_get_device(i32 %44, i32 %45, %struct.pci_dev* %46)
  store %struct.pci_dev* %47, %struct.pci_dev** %4, align 8
  br label %11

48:                                               ; preds = %11
  %49 = load i32*, i32** %5, align 8
  store i32 -1, i32* %49, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %50, %struct.pci_dev** %3, align 8
  br label %51

51:                                               ; preds = %48, %30
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %52
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
