; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_issue_ct_rsp_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_issue_ct_rsp_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_7__, %struct.fc_bsg_job* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.bsg_job_data = type { i32, i32, %struct.TYPE_7__, %struct.fc_bsg_job* }

@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_issue_ct_rsp_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_issue_ct_rsp_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.fc_bsg_job*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_nodelist*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %15, i32 0, i32 3
  %17 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %16, align 8
  %18 = bitcast %struct.lpfc_dmabuf* %17 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %18, %struct.bsg_job_data** %7, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i64, i64* %13, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %24 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %23, i32 0, i32 3
  %25 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %24, align 8
  store %struct.fc_bsg_job* %25, %struct.fc_bsg_job** %8, align 8
  %26 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %27 = icmp ne %struct.fc_bsg_job* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 0
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %37 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %39, align 8
  store %struct.lpfc_nodelist* %40, %struct.lpfc_nodelist** %12, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %41, i32 0, i32 2
  %43 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %42, align 8
  store %struct.lpfc_dmabuf* %43, %struct.lpfc_dmabuf** %11, align 8
  %44 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %44, i32 0, i32 1
  %46 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %45, align 8
  store %struct.lpfc_dmabuf* %46, %struct.lpfc_dmabuf** %10, align 8
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 0
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %9, align 8
  %49 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %50 = icmp ne %struct.fc_bsg_job* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %31
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %70 = and i32 %68, %69
  switch i32 %70, label %77 [
    i32 128, label %71
    i32 129, label %74
  ]

71:                                               ; preds = %62
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %80

74:                                               ; preds = %62
  %75 = load i32, i32* @EFAULT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %14, align 4
  br label %80

77:                                               ; preds = %62
  %78 = load i32, i32* @EACCES, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %74, %71
  br label %84

81:                                               ; preds = %56
  %82 = load i32, i32* @EACCES, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %80
  br label %90

85:                                               ; preds = %51
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %84
  br label %91

91:                                               ; preds = %90, %31
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %94 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %92, %struct.lpfc_dmabuf* %93)
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %96 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %97 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %95, i32 %98, i32 %101)
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %104 = call i32 @kfree(%struct.lpfc_dmabuf* %103)
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %106 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %107 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %105, %struct.lpfc_iocbq* %106)
  %108 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %109 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %108)
  %110 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %111 = bitcast %struct.bsg_job_data* %110 to %struct.lpfc_dmabuf*
  %112 = call i32 @kfree(%struct.lpfc_dmabuf* %111)
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %114 = icmp ne %struct.fc_bsg_job* %113, null
  br i1 %114, label %115, label %126

115:                                              ; preds = %91
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %118 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 8
  %121 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %122 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %121, i32 0, i32 0
  %123 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %122, align 8
  %124 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %125 = call i32 %123(%struct.fc_bsg_job* %124)
  br label %126

126:                                              ; preds = %115, %91
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
