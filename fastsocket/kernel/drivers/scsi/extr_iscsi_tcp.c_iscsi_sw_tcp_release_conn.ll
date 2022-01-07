; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_release_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_release_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_tcp_conn*, %struct.iscsi_session* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.iscsi_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*)* @iscsi_sw_tcp_release_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_release_conn(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca %struct.iscsi_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 1
  %9 = load %struct.iscsi_session*, %struct.iscsi_session** %8, align 8
  store %struct.iscsi_session* %9, %struct.iscsi_session** %3, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 0
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  store %struct.iscsi_tcp_conn* %12, %struct.iscsi_tcp_conn** %4, align 8
  %13 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %13, i32 0, i32 0
  %15 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %14, align 8
  store %struct.iscsi_sw_tcp_conn* %15, %struct.iscsi_sw_tcp_conn** %5, align 8
  %16 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %16, i32 0, i32 0
  %18 = load %struct.socket*, %struct.socket** %17, align 8
  store %struct.socket* %18, %struct.socket** %6, align 8
  %19 = load %struct.socket*, %struct.socket** %6, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.socket*, %struct.socket** %6, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @sock_hold(i32 %25)
  %27 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %28 = call i32 @iscsi_sw_tcp_conn_restore_callbacks(%struct.iscsi_sw_tcp_conn* %27)
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sock_put(i32 %31)
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %36, i32 0, i32 0
  store %struct.socket* null, %struct.socket** %37, align 8
  %38 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.socket*, %struct.socket** %6, align 8
  %42 = call i32 @sockfd_put(%struct.socket* %41)
  br label %43

43:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @iscsi_sw_tcp_conn_restore_callbacks(%struct.iscsi_sw_tcp_conn*) #1

declare dso_local i32 @sock_put(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
