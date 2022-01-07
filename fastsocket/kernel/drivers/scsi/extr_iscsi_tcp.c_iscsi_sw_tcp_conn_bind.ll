; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i32 }
%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.socket*, i32 }
%struct.socket = type { %struct.TYPE_2__*, %struct.sock* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sockfd_lookup failed %d\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i64, i32)* @iscsi_sw_tcp_conn_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_conn_bind(%struct.iscsi_cls_session* %0, %struct.iscsi_cls_conn* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cls_session*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iscsi_session*, align 8
  %11 = alloca %struct.iscsi_conn*, align 8
  %12 = alloca %struct.iscsi_tcp_conn*, align 8
  %13 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %6, align 8
  store %struct.iscsi_cls_conn* %1, %struct.iscsi_cls_conn** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %17, i32 0, i32 0
  %19 = load %struct.iscsi_session*, %struct.iscsi_session** %18, align 8
  store %struct.iscsi_session* %19, %struct.iscsi_session** %10, align 8
  %20 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %21, align 8
  store %struct.iscsi_conn* %22, %struct.iscsi_conn** %11, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 0
  %25 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %24, align 8
  store %struct.iscsi_tcp_conn* %25, %struct.iscsi_tcp_conn** %12, align 8
  %26 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %27 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %26, i32 0, i32 0
  %28 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %27, align 8
  store %struct.iscsi_sw_tcp_conn* %28, %struct.iscsi_sw_tcp_conn** %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.socket* @sockfd_lookup(i32 %30, i32* %16)
  store %struct.socket* %31, %struct.socket** %15, align 8
  %32 = load %struct.socket*, %struct.socket** %15, align 8
  %33 = icmp ne %struct.socket* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @iscsi_conn_printk(i32 %35, %struct.iscsi_conn* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %88

41:                                               ; preds = %4
  %42 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %6, align 8
  %43 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @iscsi_conn_bind(%struct.iscsi_cls_session* %42, %struct.iscsi_cls_conn* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %84

49:                                               ; preds = %41
  %50 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %51 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %50, i32 0, i32 0
  %52 = call i32 @spin_lock_bh(i32* %51)
  %53 = load %struct.socket*, %struct.socket** %15, align 8
  %54 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %13, align 8
  %55 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %54, i32 0, i32 0
  store %struct.socket* %53, %struct.socket** %55, align 8
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  %57 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.socket*, %struct.socket** %15, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  %61 = load %struct.sock*, %struct.sock** %60, align 8
  store %struct.sock* %61, %struct.sock** %14, align 8
  %62 = load %struct.sock*, %struct.sock** %14, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @HZ, align 4
  %65 = mul nsw i32 15, %64
  %66 = load %struct.sock*, %struct.sock** %14, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = load %struct.sock*, %struct.sock** %14, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  %72 = call i32 @iscsi_sw_tcp_conn_set_callbacks(%struct.iscsi_conn* %71)
  %73 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %13, align 8
  %74 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %73, i32 0, i32 0
  %75 = load %struct.socket*, %struct.socket** %74, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %13, align 8
  %81 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  %83 = call i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn* %82)
  store i32 0, i32* %5, align 4
  br label %88

84:                                               ; preds = %48
  %85 = load %struct.socket*, %struct.socket** %15, align 8
  %86 = call i32 @sockfd_put(%struct.socket* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %49, %34
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*, i32) #1

declare dso_local i32 @iscsi_conn_bind(%struct.iscsi_cls_session*, %struct.iscsi_cls_conn*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsi_sw_tcp_conn_set_callbacks(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsi_tcp_hdr_recv_prep(%struct.iscsi_tcp_conn*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
