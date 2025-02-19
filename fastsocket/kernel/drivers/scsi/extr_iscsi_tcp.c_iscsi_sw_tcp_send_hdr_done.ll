; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_hdr_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_send_hdr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { i32, %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iscsi_segment = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Header done. Next segment size %u total_size %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_tcp_conn*, %struct.iscsi_segment*)* @iscsi_sw_tcp_send_hdr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_sw_tcp_send_hdr_done(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1) #0 {
  %3 = alloca %struct.iscsi_tcp_conn*, align 8
  %4 = alloca %struct.iscsi_segment*, align 8
  %5 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %3, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %4, align 8
  %6 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %6, i32 0, i32 1
  %8 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %7, align 8
  store %struct.iscsi_sw_tcp_conn* %8, %struct.iscsi_sw_tcp_conn** %5, align 8
  %9 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = bitcast %struct.TYPE_3__* %11 to i8*
  %16 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ISCSI_SW_TCP_DBG(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ISCSI_SW_TCP_DBG(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
