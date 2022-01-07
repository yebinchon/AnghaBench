; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_chipmatch_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_chipmatch_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64, i64 }

@PCI_VENDOR_ID_BROADCOM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown vendor id %04x\0A\00", align 1
@BCM43224_D11N_ID_VEN1 = common dso_local global i64 0, align 8
@BCM43224_CHIP_ID = common dso_local global i64 0, align 8
@BCM43224_D11N_ID = common dso_local global i64 0, align 8
@BCM43225_D11N2G_ID = common dso_local global i64 0, align 8
@BCM4313_D11N2G_ID = common dso_local global i64 0, align 8
@BCM43236_D11N_ID = common dso_local global i64 0, align 8
@BCM43236_D11N2G_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown device id %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @brcms_c_chipmatch_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_chipmatch_pci(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %7 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @PCI_VENDOR_ID_BROADCOM, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 0, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BCM43224_D11N_ID_VEN1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @BCM43224_CHIP_ID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  store i32 1, i32* %2, align 4
  br label %59

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @BCM43224_D11N_ID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @BCM43225_D11N2G_ID, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 1, i32* %2, align 4
  br label %59

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @BCM4313_D11N2G_ID, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %59

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @BCM43236_D11N_ID, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @BCM43236_D11N2G_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  store i32 1, i32* %2, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %55, %46, %41, %32, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
