; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_conn_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_conn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_conn_get_stats(%struct.iscsi_cls_conn* %0, %struct.iscsi_stats* %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_stats*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store %struct.iscsi_stats* %1, %struct.iscsi_stats** %4, align 8
  %6 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %6, i32 0, i32 0
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %5, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %30 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
