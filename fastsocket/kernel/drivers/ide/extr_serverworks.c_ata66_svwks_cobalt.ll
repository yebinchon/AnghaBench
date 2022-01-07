; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_serverworks.c_ata66_svwks_cobalt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_serverworks.c_ata66_svwks_cobalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i64, i64, i64, i32 }

@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SERVERWORKS = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SERVERWORKS_CSB5IDE = common dso_local global i64 0, align 8
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ata66_svwks_cobalt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata66_svwks_cobalt(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pci_dev* @to_pci_dev(i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_VENDOR_ID_SERVERWORKS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI_DEVICE_ID_SERVERWORKS_CSB5IDE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 14
  %31 = shl i32 1, %30
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* @ATA_CBL_PATA80, align 4
  br label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @ATA_CBL_PATA40, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %20, %14, %1
  %44 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
