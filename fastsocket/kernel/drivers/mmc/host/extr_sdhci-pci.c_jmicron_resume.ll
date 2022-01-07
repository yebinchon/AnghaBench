; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_jmicron_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci-pci.c_jmicron_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@PCI_DEVICE_ID_JMICRON_JMB38X_MMC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failure enabling card power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_pci_chip*)* @jmicron_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_resume(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  %6 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %7 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_DEVICE_ID_JMICRON_JMB38X_MMC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %17 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %22 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %23, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @jmicron_enable_mmc(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %14

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %37 = call i32 @jmicron_pmos(%struct.sdhci_pci_chip* %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %42 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @jmicron_enable_mmc(i32, i32) #1

declare dso_local i32 @jmicron_pmos(%struct.sdhci_pci_chip*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
