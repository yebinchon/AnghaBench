; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6260_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_artop.c_artop6260_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@clock = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @artop6260_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @artop6260_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @XFER_PIO_0, align 4
  %13 = sub i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %6, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFER_MW_DMA_0, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %27

26:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @artop6260_load_piomode(%struct.ata_port* %28, %struct.ata_device* %29, i32 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %34 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 68, %35
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i64 %36, i32* %7)
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 4, %40
  %42 = shl i32 7, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XFER_UDMA_0, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %27
  %52 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFER_UDMA_0, align 8
  %56 = sub nsw i64 %54, %55
  %57 = add nsw i64 %56, 1
  %58 = load i64, i64* @clock, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 4, %68
  %70 = shl i32 %65, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %64, %27
  %74 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %75 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 68, %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @pci_write_config_byte(%struct.pci_dev* %74, i64 %78, i32 %79)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @artop6260_load_piomode(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
