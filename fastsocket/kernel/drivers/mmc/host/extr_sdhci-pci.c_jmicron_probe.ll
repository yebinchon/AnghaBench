; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_jmicron_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_jmicron_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }
%struct.pci_dev = type { i64, i32 }

@SDHCI_QUIRK_32BIT_DMA_ADDR = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_DMA_SIZE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_32BIT_ADMA_SIZE = common dso_local global i32 0, align 4
@SDHCI_QUIRK_RESET_AFTER_REQUEST = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_SMALL_PIO = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_JMICRON_JMB38X_SD = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_JMICRON = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_JMICRON_JMB38X_MMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Refusing to bind to secondary interface.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failure enabling card power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @jmicron_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  %6 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_ADDR, align 4
  %14 = load i32, i32* @SDHCI_QUIRK_32BIT_DMA_SIZE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SDHCI_QUIRK_32BIT_ADMA_SIZE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SDHCI_QUIRK_RESET_AFTER_REQUEST, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SDHCI_QUIRK_BROKEN_SMALL_PIO, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %23 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %28 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB38X_SD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %79

34:                                               ; preds = %26
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* @PCI_VENDOR_ID_JMICRON, align 4
  %37 = load i32, i32* @PCI_DEVICE_ID_JMICRON_JMB38X_MMC, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call %struct.pci_dev* @pci_get_device(i32 %36, i32 %37, %struct.pci_dev* %38)
  store %struct.pci_dev* %39, %struct.pci_dev** %5, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %43 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @PCI_SLOT(i32 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @PCI_SLOT(i32 %50)
  %52 = icmp eq i64 %47, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %55 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %65

64:                                               ; preds = %53, %41
  br label %35

65:                                               ; preds = %63, %35
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = icmp ne %struct.pci_dev* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = call i32 @pci_dev_put(%struct.pci_dev* %69)
  %71 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %72 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %92

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %26
  %80 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %81 = call i32 @jmicron_pmos(%struct.sdhci_pci_chip* %80, i32 1)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %86 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %84, %68
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @jmicron_pmos(%struct.sdhci_pci_chip*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
