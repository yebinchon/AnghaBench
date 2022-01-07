; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_read_mbox_ext_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_read_mbox_ext_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.fc_bsg_job = type { i32 (%struct.fc_bsg_job*)* }

@MBXERR_ERROR = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"2939 SLI_CONFIG ext-buffer rd maibox command complete, ctxState:x%x, mbxStatus:x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_11__*)* @lpfc_bsg_issue_read_mbox_ext_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_issue_read_mbox_ext_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.fc_bsg_job*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = call %struct.fc_bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba* %6, %struct.TYPE_11__* %7)
  store %struct.fc_bsg_job* %8, %struct.fc_bsg_job** %5, align 8
  %9 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %10 = icmp ne %struct.fc_bsg_job* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @MBXERR_ERROR, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i64 %12, i64* %16, align 8
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load i32, i32* @LOG_LIBDFC, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %17
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %17
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = call i32 @lpfc_bsg_mbox_ext_session_reset(%struct.lpfc_hba* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mempool_free(%struct.TYPE_11__* %47, i32 %50)
  %52 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %53 = icmp ne %struct.fc_bsg_job* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %56 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %55, i32 0, i32 0
  %57 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %56, align 8
  %58 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %5, align 8
  %59 = call i32 %57(%struct.fc_bsg_job* %58)
  br label %60

60:                                               ; preds = %54, %46
  ret void
}

declare dso_local %struct.fc_bsg_job* @lpfc_bsg_issue_mbox_ext_handle_job(%struct.lpfc_hba*, %struct.TYPE_11__*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @lpfc_bsg_mbox_ext_session_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
