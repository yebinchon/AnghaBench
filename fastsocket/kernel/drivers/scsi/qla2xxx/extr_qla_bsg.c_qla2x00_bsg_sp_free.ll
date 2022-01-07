; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_sp_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_bsg_sp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.qla_mt_iocb_rqst_fx00 = type { i32 }

@SRB_FXIOCB_BCMD = common dso_local global i64 0, align 8
@SRB_FXDISC_REQ_DMA_VALID = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SRB_FXDISC_RESP_DMA_VALID = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SRB_CT_CMD = common dso_local global i64 0, align 8
@SRB_ELS_CMD_HST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_bsg_sp_free(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.fc_bsg_job*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.qla_mt_iocb_rqst_fx00*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %15, align 8
  store %struct.scsi_qla_host* %16, %struct.scsi_qla_host** %6, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %19, align 8
  store %struct.fc_bsg_job* %20, %struct.fc_bsg_job** %7, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %8, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %2
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = bitcast i32* %37 to %struct.qla_mt_iocb_rqst_fx00*
  store %struct.qla_mt_iocb_rqst_fx00* %38, %struct.qla_mt_iocb_rqst_fx00** %9, align 8
  %39 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %9, align 8
  %40 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SRB_FXDISC_REQ_DMA_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %29
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %51 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %55 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @DMA_TO_DEVICE, align 4
  %59 = call i32 @dma_unmap_sg(i32* %49, i32 %53, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %45, %29
  %61 = load %struct.qla_mt_iocb_rqst_fx00*, %struct.qla_mt_iocb_rqst_fx00** %9, align 8
  %62 = getelementptr inbounds %struct.qla_mt_iocb_rqst_fx00, %struct.qla_mt_iocb_rqst_fx00* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SRB_FXDISC_RESP_DMA_VALID, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %73 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %77 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %81 = call i32 @dma_unmap_sg(i32* %71, i32 %75, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %67, %60
  br label %112

83:                                               ; preds = %2
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %93 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DMA_TO_DEVICE, align 4
  %97 = call i32 @dma_unmap_sg(i32* %87, i32 %91, i32 %95, i32 %96)
  %98 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %99 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %103 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %107 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %111 = call i32 @dma_unmap_sg(i32* %101, i32 %105, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %83, %82
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SRB_CT_CMD, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SRB_FXIOCB_BCMD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SRB_ELS_CMD_HST, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %118, %112
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = call i32 @kfree(%struct.TYPE_11__* %133)
  br label %135

135:                                              ; preds = %130, %124
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = call i32 @qla2x00_rel_sp(%struct.scsi_qla_host* %136, %struct.TYPE_19__* %137)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_11__*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.scsi_qla_host*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
