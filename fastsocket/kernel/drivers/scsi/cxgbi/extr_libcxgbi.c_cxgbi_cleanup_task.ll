; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32 }
%struct.cxgbi_task_data = type { i64 }

@CXGBI_DBG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"task 0x%p, skb 0x%p, itt 0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.cxgbi_task_data*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %4 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %5 = call %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task* %4)
  store %struct.cxgbi_task_data* %5, %struct.cxgbi_task_data** %3, align 8
  %6 = load i32, i32* @CXGBI_DBG_ISCSI, align 4
  %7 = shl i32 1, %6
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @log_debug(i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.iscsi_task* %8, i64 %11, i32 %14)
  %16 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %3, align 8
  %17 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %3, align 8
  %22 = getelementptr inbounds %struct.cxgbi_task_data, %struct.cxgbi_task_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @__kfree_skb(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.cxgbi_task_data*, %struct.cxgbi_task_data** %3, align 8
  %27 = call i32 @memset(%struct.cxgbi_task_data* %26, i32 0, i32 8)
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %29 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %30 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @task_release_itt(%struct.iscsi_task* %28, i32 %31)
  %33 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %34 = call i32 @iscsi_tcp_cleanup_task(%struct.iscsi_task* %33)
  ret void
}

declare dso_local %struct.cxgbi_task_data* @iscsi_task_cxgbi_data(%struct.iscsi_task*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.iscsi_task*, i64, i32) #1

declare dso_local i32 @__kfree_skb(i64) #1

declare dso_local i32 @memset(%struct.cxgbi_task_data*, i32, i32) #1

declare dso_local i32 @task_release_itt(%struct.iscsi_task*, i32) #1

declare dso_local i32 @iscsi_tcp_cleanup_task(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
