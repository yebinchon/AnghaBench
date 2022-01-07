; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_hard_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_hard_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.stir_cb = type { i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @stir_hard_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stir_hard_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.stir_cb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.stir_cb* @netdev_priv(%struct.net_device* %6)
  store %struct.stir_cb* %7, %struct.stir_cb** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call i32 @netif_stop_queue(%struct.net_device* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call i32 @SKB_LINEAR_ASSERT(%struct.sk_buff* %10)
  %12 = load %struct.stir_cb*, %struct.stir_cb** %5, align 8
  %13 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.sk_buff* @xchg(i32* %13, %struct.sk_buff* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  %16 = load %struct.stir_cb*, %struct.stir_cb** %5, align 8
  %17 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wake_up_process(i32 %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i64 @unlikely(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = call i32 @WARN_ON(i32 1)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = call i32 @dev_kfree_skb(%struct.sk_buff* %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %28
}

declare dso_local %struct.stir_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SKB_LINEAR_ASSERT(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @xchg(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i64 @unlikely(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
