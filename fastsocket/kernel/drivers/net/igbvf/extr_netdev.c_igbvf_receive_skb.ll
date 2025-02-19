; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_receive_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@IGBVF_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_LB = common dso_local global i32 0, align 4
@E1000_RXD_SPC_VLAN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32)* @igbvf_receive_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_receive_skb(%struct.igbvf_adapter* %0, %struct.net_device* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IGBVF_FLAG_RX_LB_VLAN_BSWAP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @E1000_RXDEXT_STATERR_LB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @be16_to_cpu(i32 %34)
  %36 = load i32, i32* @E1000_RXD_SPC_VLAN_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  br label %43

38:                                               ; preds = %28, %21
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i32, i32* @E1000_RXD_SPC_VLAN_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %45 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %44, i32 %47, i32 %48)
  br label %53

50:                                               ; preds = %16, %5
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = call i32 @netif_receive_skb(%struct.sk_buff* %51)
  br label %53

53:                                               ; preds = %50, %43
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
