; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_collect_sge_port_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_cxgb4_main.c_collect_sge_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sge_eth_rxq*, %struct.sge_eth_txq* }
%struct.sge_eth_rxq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.sge_eth_txq = type { i64, i64, i64 }
%struct.port_info = type { i64, i32 }
%struct.queue_port_stats = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.port_info*, %struct.queue_port_stats*)* @collect_sge_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_sge_port_stats(%struct.adapter* %0, %struct.port_info* %1, %struct.queue_port_stats* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.queue_port_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sge_eth_txq*, align 8
  %9 = alloca %struct.sge_eth_rxq*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.port_info* %1, %struct.port_info** %5, align 8
  store %struct.queue_port_stats* %2, %struct.queue_port_stats** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %12, align 8
  %14 = load %struct.port_info*, %struct.port_info** %5, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %13, i64 %16
  store %struct.sge_eth_txq* %17, %struct.sge_eth_txq** %8, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %20, align 8
  %22 = load %struct.port_info*, %struct.port_info** %5, align 8
  %23 = getelementptr inbounds %struct.port_info, %struct.port_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %21, i64 %24
  store %struct.sge_eth_rxq* %25, %struct.sge_eth_rxq** %9, align 8
  %26 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %27 = call i32 @memset(%struct.queue_port_stats* %26, i32 0, i32 28)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %102, %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.port_info*, %struct.port_info** %5, align 8
  %31 = getelementptr inbounds %struct.port_info, %struct.port_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %28
  %35 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %36 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %39 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %45 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %48 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %54 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %58 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %64 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %68 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %74 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %77 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %83 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %87 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %93 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.queue_port_stats*, %struct.queue_port_stats** %6, align 8
  %97 = getelementptr inbounds %struct.queue_port_stats, %struct.queue_port_stats* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %95
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %97, align 4
  br label %102

102:                                              ; preds = %34
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %9, align 8
  %106 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %105, i32 1
  store %struct.sge_eth_rxq* %106, %struct.sge_eth_rxq** %9, align 8
  %107 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %8, align 8
  %108 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %107, i32 1
  store %struct.sge_eth_txq* %108, %struct.sge_eth_txq** %8, align 8
  br label %28

109:                                              ; preds = %28
  ret void
}

declare dso_local i32 @memset(%struct.queue_port_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
