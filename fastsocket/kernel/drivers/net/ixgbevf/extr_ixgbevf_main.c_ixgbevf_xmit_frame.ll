; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { %struct.TYPE_3__, i64, i32, %struct.ixgbevf_ring* }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbevf_ring = type { i32, i64 }
%struct.TYPE_4__ = type { i16, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ixgbevf_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca %struct.ixgbevf_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ixgbevf_adapter* %16, %struct.ixgbevf_adapter** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_headlen(%struct.sk_buff* %17)
  %19 = call i64 @TXD_USE_COUNT(i32 %18)
  store i64 %19, i64* %13, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32* @skb_header_pointer(%struct.sk_buff* %20, i32 0, i32 0, i32* null)
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32*, i32** %14, align 8
  %26 = call i64 @is_link_local_ether_addr(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @dev_kfree_skb(%struct.sk_buff* %29)
  %31 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %151

32:                                               ; preds = %24
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %33, i32 0, i32 3
  %35 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %35, i64 %37
  store %struct.ixgbevf_ring* %38, %struct.ixgbevf_ring** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i64
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = add nsw i64 %47, 3
  %49 = call i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring* %46, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %32
  %52 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %56, i32* %3, align 4
  br label %151

57:                                               ; preds = %32
  %58 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %67)
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @IXGBE_TX_FLAGS_VLAN, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %66, %62, %57
  %78 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @ETH_P_IP, align 4
  %85 = call i64 @htons(i32 %84)
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @IXGBE_TX_FLAGS_IPV4, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %77
  %92 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ixgbevf_tso(%struct.ixgbevf_ring* %92, %struct.sk_buff* %93, i32 %94, i32* %10)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %99)
  %101 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %151

102:                                              ; preds = %91
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @IXGBE_TX_FLAGS_TSO, align 4
  %107 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %122

111:                                              ; preds = %102
  %112 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @ixgbevf_tx_csum(%struct.ixgbevf_ring* %112, %struct.sk_buff* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* @IXGBE_TX_FLAGS_CSUM, align 4
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %117, %111
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @ixgbevf_tx_map(%struct.ixgbevf_ring* %125, %struct.sk_buff* %126, i32 %127)
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @ixgbevf_tx_queue(%struct.ixgbevf_ring* %123, i32 %124, i32 %128, i32 %129, i32 %132, i32 %133)
  %135 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %136 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %139 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %143 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = call i32 @writel(i32 %137, i64 %145)
  %147 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %7, align 8
  %148 = load i64, i64* @DESC_NEEDED, align 8
  %149 = call i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring* %147, i64 %148)
  %150 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %122, %98, %51, %28
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @is_link_local_ether_addr(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring*, i64) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ixgbevf_tso(%struct.ixgbevf_ring*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_tx_csum(%struct.ixgbevf_ring*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbevf_tx_queue(%struct.ixgbevf_ring*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ixgbevf_tx_map(%struct.ixgbevf_ring*, %struct.sk_buff*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
