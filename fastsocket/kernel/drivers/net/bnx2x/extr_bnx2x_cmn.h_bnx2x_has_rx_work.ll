; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_has_rx_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.h_bnx2x_has_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_fastpath = type { %union.eth_rx_cqe*, i32 }
%union.eth_rx_cqe = type { %struct.eth_fast_path_rx_cqe }
%struct.eth_fast_path_rx_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_fastpath*)* @bnx2x_has_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_has_rx_work(%struct.bnx2x_fastpath* %0) #0 {
  %2 = alloca %struct.bnx2x_fastpath*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.eth_rx_cqe*, align 8
  %5 = alloca %struct.eth_fast_path_rx_cqe*, align 8
  store %struct.bnx2x_fastpath* %0, %struct.bnx2x_fastpath** %2, align 8
  %6 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @RCQ_BD(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %10, i32 0, i32 0
  %12 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %union.eth_rx_cqe, %union.eth_rx_cqe* %12, i64 %13
  store %union.eth_rx_cqe* %14, %union.eth_rx_cqe** %4, align 8
  %15 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %4, align 8
  %16 = bitcast %union.eth_rx_cqe* %15 to %struct.eth_fast_path_rx_cqe*
  store %struct.eth_fast_path_rx_cqe* %16, %struct.eth_fast_path_rx_cqe** %5, align 8
  %17 = load %struct.eth_fast_path_rx_cqe*, %struct.eth_fast_path_rx_cqe** %5, align 8
  %18 = call i32 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe* %17)
  ret i32 %18
}

declare dso_local i64 @RCQ_BD(i32) #1

declare dso_local i32 @BNX2X_IS_CQE_COMPLETED(%struct.eth_fast_path_rx_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
