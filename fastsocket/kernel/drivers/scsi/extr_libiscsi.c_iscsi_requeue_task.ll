; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_requeue_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_requeue_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_requeue_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %4 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %4, i32 0, i32 1
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_conn* %6, %struct.iscsi_conn** %3, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 0
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %19 = call i32 @iscsi_conn_queue_work(%struct.iscsi_conn* %18)
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
