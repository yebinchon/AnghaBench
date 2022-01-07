; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sis.c_get_scr_cfg_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_sis.c_get_scr_cfg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i64, %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@SIS_SCR_BASE = common dso_local global i32 0, align 4
@SIS_PMR = common dso_local global i32 0, align 4
@SIS_PMR_COMBINED = common dso_local global i32 0, align 4
@SIS180_SATA1_OFS = common dso_local global i32 0, align 4
@SIS182_SATA1_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32)* @get_scr_cfg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scr_cfg_addr(%struct.ata_link* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %10 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %9, i32 0, i32 1
  %11 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  store %struct.ata_port* %11, %struct.ata_port** %5, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load i32, i32* @SIS_SCR_BASE, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 4, %19
  %21 = add i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %47 [
    i32 384, label %30
    i32 385, label %30
    i32 386, label %43
    i32 387, label %43
    i32 4482, label %43
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* @SIS_PMR, align 4
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 %32, i32* %8)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SIS_PMR_COMBINED, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @SIS180_SATA1_OFS, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %30
  br label %47

43:                                               ; preds = %26, %26, %26
  %44 = load i32, i32* @SIS182_SATA1_OFS, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %26, %43, %42
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %50 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 16
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
