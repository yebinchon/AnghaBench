; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_cmdsn_window_closed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_check_cmdsn_window_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"iSCSI CmdSN closed. ExpCmdSn %u MaxCmdSN %u CmdSN %u/%u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*)* @iscsi_check_cmdsn_window_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_check_cmdsn_window_closed(%struct.iscsi_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 0
  %7 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  store %struct.iscsi_session* %7, %struct.iscsi_session** %4, align 8
  %8 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @iscsi_sna_lte(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %1
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %25 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @iscsi_sna_lte(i32, i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
