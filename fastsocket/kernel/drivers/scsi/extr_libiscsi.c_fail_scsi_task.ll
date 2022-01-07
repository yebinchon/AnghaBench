; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_fail_scsi_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_fail_scsi_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, %struct.scsi_cmnd*, %struct.iscsi_conn* }
%struct.scsi_cmnd = type { i32 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ISCSI_TASK_PENDING = common dso_local global i64 0, align 8
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@ISCSI_TASK_ABRT_SESS_RECOV = common dso_local global i32 0, align 4
@ISCSI_TASK_ABRT_TMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*, i32)* @fail_scsi_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_scsi_task(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 2
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %5, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  store %struct.scsi_cmnd* %13, %struct.scsi_cmnd** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %15 = icmp ne %struct.scsi_cmnd* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %19 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISCSI_TASK_PENDING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @ISCSI_TASK_ABRT_SESS_RECOV, align 4
  store i32 %36, i32* %7, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ISCSI_TASK_ABRT_TMF, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %46 = call i32 @scsi_bidi_cmnd(%struct.scsi_cmnd* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %51 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %50)
  %52 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %49, i32 %51)
  br label %68

53:                                               ; preds = %40
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %55 = call %struct.TYPE_5__* @scsi_out(%struct.scsi_cmnd* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %59 = call %struct.TYPE_5__* @scsi_out(%struct.scsi_cmnd* %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %62 = call %struct.TYPE_6__* @scsi_in(%struct.scsi_cmnd* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %66 = call %struct.TYPE_6__* @scsi_in(%struct.scsi_cmnd* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %53, %48
  %69 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @iscsi_complete_task(%struct.iscsi_task* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %16
  ret void
}

declare dso_local i32 @scsi_bidi_cmnd(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_5__* @scsi_out(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_6__* @scsi_in(%struct.scsi_cmnd*) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
