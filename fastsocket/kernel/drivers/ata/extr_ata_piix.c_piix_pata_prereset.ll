; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_piix_pata_prereset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_piix_pata_prereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@piix_enable_bits = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @piix_pata_prereset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix_pata_prereset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 0
  %10 = load %struct.ata_port*, %struct.ata_port** %9, align 8
  store %struct.ata_port* %10, %struct.ata_port** %6, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %18 = load i32*, i32** @piix_enable_bits, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = call i32 @pci_test_config_bits(%struct.pci_dev* %17, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @ata_sff_prereset(%struct.ata_link* %29, i64 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_test_config_bits(%struct.pci_dev*, i32*) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
