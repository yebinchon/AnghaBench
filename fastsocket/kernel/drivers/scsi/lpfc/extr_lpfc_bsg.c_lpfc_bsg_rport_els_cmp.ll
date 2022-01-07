; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { i64, %struct.TYPE_13__, %struct.lpfc_nodelist* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.lpfc_nodelist = type { %struct.fc_bsg_job*, %struct.TYPE_15__ }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_12__*, %struct.TYPE_19__, i32* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.fc_bsg_ctels_reply }
%struct.fc_bsg_ctels_reply = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.lpfc_nodelist* }
%struct.bsg_job_data = type { %struct.fc_bsg_job*, %struct.TYPE_15__ }
%struct.lpfc_dmabuf = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

@IOSTAT_SUCCESS = common dso_local global i64 0, align 8
@IOSTAT_LS_RJT = common dso_local global i64 0, align 8
@FC_CTELS_STATUS_REJECT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_rport_els_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_rport_els_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.fc_bsg_job*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.fc_bsg_ctels_reply*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 2
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %19, align 8
  %21 = bitcast %struct.lpfc_nodelist* %20 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %21, %struct.bsg_job_data** %7, align 8
  %22 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %23 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %25, align 8
  store %struct.lpfc_nodelist* %26, %struct.lpfc_nodelist** %10, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 2
  store %struct.lpfc_nodelist* %27, %struct.lpfc_nodelist** %29, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 0
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %35 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %34, i32 0, i32 0
  %36 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %35, align 8
  store %struct.fc_bsg_job* %36, %struct.fc_bsg_job** %8, align 8
  %37 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %38 = icmp ne %struct.fc_bsg_job* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %41 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %39, %3
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 0
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 1
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %9, align 8
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %52, %struct.lpfc_dmabuf** %11, align 8
  %53 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %54 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %57, %struct.lpfc_dmabuf** %12, align 8
  %58 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %59 = icmp ne %struct.fc_bsg_job* %58, null
  br i1 %59, label %60, label %144

60:                                               ; preds = %42
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IOSTAT_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %16, align 4
  %73 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %78 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %82 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @sg_copy_from_buffer(i32 %76, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  br label %143

90:                                               ; preds = %60
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IOSTAT_LS_RJT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %90
  %97 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32 40, i32* %100, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = bitcast i32* %105 to i8**
  store i8** %106, i8*** %14, align 8
  %107 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %108 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store %struct.fc_bsg_ctels_reply* %111, %struct.fc_bsg_ctels_reply** %13, align 8
  %112 = load i32, i32* @FC_CTELS_STATUS_REJECT, align 4
  %113 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %13, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load i8**, i8*** %14, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 3
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %13, align 8
  %119 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 3
  store i8* %117, i8** %120, align 8
  %121 = load i8**, i8*** %14, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %13, align 8
  %125 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 2
  store i8* %123, i8** %126, align 8
  %127 = load i8**, i8*** %14, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %13, align 8
  %131 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load i8**, i8*** %14, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.fc_bsg_ctels_reply*, %struct.fc_bsg_ctels_reply** %13, align 8
  %137 = getelementptr inbounds %struct.fc_bsg_ctels_reply, %struct.fc_bsg_ctels_reply* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %142

139:                                              ; preds = %90
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %139, %96
  br label %143

143:                                              ; preds = %142, %66
  br label %144

144:                                              ; preds = %143, %42
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %146 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %145)
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %149 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %147, %struct.lpfc_iocbq* %148)
  %150 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %151 = bitcast %struct.bsg_job_data* %150 to %struct.lpfc_nodelist*
  %152 = call i32 @kfree(%struct.lpfc_nodelist* %151)
  %153 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %154 = icmp ne %struct.fc_bsg_job* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %144
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %158 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 4
  %161 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %162 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %161, i32 0, i32 0
  %163 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %162, align 8
  %164 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %165 = call i32 %163(%struct.fc_bsg_job* %164)
  br label %166

166:                                              ; preds = %155, %144
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
