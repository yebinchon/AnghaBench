; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__, %struct.bsg_job_data* }
%struct.TYPE_8__ = type { i32 }
%struct.bsg_job_data = type { %struct.TYPE_11__, %struct.fc_bsg_job* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)*, %struct.TYPE_12__*, %struct.TYPE_9__, i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_bsg_issue_mbox_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.bsg_job_data*, align 8
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.bsg_job_data*, %struct.bsg_job_data** %12, align 8
  store %struct.bsg_job_data* %13, %struct.bsg_job_data** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32* %16, i32** %9, align 8
  %17 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %18 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @memcpy(i32* %23, i32* %24, i32 4)
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 1
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %31 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %30, i32 0, i32 1
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %31, align 8
  store %struct.fc_bsg_job* %32, %struct.fc_bsg_job** %6, align 8
  %33 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %34 = icmp ne %struct.fc_bsg_job* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %37 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %2
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %44 = icmp ne %struct.fc_bsg_job* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %47 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %51 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %55 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @sg_copy_from_buffer(i32 %53, i32 %57, i32* %58, i32 %59)
  %61 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %62 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 8
  br label %65

65:                                               ; preds = %45, %38
  %66 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %67 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %66, i32 0, i32 1
  store %struct.fc_bsg_job* null, %struct.fc_bsg_job** %67, align 8
  %68 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %69 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mempool_free(i32 %72, i32 %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %79 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %77, i32 %82)
  %84 = load %struct.bsg_job_data*, %struct.bsg_job_data** %5, align 8
  %85 = call i32 @kfree(%struct.bsg_job_data* %84)
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %87 = icmp ne %struct.fc_bsg_job* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %65
  %89 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %90 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %93, i32 0, i32 0
  %95 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %94, align 8
  %96 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %97 = call i32 %95(%struct.fc_bsg_job* %96)
  br label %98

98:                                               ; preds = %88, %65
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32*, i32) #1

declare dso_local i32 @mempool_free(i32, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
