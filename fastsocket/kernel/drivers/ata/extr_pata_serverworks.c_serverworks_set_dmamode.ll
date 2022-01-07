; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_serverworks.c_serverworks_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_serverworks.c_serverworks_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@serverworks_set_dmamode.dma_mode = internal constant [3 x i32] [i32 119, i32 33, i32 32], align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @serverworks_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serverworks_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 1, %13
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 2, %21
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.pci_dev* @to_pci_dev(i32 %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %9, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 84, i32* %8)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %36 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %37 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 86, %38
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %35, i32 %39, i32* %7)
  %41 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, 4
  %45 = shl i32 15, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XFER_UDMA_0, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %2
  %55 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 68, %56
  %58 = call i32 @pci_write_config_byte(%struct.pci_dev* %55, i32 %57, i32 32)
  %59 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XFER_UDMA_0, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %65 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 %63, %68
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = or i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 1, %74
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %95

78:                                               ; preds = %2
  %79 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 68, %80
  %82 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %83 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XFER_MW_DMA_0, align 8
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* @serverworks_set_dmamode.dma_mode, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pci_write_config_byte(%struct.pci_dev* %79, i32 %81, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 1, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %78, %54
  %96 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %97 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 86, %99
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @pci_write_config_byte(%struct.pci_dev* %96, i32 %100, i32 %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @pci_write_config_byte(%struct.pci_dev* %103, i32 84, i32 %104)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
