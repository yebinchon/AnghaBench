; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_tx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_conn_tx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }

@CXGBI_DBG_SOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"csk 0x%p, cid %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_conn_tx_open(%struct.cxgbi_sock* %0) #0 {
  %2 = alloca %struct.cxgbi_sock*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %2, align 8
  %4 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %5 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %4, i32 0, i32 0
  %6 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_conn* %6, %struct.iscsi_conn** %3, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %8 = icmp ne %struct.iscsi_conn* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @CXGBI_DBG_SOCK, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %2, align 8
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @log_debug(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %12, i32 %15)
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %18 = call i32 @iscsi_conn_queue_work(%struct.iscsi_conn* %17)
  br label %19

19:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32) #1

declare dso_local i32 @iscsi_conn_queue_work(%struct.iscsi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
