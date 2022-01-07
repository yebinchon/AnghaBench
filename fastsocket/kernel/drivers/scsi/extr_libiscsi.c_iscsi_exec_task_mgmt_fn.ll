; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_exec_task_mgmt_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_exec_task_mgmt_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, %struct.TYPE_3__, i32, i32, %struct.iscsi_session* }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.iscsi_session = type { i32, i64, i32, i32 }
%struct.iscsi_tm = type { i32 }
%struct.iscsi_task = type { i32 }
%struct.iscsi_hdr = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not send TMF.\0A\00", align 1
@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@iscsi_tmf_timedout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"tmf set timeout\0A\00", align 1
@ISCSI_STATE_LOGGED_IN = common dso_local global i64 0, align 8
@TMF_QUEUED = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_tm*, i32, i32)* @iscsi_exec_task_mgmt_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_exec_task_mgmt_fn(%struct.iscsi_conn* %0, %struct.iscsi_tm* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.iscsi_tm* %1, %struct.iscsi_tm** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %12, i32 0, i32 4
  %14 = load %struct.iscsi_session*, %struct.iscsi_session** %13, align 8
  store %struct.iscsi_session* %14, %struct.iscsi_session** %10, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %16 = load %struct.iscsi_tm*, %struct.iscsi_tm** %7, align 8
  %17 = bitcast %struct.iscsi_tm* %16 to %struct.iscsi_hdr*
  %18 = call %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn* %15, %struct.iscsi_hdr* %17, i32* null, i32 0)
  store %struct.iscsi_task* %18, %struct.iscsi_task** %11, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %11, align 8
  %20 = icmp ne %struct.iscsi_task* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %4
  %22 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %23 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %27 = call i32 @iscsi_conn_printk(i32 %25, %struct.iscsi_conn* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %29 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  %30 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %28, i32 %29)
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %125

36:                                               ; preds = %4
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %38 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @jiffies, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @iscsi_tmf_timedout, align 4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %55 = ptrtoint %struct.iscsi_conn* %54 to i64
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %60 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %59, i32 0, i32 1
  %61 = call i32 @add_timer(%struct.TYPE_3__* %60)
  %62 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %63 = call i32 @ISCSI_DBG_EH(%struct.iscsi_session* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 2
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %68 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %67, i32 0, i32 3
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %75 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %36
  %79 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %80 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TMF_QUEUED, align 8
  %89 = icmp ne i64 %87, %88
  br label %90

90:                                               ; preds = %84, %78, %36
  %91 = phi i1 [ true, %78 ], [ true, %36 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @wait_event_interruptible(i32 %72, i32 %92)
  %94 = load i32, i32* @current, align 4
  %95 = call i64 @signal_pending(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @current, align 4
  %99 = call i32 @flush_signals(i32 %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 1
  %103 = call i32 @del_timer_sync(%struct.TYPE_3__* %102)
  %104 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %105 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %104, i32 0, i32 3
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %108 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %107, i32 0, i32 2
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %112 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %100
  %116 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %117 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ISCSI_STATE_LOGGED_IN, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115, %100
  %122 = load i32, i32* @ENOTCONN, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %125

124:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %121, %21
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.iscsi_task* @__iscsi_conn_send_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @ISCSI_DBG_EH(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @flush_signals(i32) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
