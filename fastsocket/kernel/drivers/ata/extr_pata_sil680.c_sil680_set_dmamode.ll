; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sil680.c_sil680_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sil680.c_sil680_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@sil680_set_dmamode.ultra_table = internal global [2 x [7 x i32]] [[7 x i32] [i32 12, i32 7, i32 5, i32 4, i32 2, i32 1, i32 255], [7 x i32] [i32 15, i32 11, i32 7, i32 5, i32 3, i32 2, i32 1]], align 16
@sil680_set_dmamode.dma_table = internal global [3 x i32] [i32 8712, i32 4290, i32 4289], align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sil680_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil680_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = call i64 @sil680_seldev(%struct.ata_port* %20, %struct.ata_device* %21, i32 8)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = call i64 @sil680_seldev(%struct.ata_port* %23, %struct.ata_device* %24, i32 12)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 4, %28
  %30 = add nsw i32 128, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %36, i64 138, i32* %10)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i64 %39, i32* %11)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @pci_read_config_word(%struct.pci_dev* %41, i64 %42, i32* %12)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @pci_read_config_word(%struct.pci_dev* %44, i64 %45, i32* %13)
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, -64
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %9, align 4
  %50 = shl i32 3, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 48
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %10, align 4
  %59 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @XFER_UDMA_0, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %2
  store i32 4289, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x [7 x i32]], [2 x [7 x i32]]* @sil680_set_dmamode.ultra_table, i64 0, i64 %66
  %68 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %69 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @XFER_UDMA_0, align 8
  %72 = sub nsw i64 %70, %71
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %67, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %9, align 4
  %78 = shl i32 3, %77
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %93

81:                                               ; preds = %2
  %82 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %83 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @XFER_MW_DMA_0, align 8
  %86 = sub i64 %84, %85
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* @sil680_set_dmamode.dma_table, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 2, %89
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %81, %64
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @pci_write_config_byte(%struct.pci_dev* %94, i64 %95, i32 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @pci_write_config_word(%struct.pci_dev* %98, i64 %99, i32 %100)
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @pci_write_config_word(%struct.pci_dev* %102, i64 %103, i32 %104)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @sil680_seldev(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
