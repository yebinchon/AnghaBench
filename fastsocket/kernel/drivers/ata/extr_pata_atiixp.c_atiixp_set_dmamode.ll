; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atiixp.c_atiixp_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atiixp.c_atiixp_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@atiixp_set_dmamode.mwdma_timings = internal global [5 x i32] [i32 119, i32 33, i32 32, i32 0, i32 0], align 16
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_MODE = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_MWDMA_TIMING = common dso_local global i32 0, align 4
@XFER_MW_DMA_2 = common dso_local global i32 0, align 4
@XFER_MW_DMA_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @atiixp_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XFER_UDMA_0, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %2
  %35 = load i32, i32* @XFER_UDMA_0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %40 = call i32 @pci_read_config_word(%struct.pci_dev* %38, i32 %39, i32* %9)
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 4, %41
  %43 = shl i32 7, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 4, %48
  %50 = shl i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pci_write_config_word(%struct.pci_dev* %53, i32 %54, i32 %55)
  br label %91

57:                                               ; preds = %2
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 16, %60
  %62 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %63 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, 1
  %66 = mul nsw i32 8, %65
  %67 = add nsw i32 %61, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @XFER_MW_DMA_0, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = load i32, i32* @ATIIXP_IDE_MWDMA_TIMING, align 4
  %73 = call i32 @pci_read_config_dword(%struct.pci_dev* %71, i32 %72, i32* %11)
  %74 = load i32, i32* %10, align 4
  %75 = shl i32 255, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* @atiixp_set_dmamode.mwdma_timings, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = load i32, i32* @ATIIXP_IDE_MWDMA_TIMING, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @pci_write_config_dword(%struct.pci_dev* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %57, %34
  %92 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XFER_MW_DMA_2, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 4, i32* %8, align 4
  br label %116

98:                                               ; preds = %91
  %99 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @XFER_MW_DMA_1, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 3, i32* %8, align 4
  br label %115

105:                                              ; preds = %98
  %106 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %107 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XFER_MW_DMA_0, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %8, align 4
  br label %114

112:                                              ; preds = %105
  %113 = call i32 (...) @BUG()
  br label %114

114:                                              ; preds = %112, %111
  br label %115

115:                                              ; preds = %114, %104
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %124 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @atiixp_set_pio_timing(%struct.ata_port* %123, %struct.ata_device* %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %116
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atiixp_set_pio_timing(%struct.ata_port*, %struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
