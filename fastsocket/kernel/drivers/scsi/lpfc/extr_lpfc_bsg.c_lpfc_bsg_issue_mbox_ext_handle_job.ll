; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_ext_handle_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_ext_handle_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_20__*, %struct.TYPE_19__, i32* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.lpfc_hba = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.lpfc_dmabuf* }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__, %struct.bsg_job_data* }
%struct.TYPE_13__ = type { i32 }
%struct.bsg_job_data = type { %struct.TYPE_15__, %struct.fc_bsg_job* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.lpfc_sli_config_mbox = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }

@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"2937 SLI_CONFIG ext-buffer maibox command (x%x/x%x) complete bsg job done, bsize:%d\0A\00", align 1
@dma_ebuf = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"2938 SLI_CONFIG ext-buffer maibox command (x%x/x%x) failure, rc:x%x\0A\00", align 1
@LPFC_BSG_MBOX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_bsg_job* (%struct.lpfc_hba*, %struct.TYPE_12__*)* @lpfc_bsg_issue_mbox_ext_handle_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.bsg_job_data*, align 8
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_sli_config_mbox*, align 8
  %14 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load %struct.bsg_job_data*, %struct.bsg_job_data** %16, align 8
  store %struct.bsg_job_data* %17, %struct.bsg_job_data** %5, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %23 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %22, i32 0, i32 1
  %24 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %23, align 8
  store %struct.fc_bsg_job* %24, %struct.fc_bsg_job** %6, align 8
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %26 = icmp ne %struct.fc_bsg_job* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32* %37, i32** %7, align 8
  %38 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %39 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 4)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %49, align 8
  store %struct.lpfc_dmabuf* %50, %struct.lpfc_dmabuf** %12, align 8
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %54, %struct.lpfc_sli_config_mbox** %13, align 8
  %55 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %56 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %57 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = call i32 @bsg_bf_get(i32 %55, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %30
  %63 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %64 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %14, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lpfc_sli_pcimem_bcopy(i32* %68, i32* %70, i32 %78)
  br label %80

80:                                               ; preds = %62, %30
  %81 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %82 = icmp ne %struct.fc_bsg_job* %81, null
  br i1 %82, label %83, label %136

83:                                               ; preds = %80
  %84 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %85 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %10, align 4
  %88 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %89 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %93 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @sg_copy_from_buffer(i32 %91, i32 %95, i32* %96, i32 %97)
  %99 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  %103 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %103, i32 0, i32 0
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_LIBDFC, align 4
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %117, i32 %118)
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @dma_ebuf, align 4
  %130 = load i32, i32* @sta_pos_addr, align 4
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %132 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 3
  %134 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %133, align 8
  %135 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %120, i32 %124, i32 %128, i32 %129, i32 %130, %struct.lpfc_dmabuf* %134, i32 0)
  br label %150

136:                                              ; preds = %80
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = load i32, i32* @KERN_ERR, align 4
  %139 = load i32, i32* @LOG_LIBDFC, align 4
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %136, %83
  %151 = load i32, i32* @LPFC_BSG_MBOX_DONE, align 4
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %156 = call i32 @kfree(%struct.bsg_job_data* %155)
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  ret %struct.fc_bsg_job* %157
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bsg_bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(i32*, i32*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i32, i32, i32, i32, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
