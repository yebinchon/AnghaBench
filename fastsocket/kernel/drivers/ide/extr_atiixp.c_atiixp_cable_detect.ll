; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_atiixp.c_atiixp_cable_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_atiixp.c_atiixp_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@ATIIXP_IDE_UDMA_MODE = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @atiixp_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_cable_detect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pci_dev* @to_pci_dev(i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %14, i32 %17, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 7
  %21 = icmp sge i32 %20, 4
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 112
  %25 = icmp sge i32 %24, 64
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %1
  %27 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
