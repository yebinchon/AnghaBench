; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_host_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_host_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.iscsi_sw_tcp_host = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32, i8*)* @iscsi_sw_tcp_host_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_host_get_param(%struct.Scsi_Host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_sw_tcp_host*, align 8
  %9 = alloca %struct.iscsi_session*, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_tcp_conn*, align 8
  %12 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %13 = alloca %struct.sockaddr_in6, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %17 = call %struct.iscsi_sw_tcp_host* @iscsi_host_priv(%struct.Scsi_Host* %16)
  store %struct.iscsi_sw_tcp_host* %17, %struct.iscsi_sw_tcp_host** %8, align 8
  %18 = load %struct.iscsi_sw_tcp_host*, %struct.iscsi_sw_tcp_host** %8, align 8
  %19 = getelementptr inbounds %struct.iscsi_sw_tcp_host, %struct.iscsi_sw_tcp_host* %18, i32 0, i32 0
  %20 = load %struct.iscsi_session*, %struct.iscsi_session** %19, align 8
  store %struct.iscsi_session* %20, %struct.iscsi_session** %9, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %72 [
    i32 128, label %22
  ]

22:                                               ; preds = %3
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 1
  %28 = load %struct.iscsi_conn*, %struct.iscsi_conn** %27, align 8
  store %struct.iscsi_conn* %28, %struct.iscsi_conn** %10, align 8
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %30 = icmp ne %struct.iscsi_conn* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %33 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = load i32, i32* @ENOTCONN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 0
  %40 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %39, align 8
  store %struct.iscsi_tcp_conn* %40, %struct.iscsi_tcp_conn** %11, align 8
  %41 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %11, align 8
  %42 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %41, i32 0, i32 0
  %43 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %42, align 8
  store %struct.iscsi_sw_tcp_conn* %43, %struct.iscsi_sw_tcp_conn** %12, align 8
  %44 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %45 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %37
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* @ENOTCONN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %37
  %55 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %12, align 8
  %56 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr*
  %59 = call i32 @kernel_getsockname(i32 %57, %struct.sockaddr* %58, i32* %15)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  %61 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %4, align 4
  br label %77

67:                                               ; preds = %54
  %68 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr_storage*
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %68, i32 %69, i8* %70)
  store i32 %71, i32* %4, align 4
  br label %77

72:                                               ; preds = %3
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @iscsi_host_get_param(%struct.Scsi_Host* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %67, %65, %48, %31
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.iscsi_sw_tcp_host* @iscsi_host_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kernel_getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_host_get_param(%struct.Scsi_Host*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
