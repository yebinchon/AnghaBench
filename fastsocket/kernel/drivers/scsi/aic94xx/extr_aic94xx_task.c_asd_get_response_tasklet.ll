; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_get_response_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_task.c_asd_get_response_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { i32, %struct.sas_task*, %struct.asd_ha_struct* }
%struct.sas_task = type { i64, %struct.task_status_struct }
%struct.task_status_struct = type { i32, i8*, i32* }
%struct.asd_ha_struct = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.asd_dma_tok**, i32 }
%struct.asd_dma_tok = type { i8* }
%struct.done_list_struct = type { i64 }
%struct.tc_resp_sb_struct = type { i32, i32, i32 }
%struct.ssp_response_iu = type { i32 }
%struct.ata_task_resp = type { i32*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Uh-oh! No escb for this dl?!\0A\00", align 1
@SAS_PROTOCOL_SSP = common dso_local global i64 0, align 8
@SAS_STATUS_BUF_SIZE = common dso_local global i32 0, align 4
@ATA_RESP_FIS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*, %struct.done_list_struct*)* @asd_get_response_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_get_response_tasklet(%struct.asd_ascb* %0, %struct.done_list_struct* %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.done_list_struct*, align 8
  %5 = alloca %struct.asd_ha_struct*, align 8
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca %struct.task_status_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tc_resp_sb_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.asd_ascb*, align 8
  %12 = alloca %struct.asd_dma_tok*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ssp_response_iu*, align 8
  %15 = alloca %struct.ata_task_resp*, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %3, align 8
  store %struct.done_list_struct* %1, %struct.done_list_struct** %4, align 8
  %16 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %17 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %16, i32 0, i32 2
  %18 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %17, align 8
  store %struct.asd_ha_struct* %18, %struct.asd_ha_struct** %5, align 8
  %19 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  %20 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %19, i32 0, i32 1
  %21 = load %struct.sas_task*, %struct.sas_task** %20, align 8
  store %struct.sas_task* %21, %struct.sas_task** %6, align 8
  %22 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %23 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %22, i32 0, i32 1
  store %struct.task_status_struct* %23, %struct.task_status_struct** %7, align 8
  %24 = load %struct.done_list_struct*, %struct.done_list_struct** %4, align 8
  %25 = getelementptr inbounds %struct.done_list_struct, %struct.done_list_struct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.tc_resp_sb_struct*
  store %struct.tc_resp_sb_struct* %28, %struct.tc_resp_sb_struct** %9, align 8
  %29 = load %struct.tc_resp_sb_struct*, %struct.tc_resp_sb_struct** %9, align 8
  %30 = getelementptr inbounds %struct.tc_resp_sb_struct, %struct.tc_resp_sb_struct* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 1
  %32 = and i32 %31, 112
  %33 = ashr i32 %32, 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %36 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @spin_lock_irqsave(i32* %37, i32 %39)
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %42 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %41, i32 0, i32 1
  %43 = load %struct.tc_resp_sb_struct*, %struct.tc_resp_sb_struct** %9, align 8
  %44 = getelementptr inbounds %struct.tc_resp_sb_struct, %struct.tc_resp_sb_struct* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 1
  %46 = call i64 @le16_to_cpu(i32 %45)
  %47 = trunc i64 %46 to i32
  %48 = call %struct.asd_ascb* @asd_tc_index_find(%struct.TYPE_4__* %42, i32 %47)
  store %struct.asd_ascb* %48, %struct.asd_ascb** %11, align 8
  %49 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %50 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @spin_unlock_irqrestore(i32* %51, i32 %53)
  %55 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %56 = icmp ne %struct.asd_ascb* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %2
  %58 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %139

59:                                               ; preds = %2
  %60 = load %struct.task_status_struct*, %struct.task_status_struct** %7, align 8
  %61 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %63 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.asd_dma_tok**, %struct.asd_dma_tok*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %68 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.asd_dma_tok*, %struct.asd_dma_tok** %65, i64 %71
  %73 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %72, align 8
  store %struct.asd_dma_tok* %73, %struct.asd_dma_tok** %12, align 8
  %74 = load %struct.asd_dma_tok*, %struct.asd_dma_tok** %12, align 8
  %75 = getelementptr inbounds %struct.asd_dma_tok, %struct.asd_dma_tok* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %13, align 8
  %77 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SAS_PROTOCOL_SSP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %59
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr i8, i8* %83, i64 16
  %85 = getelementptr i8, i8* %84, i64 4
  %86 = bitcast i8* %85 to %struct.ssp_response_iu*
  store %struct.ssp_response_iu* %86, %struct.ssp_response_iu** %14, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = load %struct.task_status_struct*, %struct.task_status_struct** %7, align 8
  %92 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %5, align 8
  %94 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %98 = load %struct.ssp_response_iu*, %struct.ssp_response_iu** %14, align 8
  %99 = call i32 @sas_ssp_task_response(i32* %96, %struct.sas_task* %97, %struct.ssp_response_iu* %98)
  br label %135

100:                                              ; preds = %59
  %101 = load %struct.task_status_struct*, %struct.task_status_struct** %7, align 8
  %102 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = bitcast i32* %104 to i8*
  %106 = bitcast i8* %105 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %106, %struct.ata_task_resp** %15, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @le32_to_cpu(i32 %109)
  %111 = load %struct.task_status_struct*, %struct.task_status_struct** %7, align 8
  %112 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @SAS_STATUS_BUF_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp uge i64 %114, 16
  br i1 %115, label %116, label %134

116:                                              ; preds = %100
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr i8, i8* %117, i64 6
  %119 = bitcast i8* %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le16_to_cpu(i32 %120)
  %122 = load %struct.ata_task_resp*, %struct.ata_task_resp** %15, align 8
  %123 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.ata_task_resp*, %struct.ata_task_resp** %15, align 8
  %125 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i8*, i8** %13, align 8
  %129 = getelementptr i8, i8* %128, i64 16
  %130 = load i32, i32* @ATA_RESP_FIS_SIZE, align 4
  %131 = call i32 @memcpy(i32* %127, i8* %129, i32 %130)
  %132 = load %struct.task_status_struct*, %struct.task_status_struct** %7, align 8
  %133 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %132, i32 0, i32 0
  store i32 16, i32* %133, align 8
  br label %134

134:                                              ; preds = %116, %100
  br label %135

135:                                              ; preds = %134, %82
  %136 = load %struct.asd_ascb*, %struct.asd_ascb** %11, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @asd_invalidate_edb(%struct.asd_ascb* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %57
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local %struct.asd_ascb* @asd_tc_index_find(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @sas_ssp_task_response(i32*, %struct.sas_task*, %struct.ssp_response_iu*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @asd_invalidate_edb(%struct.asd_ascb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
