; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_get_mib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.rdma_protocol_stats = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.tp_tcp_stats = type { i64, i64, i64, i64 }
%struct.c4iw_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %union.rdma_protocol_stats*)* @c4iw_get_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_get_mib(%struct.ib_device* %0, %union.rdma_protocol_stats* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %union.rdma_protocol_stats*, align 8
  %5 = alloca %struct.tp_tcp_stats, align 8
  %6 = alloca %struct.tp_tcp_stats, align 8
  %7 = alloca %struct.c4iw_dev*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %union.rdma_protocol_stats* %1, %union.rdma_protocol_stats** %4, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %9 = call %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device* %8)
  store %struct.c4iw_dev* %9, %struct.c4iw_dev** %7, align 8
  %10 = load %struct.c4iw_dev*, %struct.c4iw_dev** %7, align 8
  %11 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cxgb4_get_tcp_stats(i32 %14, %struct.tp_tcp_stats* %5, %struct.tp_tcp_stats* %6)
  %16 = load %union.rdma_protocol_stats*, %union.rdma_protocol_stats** %4, align 8
  %17 = call i32 @memset(%union.rdma_protocol_stats* %16, i32 0, i32 32)
  %18 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %5, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %6, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %19, %21
  %23 = load %union.rdma_protocol_stats*, %union.rdma_protocol_stats** %4, align 8
  %24 = bitcast %union.rdma_protocol_stats* %23 to %struct.TYPE_6__*
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i64 %22, i64* %25, align 8
  %26 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %27, %29
  %31 = load %union.rdma_protocol_stats*, %union.rdma_protocol_stats** %4, align 8
  %32 = bitcast %union.rdma_protocol_stats* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i64 %30, i64* %33, align 8
  %34 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %6, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = load %union.rdma_protocol_stats*, %union.rdma_protocol_stats** %4, align 8
  %40 = bitcast %union.rdma_protocol_stats* %39 to %struct.TYPE_6__*
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.tp_tcp_stats, %struct.tp_tcp_stats* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %43, %45
  %47 = load %union.rdma_protocol_stats*, %union.rdma_protocol_stats** %4, align 8
  %48 = bitcast %union.rdma_protocol_stats* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 %46, i64* %49, align 8
  ret i32 0
}

declare dso_local %struct.c4iw_dev* @to_c4iw_dev(%struct.ib_device*) #1

declare dso_local i32 @cxgb4_get_tcp_stats(i32, %struct.tp_tcp_stats*, %struct.tp_tcp_stats*) #1

declare dso_local i32 @memset(%union.rdma_protocol_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
