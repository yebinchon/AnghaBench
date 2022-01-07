; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pci_vpd_pci22_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pci_vpd_pci22_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.pci_vpd_pci22 = type { i32, %struct.TYPE_2__, i64, i32 }

@PCI_CAP_ID_VPD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCI_VPD_PCI22_SIZE = common dso_local global i32 0, align 4
@pci_vpd_pci22_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_vpd_pci22_init(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_vpd_pci22*, align 8
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = load i32, i32* @PCI_CAP_ID_VPD, align 4
  %8 = call i64 @pci_find_capability(%struct.pci_dev* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.pci_vpd_pci22* @kzalloc(i32 40, i32 %15)
  store %struct.pci_vpd_pci22* %16, %struct.pci_vpd_pci22** %4, align 8
  %17 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %18 = icmp ne %struct.pci_vpd_pci22* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %14
  %23 = load i32, i32* @PCI_VPD_PCI22_SIZE, align 4
  %24 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %25 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %28 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32* @pci_vpd_pci22_ops, i32** %29, align 8
  %30 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %31 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %30, i32 0, i32 3
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %35 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %37 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.pci_vpd_pci22*, %struct.pci_vpd_pci22** %4, align 8
  %39 = getelementptr inbounds %struct.pci_vpd_pci22, %struct.pci_vpd_pci22* %38, i32 0, i32 1
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %22, %19, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local %struct.pci_vpd_pci22* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
