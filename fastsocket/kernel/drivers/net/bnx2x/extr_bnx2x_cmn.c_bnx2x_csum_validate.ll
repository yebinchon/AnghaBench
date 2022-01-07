; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_csum_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_csum_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%union.eth_rx_cqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bnx2x_fastpath = type { i32 }
%struct.bnx2x_eth_q_stats = type { i32 }

@ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG = common dso_local global i32 0, align 4
@ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %union.eth_rx_cqe*, %struct.bnx2x_fastpath*, %struct.bnx2x_eth_q_stats*)* @bnx2x_csum_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_csum_validate(%struct.sk_buff* %0, %union.eth_rx_cqe* %1, %struct.bnx2x_fastpath* %2, %struct.bnx2x_eth_q_stats* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.eth_rx_cqe*, align 8
  %7 = alloca %struct.bnx2x_fastpath*, align 8
  %8 = alloca %struct.bnx2x_eth_q_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %union.eth_rx_cqe* %1, %union.eth_rx_cqe** %6, align 8
  store %struct.bnx2x_fastpath* %2, %struct.bnx2x_fastpath** %7, align 8
  store %struct.bnx2x_eth_q_stats* %3, %struct.bnx2x_eth_q_stats** %8, align 8
  %9 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %6, align 8
  %10 = bitcast %union.eth_rx_cqe* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_FAST_PATH_RX_CQE_L4_XSUM_NO_VALIDATION_FLG, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %36

17:                                               ; preds = %4
  %18 = load %union.eth_rx_cqe*, %union.eth_rx_cqe** %6, align 8
  %19 = bitcast %union.eth_rx_cqe* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_FAST_PATH_RX_CQE_IP_BAD_XSUM_FLG, align 4
  %23 = load i32, i32* @ETH_FAST_PATH_RX_CQE_L4_BAD_XSUM_FLG, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.bnx2x_eth_q_stats*, %struct.bnx2x_eth_q_stats** %8, align 8
  %29 = getelementptr inbounds %struct.bnx2x_eth_q_stats, %struct.bnx2x_eth_q_stats* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %36

32:                                               ; preds = %17
  %33 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %16, %32, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
