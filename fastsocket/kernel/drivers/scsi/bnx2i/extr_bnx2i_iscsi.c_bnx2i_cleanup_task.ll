; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, i32, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__*, %struct.bnx2i_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2i_conn = type { i32, %struct.bnx2i_hba* }
%struct.bnx2i_hba = type { i32 }

@ISCSI_TASK_PENDING = common dso_local global i64 0, align 8
@ISCSI_TASK_ABRT_TMF = common dso_local global i64 0, align 8
@ISCSI_CMD_CLEANUP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @bnx2i_cleanup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  %5 = alloca %struct.bnx2i_hba*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 3
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %10, align 8
  store %struct.bnx2i_conn* %11, %struct.bnx2i_conn** %4, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 1
  %14 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %13, align 8
  store %struct.bnx2i_hba* %14, %struct.bnx2i_hba** %5, align 8
  %15 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISCSI_TASK_PENDING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ISCSI_TASK_ABRT_TMF, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %5, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bnx2i_send_cmd_cleanup_req(%struct.bnx2i_hba* %33, i32 %36)
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %43, i32 0, i32 0
  %45 = load i32, i32* @ISCSI_CMD_CLEANUP_TIMEOUT, align 4
  %46 = call i32 @msecs_to_jiffies(i32 %45)
  %47 = call i32 @wait_for_completion_timeout(i32* %44, i32 %46)
  %48 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %49 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  br label %53

53:                                               ; preds = %32, %26
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %55 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bnx2i_iscsi_unmap_sg_list(i32 %56)
  br label %58

58:                                               ; preds = %53, %25
  ret void
}

declare dso_local i32 @bnx2i_send_cmd_cleanup_req(%struct.bnx2i_hba*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2i_iscsi_unmap_sg_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
