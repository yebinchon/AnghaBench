; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_dma_finished.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_dma_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_11__*, %struct.octeon_cf_port*, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 (%struct.ata_port*)* }
%struct.octeon_cf_port = type { i32 }
%struct.TYPE_8__ = type { %struct.octeon_cf_data* }
%struct.octeon_cf_data = type { i32 }
%struct.TYPE_7__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%union.cvmx_mio_boot_dma_cfgx = type { i64 }
%union.cvmx_mio_boot_dma_intx = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ata%u: protocol %d task_state %d\0A\00", align 1
@HSM_ST_LAST = common dso_local global i64 0, align 8
@AC_ERR_HOST_BUS = common dso_local global i32 0, align 4
@HSM_ST_ERR = common dso_local global i64 0, align 8
@ATA_PROT_DMA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"DMA stat 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*)* @octeon_cf_dma_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_cf_dma_finished(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca %struct.ata_eh_info*, align 8
  %7 = alloca %struct.octeon_cf_data*, align 8
  %8 = alloca %union.cvmx_mio_boot_dma_cfgx, align 8
  %9 = alloca %union.cvmx_mio_boot_dma_intx, align 8
  %10 = alloca %struct.octeon_cf_port*, align 8
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %5, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.ata_eh_info* %14, %struct.ata_eh_info** %6, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %18, align 8
  store %struct.octeon_cf_data* %19, %struct.octeon_cf_data** %7, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @VPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %26, i64 %29)
  %31 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HSM_ST_LAST, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

37:                                               ; preds = %2
  %38 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 2
  %40 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %39, align 8
  store %struct.octeon_cf_port* %40, %struct.octeon_cf_port** %10, align 8
  %41 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %7, align 8
  %42 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CVMX_MIO_BOOT_DMA_CFGX(i32 %43)
  %45 = call i64 @cvmx_read_csr(i32 %44)
  %46 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  store i64 %45, i64* %46, align 8
  %47 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to %struct.TYPE_9__*
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 1048575
  br i1 %50, label %51, label %60

51:                                               ; preds = %37
  %52 = load i32, i32* @AC_ERR_HOST_BUS, align 4
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* @HSM_ST_ERR, align 8
  %58 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %37
  %61 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  store i64 0, i64* %61, align 8
  %62 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to %struct.TYPE_9__*
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %7, align 8
  %65 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @CVMX_MIO_BOOT_DMA_CFGX(i32 %66)
  %68 = bitcast %union.cvmx_mio_boot_dma_cfgx* %8 to i64*
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @cvmx_write_csr(i32 %67, i64 %69)
  %71 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  store i64 0, i64* %71, align 8
  %72 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %7, align 8
  %73 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @CVMX_MIO_BOOT_DMA_INT_ENX(i32 %74)
  %76 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @cvmx_write_csr(i32 %75, i64 %77)
  %79 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to %struct.TYPE_10__*
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.octeon_cf_data*, %struct.octeon_cf_data** %7, align 8
  %82 = getelementptr inbounds %struct.octeon_cf_data, %struct.octeon_cf_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CVMX_MIO_BOOT_DMA_INTX(i32 %83)
  %85 = bitcast %union.cvmx_mio_boot_dma_intx* %9 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @cvmx_write_csr(i32 %84, i64 %86)
  %88 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %89 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %91, align 8
  %93 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %94 = call i32 %92(%struct.ata_port* %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %96 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ata_sff_hsm_move(%struct.ata_port* %95, %struct.ata_queued_cmd* %96, i32 %97, i32 0)
  %99 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %60
  %105 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %106 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ATA_PROT_DMA, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.ata_eh_info*, %struct.ata_eh_info** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @ata_ehi_push_desc(%struct.ata_eh_info* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %111, %104, %60
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %36
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @VPRINTK(i8*, i32, i64, i64) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_DMA_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_MIO_BOOT_DMA_INT_ENX(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_DMA_INTX(i32) #1

declare dso_local i32 @ata_sff_hsm_move(%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_ehi_push_desc(%struct.ata_eh_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
