; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_12__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.TYPE_7__, %struct.fc_bsg_job* }
%struct.TYPE_7__ = type { %struct.lpfc_bsg_iocb }
%struct.lpfc_bsg_iocb = type { %struct.lpfc_dmabuf*, %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.bsg_job_data = type { i32, i32, %struct.TYPE_7__, %struct.fc_bsg_job* }

@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_send_mgmt_cmd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_send_mgmt_cmd_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.fc_bsg_job*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_nodelist*, align 8
  %14 = alloca %struct.lpfc_bsg_iocb*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %18, i32 0, i32 3
  %20 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %19, align 8
  %21 = bitcast %struct.lpfc_dmabuf* %20 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %21, %struct.bsg_job_data** %7, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %15, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %27 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %26, i32 0, i32 3
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %27, align 8
  store %struct.fc_bsg_job* %28, %struct.fc_bsg_job** %8, align 8
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %30 = icmp ne %struct.fc_bsg_job* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %40 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store %struct.lpfc_bsg_iocb* %41, %struct.lpfc_bsg_iocb** %14, align 8
  %42 = load %struct.lpfc_bsg_iocb*, %struct.lpfc_bsg_iocb** %14, align 8
  %43 = getelementptr inbounds %struct.lpfc_bsg_iocb, %struct.lpfc_bsg_iocb* %42, i32 0, i32 1
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %43, align 8
  store %struct.lpfc_nodelist* %44, %struct.lpfc_nodelist** %13, align 8
  %45 = load %struct.lpfc_bsg_iocb*, %struct.lpfc_bsg_iocb** %14, align 8
  %46 = getelementptr inbounds %struct.lpfc_bsg_iocb, %struct.lpfc_bsg_iocb* %45, i32 0, i32 0
  %47 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %46, align 8
  store %struct.lpfc_dmabuf* %47, %struct.lpfc_dmabuf** %12, align 8
  %48 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %48, i32 0, i32 2
  %50 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %49, align 8
  store %struct.lpfc_dmabuf* %50, %struct.lpfc_dmabuf** %11, align 8
  %51 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %51, i32 0, i32 1
  %53 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %52, align 8
  store %struct.lpfc_dmabuf* %53, %struct.lpfc_dmabuf** %10, align 8
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 0
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %9, align 8
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %57 = icmp ne %struct.fc_bsg_job* %56, null
  br i1 %57, label %58, label %109

58:                                               ; preds = %34
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %84 [
    i32 128, label %78
    i32 129, label %81
  ]

78:                                               ; preds = %69
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %17, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load i32, i32* @EFAULT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %17, align 4
  br label %87

84:                                               ; preds = %69
  %85 = load i32, i32* @EACCES, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %17, align 4
  br label %87

87:                                               ; preds = %84, %81, %78
  br label %91

88:                                               ; preds = %63
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %108

92:                                               ; preds = %58
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %16, align 4
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %100 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %100, i32 0, i32 2
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %99, i32* %101, i32 %102, i32 0)
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %92, %91
  br label %109

109:                                              ; preds = %108, %34
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %112 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %110, %struct.lpfc_dmabuf* %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %115 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %113, %struct.lpfc_dmabuf* %114)
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %117 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %118 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %121 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %116, i32 %119, i32 %122)
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %125 = call i32 @kfree(%struct.lpfc_dmabuf* %124)
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %128 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %126, %struct.lpfc_iocbq* %127)
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %13, align 8
  %130 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %129)
  %131 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %132 = bitcast %struct.bsg_job_data* %131 to %struct.lpfc_dmabuf*
  %133 = call i32 @kfree(%struct.lpfc_dmabuf* %132)
  %134 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %135 = icmp ne %struct.fc_bsg_job* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %109
  %137 = load i32, i32* %17, align 4
  %138 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %139 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %138, i32 0, i32 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %137, i32* %141, align 4
  %142 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %143 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %142, i32 0, i32 0
  %144 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %143, align 8
  %145 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %146 = call i32 %144(%struct.fc_bsg_job* %145)
  br label %147

147:                                              ; preds = %136, %109
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, i32*, i32, i32) #1

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
