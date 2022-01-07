; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { %struct.TYPE_11__, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_IPCS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_IPE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_L4CS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_TCPE = common dso_local global i32 0, align 4
@IXGBE_RXDADV_PKTTYPE_UDP = common dso_local global i32 0, align 4
@__IXGBE_RX_CSUM_UDP_ZERO_ERR = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_rx_checksum(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %8)
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %76

19:                                               ; preds = %3
  %20 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %21 = load i32, i32* @IXGBE_RXD_STAT_IPCS, align 4
  %22 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %26 = load i32, i32* @IXGBE_RXDADV_ERR_IPE, align 4
  %27 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %76

35:                                               ; preds = %24, %19
  %36 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %37 = load i32, i32* @IXGBE_RXD_STAT_L4CS, align 4
  %38 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %76

41:                                               ; preds = %35
  %42 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %43 = load i32, i32* @IXGBE_RXDADV_ERR_TCPE, align 4
  %44 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %41
  %47 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %48 = bitcast %union.ixgbe_adv_rx_desc* %47 to %struct.TYPE_10__*
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IXGBE_RXDADV_PKTTYPE_UDP, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i32, i32* @__IXGBE_RX_CSUM_UDP_ZERO_ERR, align 4
  %61 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %76

66:                                               ; preds = %59, %46
  %67 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  br label %76

72:                                               ; preds = %41
  %73 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %66, %65, %40, %29, %18
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
