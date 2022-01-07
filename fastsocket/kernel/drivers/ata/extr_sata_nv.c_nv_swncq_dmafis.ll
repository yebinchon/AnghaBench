; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_dmafis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_dmafis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__, %struct.nv_swncq_port_priv* }
%struct.TYPE_4__ = type { i64 }
%struct.nv_swncq_port_priv = type { i64 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dma setup tag 0x%x\0A\00", align 1
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_PRD_TBL_SZ = common dso_local global i32 0, align 4
@ATA_DMA_TABLE_OFS = common dso_local global i64 0, align 8
@ATA_DMA_CMD = common dso_local global i64 0, align 8
@ATA_DMA_WR = common dso_local global i32 0, align 4
@ATA_DMA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*)* @nv_swncq_dmafis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_swncq_dmafis(%struct.ata_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv_swncq_port_priv*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %10, align 8
  store %struct.nv_swncq_port_priv* %11, %struct.nv_swncq_port_priv** %8, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = call i32 @__ata_bmdma_stop(%struct.ata_port* %12)
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = call i32 @nv_swncq_tag(%struct.ata_port* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %18, i32 %19)
  store %struct.ata_queued_cmd* %20, %struct.ata_queued_cmd** %4, align 8
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %22 = icmp ne %struct.ata_queued_cmd* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

28:                                               ; preds = %1
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nv_swncq_port_priv*, %struct.nv_swncq_port_priv** %8, align 8
  %36 = getelementptr inbounds %struct.nv_swncq_port_priv, %struct.nv_swncq_port_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @ATA_PRD_TBL_SZ, align 4
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %37, %43
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATA_DMA_TABLE_OFS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32(i64 %44, i64 %50)
  %52 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ATA_DMA_CMD, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @ioread8(i64 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @ATA_DMA_WR, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %28
  %66 = load i32, i32* @ATA_DMA_WR, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %28
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ATA_DMA_START, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ATA_DMA_CMD, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @iowrite8(i32 %72, i64 %78)
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %69, %27
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @__ata_bmdma_stop(%struct.ata_port*) #1

declare dso_local i32 @nv_swncq_tag(%struct.ata_port*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
