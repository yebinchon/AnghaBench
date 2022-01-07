; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_ich_pata_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_ich_pata_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ich_laptop = type { i64, i64, i64 }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.piix_host_priv*, i32 }
%struct.piix_host_priv = type { i32 }
%struct.pci_dev = type { i64, i64, i64 }

@ich_laptop = common dso_local global %struct.ich_laptop* null, align 8
@ATA_CBL_PATA40_SHORT = common dso_local global i32 0, align 4
@PIIX_80C_PRI = common dso_local global i32 0, align 4
@PIIX_80C_SEC = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @ich_pata_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_pata_cable_detect(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.piix_host_priv*, align 8
  %6 = alloca %struct.ich_laptop*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.piix_host_priv*, %struct.piix_host_priv** %17, align 8
  store %struct.piix_host_priv* %18, %struct.piix_host_priv** %5, align 8
  %19 = load %struct.ich_laptop*, %struct.ich_laptop** @ich_laptop, align 8
  %20 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %19, i64 0
  store %struct.ich_laptop* %20, %struct.ich_laptop** %6, align 8
  br label %21

21:                                               ; preds = %52, %1
  %22 = load %struct.ich_laptop*, %struct.ich_laptop** %6, align 8
  %23 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = load %struct.ich_laptop*, %struct.ich_laptop** %6, align 8
  %28 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %26
  %35 = load %struct.ich_laptop*, %struct.ich_laptop** %6, align 8
  %36 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.ich_laptop*, %struct.ich_laptop** %6, align 8
  %44 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @ATA_CBL_PATA40_SHORT, align 4
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %42, %34, %26
  %53 = load %struct.ich_laptop*, %struct.ich_laptop** %6, align 8
  %54 = getelementptr inbounds %struct.ich_laptop, %struct.ich_laptop* %53, i32 1
  store %struct.ich_laptop* %54, %struct.ich_laptop** %6, align 8
  br label %21

55:                                               ; preds = %21
  %56 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @PIIX_80C_PRI, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @PIIX_80C_SEC, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %7, align 4
  %66 = load %struct.piix_host_priv*, %struct.piix_host_priv** %5, align 8
  %67 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %72, %50
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
