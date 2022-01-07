; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port** }
%struct.ata_port = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.octeon_cf_port*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_cf_port = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.octeon_cf_data* }
%struct.octeon_cf_data = type { i32 }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%union.cvmx_mio_boot_dma_intx = type { i8* }
%union.cvmx_mio_boot_dma_cfgx = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @octeon_cf_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_cf_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca %struct.octeon_cf_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_queued_cmd*, align 8
  %13 = alloca %union.cvmx_mio_boot_dma_intx, align 8
  %14 = alloca %union.cvmx_mio_boot_dma_cfgx, align 8
  %15 = alloca %struct.octeon_cf_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.ata_host*
  store %struct.ata_host* %17, %struct.ata_host** %5, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %150, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %26 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %153

29:                                               ; preds = %23
  %30 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %31 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %30, i32 0, i32 2
  %32 = load %struct.ata_port**, %struct.ata_port*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %32, i64 %34
  %36 = load %struct.ata_port*, %struct.ata_port** %35, align 8
  store %struct.ata_port* %36, %struct.ata_port** %11, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %40, align 8
  store %struct.octeon_cf_data* %41, %struct.octeon_cf_data** %15, align 8
  %42 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %45, align 8
  store %struct.octeon_cf_data* %46, %struct.octeon_cf_data** %15, align 8
  %47 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 2
  %49 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %48, align 8
  store %struct.octeon_cf_port* %49, %struct.octeon_cf_port** %6, align 8
  %50 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %15, align 8
  %51 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CVMX_MIO_BOOT_DMA_INTX(i32 %52)
  %54 = call i8* @cvmx_read_csr(i32 %53)
  %55 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  store i8* %54, i8** %55, align 8
  %56 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %15, align 8
  %57 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CVMX_MIO_BOOT_DMA_CFGX(i32 %58)
  %60 = call i8* @cvmx_read_csr(i32 %59)
  %61 = bitcast %union.cvmx_mio_boot_dma_cfgx* %14 to i8**
  store i8* %60, i8** %61, align 8
  %62 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %63 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %62, i32 %66)
  store %struct.ata_queued_cmd* %67, %struct.ata_queued_cmd** %12, align 8
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %69 = icmp ne %struct.ata_queued_cmd* %68, null
  br i1 %69, label %70, label %149

70:                                               ; preds = %29
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %72 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %149, label %78

78:                                               ; preds = %70
  %79 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to %struct.TYPE_12__*
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %78
  %84 = bitcast %union.cvmx_mio_boot_dma_cfgx* %14 to %struct.TYPE_10__*
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %107, label %88

88:                                               ; preds = %83
  %89 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %90 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sg_is_last(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %96 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sg_next(i32 %97)
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %100 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  store i32 1, i32* %8, align 4
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %102 = call i32 @octeon_cf_dma_start(%struct.ata_queued_cmd* %101)
  br label %150

103:                                              ; preds = %88
  %104 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %105 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %83, %78
  %108 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %109 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %150

113:                                              ; preds = %107
  %114 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %115 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @ioread8(i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @ATA_BUSY, align 4
  %121 = load i32, i32* @ATA_DRQ, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %113
  %126 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  store i8* null, i8** %126, align 8
  %127 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to %struct.TYPE_12__*
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %15, align 8
  %130 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @CVMX_MIO_BOOT_DMA_INTX(i32 %131)
  %133 = bitcast %union.cvmx_mio_boot_dma_intx* %13 to i8**
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @cvmx_write_csr(i32 %132, i8* %134)
  %136 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %137 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %6, align 8
  %140 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %139, i32 0, i32 1
  %141 = call i32 @queue_delayed_work(i32 %138, i32* %140, i32 1)
  store i32 1, i32* %8, align 4
  br label %148

142:                                              ; preds = %113
  %143 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %144 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %12, align 8
  %145 = call i32 @octeon_cf_dma_finished(%struct.ata_port* %143, %struct.ata_queued_cmd* %144)
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %125
  br label %149

149:                                              ; preds = %148, %70, %29
  br label %150

150:                                              ; preds = %149, %112, %94
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %23

153:                                              ; preds = %23
  %154 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %155 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %154, i32 0, i32 1
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  %158 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @IRQ_RETVAL(i32 %159)
  ret i32 %160
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_DMA_INTX(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_DMA_CFGX(i32) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @sg_is_last(i32) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32 @octeon_cf_dma_start(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @octeon_cf_dma_finished(%struct.ata_port*, %struct.ata_queued_cmd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
