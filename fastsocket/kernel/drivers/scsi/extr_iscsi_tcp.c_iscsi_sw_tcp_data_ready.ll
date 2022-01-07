; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_data_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.iscsi_conn* }

@iscsi_sw_tcp_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @iscsi_sw_tcp_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_data_ready(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = call i32 @read_lock(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %5, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = icmp ne %struct.iscsi_conn* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i32 @read_unlock(i32* %18)
  br label %40

20:                                               ; preds = %2
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %22, align 8
  store %struct.iscsi_tcp_conn* %23, %struct.iscsi_tcp_conn** %6, align 8
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store %struct.iscsi_conn* %24, %struct.iscsi_conn** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = load i32, i32* @iscsi_sw_tcp_recv, align 4
  %30 = call i32 @tcp_read_sock(%struct.sock* %28, %struct.TYPE_7__* %7, i32 %29)
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @iscsi_sw_sk_state_check(%struct.sock* %31)
  %33 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @iscsi_tcp_segment_unmap(i32* %35)
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = call i32 @read_unlock(i32* %38)
  br label %40

40:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @tcp_read_sock(%struct.sock*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @iscsi_sw_sk_state_check(%struct.sock*) #1

declare dso_local i32 @iscsi_tcp_segment_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
