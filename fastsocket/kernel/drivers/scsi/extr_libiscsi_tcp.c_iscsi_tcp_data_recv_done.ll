; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_recv_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_2__, %struct.iscsi_conn* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_segment = type { i32 }

@ISCSI_ERR_DATA_DGST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* @iscsi_tcp_data_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_data_recv_done(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_segment*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %4, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %5, align 8
  %8 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %8, i32 0, i32 1
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %12 = load %struct.iscsi_segment*, %struct.iscsi_segment** %5, align 8
  %13 = call i32 @iscsi_tcp_dgst_verify(%struct.iscsi_tcp_conn* %11, %struct.iscsi_segment* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ISCSI_ERR_DATA_DGST, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iscsi_complete_pdu(%struct.iscsi_conn* %18, i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %17
  %36 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %37 = call i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @iscsi_tcp_dgst_verify(%struct.iscsi_tcp_conn*, %struct.iscsi_segment*) #1

declare dso_local i32 @iscsi_complete_pdu(%struct.iscsi_conn*, i32, i32, i32) #1

declare dso_local i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
