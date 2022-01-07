; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn*, %struct.iscsi_session* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { {}* }
%struct.iscsi_session = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @iscsi_sw_tcp_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_state_change(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.iscsi_tcp_conn*, align 8
  %4 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca void (%struct.sock*)*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = call i32 @read_lock(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %5, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = icmp ne %struct.iscsi_conn* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i32 @read_unlock(i32* %18)
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %22, align 8
  store %struct.iscsi_session* %23, %struct.iscsi_session** %6, align 8
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @iscsi_sw_sk_state_check(%struct.sock* %24)
  %26 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %27 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %27, align 8
  store %struct.iscsi_tcp_conn* %28, %struct.iscsi_tcp_conn** %3, align 8
  %29 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %29, i32 0, i32 0
  %31 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %30, align 8
  store %struct.iscsi_sw_tcp_conn* %31, %struct.iscsi_sw_tcp_conn** %4, align 8
  %32 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to void (%struct.sock*)**
  %35 = load void (%struct.sock*)*, void (%struct.sock*)** %34, align 8
  store void (%struct.sock*)* %35, void (%struct.sock*)** %7, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = call i32 @read_unlock(i32* %37)
  %39 = load void (%struct.sock*)*, void (%struct.sock*)** %7, align 8
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  call void %39(%struct.sock* %40)
  br label %41

41:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @iscsi_sw_sk_state_check(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
