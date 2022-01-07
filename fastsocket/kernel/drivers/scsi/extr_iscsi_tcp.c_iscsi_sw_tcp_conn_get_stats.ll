; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.iscsi_sw_tcp_conn* }
%struct.iscsi_sw_tcp_conn = type { i32, i32 }
%struct.iscsi_stats = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"tx_sendpage_failures\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"rx_discontiguous_hdr\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"eh_abort_cnt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_cls_conn*, %struct.iscsi_stats*)* @iscsi_sw_tcp_conn_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_sw_tcp_conn_get_stats(%struct.iscsi_cls_conn* %0, %struct.iscsi_stats* %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_stats*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store %struct.iscsi_stats* %1, %struct.iscsi_stats** %4, align 8
  %8 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %8, i32 0, i32 0
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %5, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 1
  %13 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  store %struct.iscsi_tcp_conn* %13, %struct.iscsi_tcp_conn** %6, align 8
  %14 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %15 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %14, i32 0, i32 0
  %16 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %15, align 8
  store %struct.iscsi_sw_tcp_conn* %16, %struct.iscsi_sw_tcp_conn** %7, align 8
  %17 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %17, i32 0, i32 0
  store i32 3, i32* %18, align 8
  %19 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %7, align 8
  %27 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %7, align 8
  %42 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strcpy(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %60 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %65 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %66 = call i32 @iscsi_tcp_conn_get_stats(%struct.iscsi_cls_conn* %64, %struct.iscsi_stats* %65)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @iscsi_tcp_conn_get_stats(%struct.iscsi_cls_conn*, %struct.iscsi_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
