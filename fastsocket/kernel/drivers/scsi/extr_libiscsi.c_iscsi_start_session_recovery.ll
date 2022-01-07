; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_start_session_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_start_session_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i64, i32, i32, i32 }
%struct.iscsi_conn = type { i32, i32, i64, i64, i32, i32 }

@STOP_CONN_TERM = common dso_local global i32 0, align 4
@ISCSI_STATE_TERMINATE = common dso_local global i64 0, align 8
@STOP_CONN_RECOVER = common dso_local global i32 0, align 4
@ISCSI_STATE_IN_RECOVERY = common dso_local global i64 0, align 8
@ISCSI_CONN_STOPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"blocking session\0A\00", align 1
@DID_TRANSPORT_DISRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_session*, %struct.iscsi_conn*, i32)* @iscsi_start_session_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_start_session_recovery(%struct.iscsi_session* %0, %struct.iscsi_conn* %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 2
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @STOP_CONN_TERM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %20, i32 0, i32 2
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 1
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %113

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STOP_CONN_TERM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @ISCSI_STATE_TERMINATE, align 8
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %45

34:                                               ; preds = %26
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STOP_CONN_RECOVER, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @ISCSI_STATE_IN_RECOVERY, align 8
  %42 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 5
  %57 = call i32 @del_timer_sync(i32* %56)
  %58 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %59 = call i32 @iscsi_suspend_tx(%struct.iscsi_conn* %58)
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load i32, i32* @ISCSI_CONN_STOPPED, align 4
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %65 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @STOP_CONN_RECOVER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %94

72:                                               ; preds = %45
  %73 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %78 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ISCSI_STATE_IN_RECOVERY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @STOP_CONN_RECOVER, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %88 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %90 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @iscsi_block_session(i32 %91)
  br label %93

93:                                               ; preds = %86, %82, %72
  br label %94

94:                                               ; preds = %93, %45
  %95 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %95, i32 0, i32 2
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %99 = load i32, i32* @DID_TRANSPORT_DISRUPTED, align 4
  %100 = call i32 @fail_scsi_tasks(%struct.iscsi_conn* %98, i32 -1, i32 %99)
  %101 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %103 = call i32 @fail_mgmt_tasks(%struct.iscsi_session* %101, %struct.iscsi_conn* %102)
  %104 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %105 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %104, i32 0, i32 1
  %106 = call i32 @memset(i32* %105, i32 0, i32 4)
  %107 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %108 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %107, i32 0, i32 2
  %109 = call i32 @spin_unlock_bh(i32* %108)
  %110 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %111 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %110, i32 0, i32 1
  %112 = call i32 @mutex_unlock(i32* %111)
  br label %113

113:                                              ; preds = %94, %19
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @iscsi_suspend_tx(%struct.iscsi_conn*) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*) #1

declare dso_local i32 @iscsi_block_session(i32) #1

declare dso_local i32 @fail_scsi_tasks(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @fail_mgmt_tasks(%struct.iscsi_session*, %struct.iscsi_conn*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
