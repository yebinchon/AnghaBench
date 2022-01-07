; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_menlo_cmd_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_menlo_cmd_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_16__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_dmabuf = type { i32, i32, %struct.fc_bsg_job*, %struct.TYPE_9__ }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_15__*, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.lpfc_bsg_menlo }
%struct.lpfc_bsg_menlo = type { %struct.lpfc_dmabuf* }
%struct.bsg_job_data = type { i32, i32, %struct.fc_bsg_job*, %struct.TYPE_9__ }
%struct.menlo_response = type { i32 }

@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_bsg_menlo_cmd_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_menlo_cmd_cmp(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.bsg_job_data*, align 8
  %8 = alloca %struct.fc_bsg_job*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_bsg_menlo*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.menlo_response*, align 8
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
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 2
  %24 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %23, align 8
  store %struct.lpfc_dmabuf* %24, %struct.lpfc_dmabuf** %11, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 1
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %26, align 8
  store %struct.lpfc_dmabuf* %27, %struct.lpfc_dmabuf** %10, align 8
  %28 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %29 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.lpfc_bsg_menlo* %30, %struct.lpfc_bsg_menlo** %13, align 8
  %31 = load %struct.lpfc_bsg_menlo*, %struct.lpfc_bsg_menlo** %13, align 8
  %32 = getelementptr inbounds %struct.lpfc_bsg_menlo, %struct.lpfc_bsg_menlo* %31, i32 0, i32 0
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %32, align 8
  store %struct.lpfc_dmabuf* %33, %struct.lpfc_dmabuf** %12, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 0
  store %struct.TYPE_16__* %35, %struct.TYPE_16__** %9, align 8
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 0
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %41 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %40, i32 0, i32 2
  %42 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %41, align 8
  store %struct.fc_bsg_job* %42, %struct.fc_bsg_job** %8, align 8
  %43 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %44 = icmp ne %struct.fc_bsg_job* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %3
  %46 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %47 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %46, i32 0, i32 3
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %3
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %54 = icmp ne %struct.fc_bsg_job* %53, null
  br i1 %54, label %55, label %119

55:                                               ; preds = %48
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %57 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.menlo_response*
  store %struct.menlo_response* %63, %struct.menlo_response** %15, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.menlo_response*, %struct.menlo_response** %15, align 8
  %68 = getelementptr inbounds %struct.menlo_response, %struct.menlo_response* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %55
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %94 [
    i32 128, label %88
    i32 129, label %91
  ]

88:                                               ; preds = %79
  %89 = load i32, i32* @ETIMEDOUT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %17, align 4
  br label %97

91:                                               ; preds = %79
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %17, align 4
  br label %97

94:                                               ; preds = %79
  %95 = load i32, i32* @EACCES, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %94, %91, %88
  br label %101

98:                                               ; preds = %73
  %99 = load i32, i32* @EACCES, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %98, %97
  br label %118

102:                                              ; preds = %55
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %16, align 4
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %110 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %111 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %110, i32 0, i32 2
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %109, i32* %111, i32 %112, i32 0)
  %114 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %115 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %102, %101
  br label %119

119:                                              ; preds = %118, %48
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %122 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %120, %struct.lpfc_iocbq* %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %124 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %125 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %123, %struct.lpfc_dmabuf* %124)
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %128 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %126, %struct.lpfc_dmabuf* %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %131 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %134 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %129, i32 %132, i32 %135)
  %137 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %138 = call i32 @kfree(%struct.lpfc_dmabuf* %137)
  %139 = load %struct.bsg_job_data*, %struct.bsg_job_data** %7, align 8
  %140 = bitcast %struct.bsg_job_data* %139 to %struct.lpfc_dmabuf*
  %141 = call i32 @kfree(%struct.lpfc_dmabuf* %140)
  %142 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %143 = icmp ne %struct.fc_bsg_job* %142, null
  br i1 %143, label %144, label %155

144:                                              ; preds = %119
  %145 = load i32, i32* %17, align 4
  %146 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %147 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %146, i32 0, i32 1
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 8
  %150 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %151 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %150, i32 0, i32 0
  %152 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %151, align 8
  %153 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %8, align 8
  %154 = call i32 %152(%struct.fc_bsg_job* %153)
  br label %155

155:                                              ; preds = %144, %119
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, i32*, i32, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
