; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_send_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_conn_send_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_hdr = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_conn_send_pdu(%struct.iscsi_cls_conn* %0, %struct.iscsi_hdr* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca %struct.iscsi_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_conn*, align 8
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %5, align 8
  store %struct.iscsi_hdr* %1, %struct.iscsi_hdr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %12, i32 0, i32 0
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %9, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 0
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %16, align 8
  store %struct.iscsi_session* %17, %struct.iscsi_session** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  %22 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @__iscsi_conn_send_pdu(%struct.iscsi_conn* %21, %struct.iscsi_hdr* %22, i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__iscsi_conn_send_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
