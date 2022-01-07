; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_nop_out_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_nop_out_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i64, i32, i32, %struct.iscsi_task* }
%struct.iscsi_nopin = type { i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_ERR_CONN_FAILED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ISCSI_TASK_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, %struct.iscsi_nopin*, i8*, i32)* @iscsi_nop_out_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_nop_out_rsp(%struct.iscsi_task* %0, %struct.iscsi_nopin* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_nopin*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %5, align 8
  store %struct.iscsi_nopin* %1, %struct.iscsi_nopin** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 0
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 3
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %15, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %18 = icmp ne %struct.iscsi_task* %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iscsi_nopin*, %struct.iscsi_nopin** %6, align 8
  %24 = bitcast %struct.iscsi_nopin* %23 to %struct.iscsi_hdr*
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @iscsi_recv_pdu(i32 %22, %struct.iscsi_hdr* %24, i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @ISCSI_ERR_CONN_FAILED, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %19
  br label %41

32:                                               ; preds = %4
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %33, i32 0, i32 1
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @mod_timer(i32* %34, i64 %39)
  br label %41

41:                                               ; preds = %32, %31
  %42 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %43 = load i32, i32* @ISCSI_TASK_COMPLETED, align 4
  %44 = call i32 @iscsi_complete_task(%struct.iscsi_task* %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i64 @iscsi_recv_pdu(i32, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @iscsi_complete_task(%struct.iscsi_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
