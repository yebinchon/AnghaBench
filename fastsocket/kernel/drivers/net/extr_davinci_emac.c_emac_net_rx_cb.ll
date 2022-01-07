; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_rx_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_net_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.emac_netpktobj = type { i32, i64 }
%struct.sk_buff = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_priv*, %struct.emac_netpktobj*)* @emac_net_rx_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_net_rx_cb(%struct.emac_priv* %0, %struct.emac_netpktobj* %1) #0 {
  %3 = alloca %struct.emac_priv*, align 8
  %4 = alloca %struct.emac_netpktobj*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %3, align 8
  store %struct.emac_netpktobj* %1, %struct.emac_netpktobj** %4, align 8
  %6 = load %struct.emac_netpktobj*, %struct.emac_netpktobj** %4, align 8
  %7 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sk_buff*
  store %struct.sk_buff* %9, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.emac_netpktobj*, %struct.emac_netpktobj** %4, align 8
  %12 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @skb_put(%struct.sk_buff* %10, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @EMAC_CACHE_INVALIDATE(i64 %17, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %24 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @eth_type_trans(%struct.sk_buff* %22, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @netif_receive_skb(%struct.sk_buff* %29)
  %31 = load %struct.emac_netpktobj*, %struct.emac_netpktobj** %4, align 8
  %32 = getelementptr inbounds %struct.emac_netpktobj, %struct.emac_netpktobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %35 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %40 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  ret i32 0
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @EMAC_CACHE_INVALIDATE(i64, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
