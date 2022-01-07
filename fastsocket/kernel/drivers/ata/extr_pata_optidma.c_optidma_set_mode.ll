; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_optidma.c_optidma_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_optidma.c_optidma_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32*, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, %struct.ata_device**)* @optidma_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optidma_set_mode(%struct.ata_link* %0, %struct.ata_device** %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca %struct.ata_device**, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store %struct.ata_device** %1, %struct.ata_device*** %4, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 1
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %5, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 4, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %8, align 8
  %23 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %24 = load %struct.ata_device**, %struct.ata_device*** %4, align 8
  %25 = call i32 @ata_do_set_mode(%struct.ata_link* %23, %struct.ata_device** %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %2
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = call i32 @pci_read_config_byte(%struct.pci_dev* %29, i32 67, i32* %6)
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 15, %31
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i32 @optidma_make_bits43(i32* %38)
  %40 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %41 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i32 @optidma_make_bits43(i32* %43)
  %45 = shl i32 %44, 2
  %46 = add nsw i32 %39, %45
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pci_write_config_byte(%struct.pci_dev* %51, i32 67, i32 %52)
  br label %54

54:                                               ; preds = %28, %2
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ata_do_set_mode(%struct.ata_link*, %struct.ata_device**) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @optidma_make_bits43(i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
