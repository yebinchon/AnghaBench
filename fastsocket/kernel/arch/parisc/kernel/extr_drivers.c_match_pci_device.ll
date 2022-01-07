; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_pci_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_match_pci_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hardware_path = type { i64*, i64 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.hardware_path*)* @match_pci_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_pci_device(%struct.device* %0, i32 %1, %struct.hardware_path* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hardware_path*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hardware_path* %2, %struct.hardware_path** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.pci_dev* @to_pci_dev(%struct.device* %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.hardware_path*, %struct.hardware_path** %7, align 8
  %20 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 5
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.hardware_path*, %struct.hardware_path** %7, align 8
  %30 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @PCI_FUNC(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %31, %34
  br label %36

36:                                               ; preds = %28, %15
  %37 = phi i1 [ false, %15 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %3
  %40 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PCI_SLOT(i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PCI_FUNC(i32 %46)
  %48 = shl i32 %47, 5
  %49 = or i32 %43, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.hardware_path*, %struct.hardware_path** %7, align 8
  %51 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %39, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
