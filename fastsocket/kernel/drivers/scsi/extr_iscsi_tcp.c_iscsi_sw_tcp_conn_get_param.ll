; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_2__*, %struct.iscsi_tcp_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cls_conn*, i32, i8*)* @iscsi_sw_tcp_conn_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_conn_get_param(%struct.iscsi_cls_conn* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cls_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_tcp_conn*, align 8
  %10 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  %11 = alloca %struct.sockaddr_in6, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %15, align 8
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %8, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 1
  %19 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %18, align 8
  store %struct.iscsi_tcp_conn* %19, %struct.iscsi_tcp_conn** %9, align 8
  %20 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %9, align 8
  %21 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %21, align 8
  store %struct.iscsi_sw_tcp_conn* %22, %struct.iscsi_sw_tcp_conn** %10, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %65 [
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %3, %3
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %31 = icmp ne %struct.iscsi_sw_tcp_conn* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %34 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load i32, i32* @ENOTCONN, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %70

45:                                               ; preds = %32
  %46 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr*
  %50 = call i32 @kernel_getpeername(i32 %48, %struct.sockaddr* %49, i32* %13)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %52 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %45
  %61 = bitcast %struct.sockaddr_in6* %11 to %struct.sockaddr_storage*
  %62 = load i32, i32* %6, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %61, i32 %62, i8* %63)
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %3
  %66 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn* %66, i32 %67, i8* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %60, %58, %37
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kernel_getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

declare dso_local i32 @iscsi_conn_get_param(%struct.iscsi_cls_conn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
