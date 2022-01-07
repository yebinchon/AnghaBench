; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_netx-eth.c_netx_eth_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.netx_eth_priv = type { i32, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @netx_eth_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netx_eth_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.netx_eth_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.netx_eth_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.netx_eth_priv* %9, %struct.netx_eth_priv** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %17 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %20 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1560
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @memcpy_toio(i64 %22, i8* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %26, 60
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %30 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1560
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 60, %36
  %38 = call i32 @memset_io(i64 %35, i32 0, i32 %37)
  store i32 60, i32* %7, align 4
  br label %39

39:                                               ; preds = %28, %2
  %40 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %41 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @REQ_FIFO_PORT_LO(i32 %42)
  %44 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %45 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FIFO_PTR_SEGMENT(i32 %46)
  %48 = call i32 @FIFO_PTR_FRAMENO(i32 1)
  %49 = or i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @FIFO_PTR_FRAMELEN(i32 %50)
  %52 = or i32 %49, %51
  %53 = call i32 @pfifo_push(i32 %43, i32 %52)
  %54 = load i32, i32* @jiffies, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @netif_stop_queue(%struct.net_device* %70)
  %72 = load %struct.netx_eth_priv*, %struct.netx_eth_priv** %5, align 8
  %73 = getelementptr inbounds %struct.netx_eth_priv, %struct.netx_eth_priv* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_irq(i32* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %77
}

declare dso_local %struct.netx_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @pfifo_push(i32, i32) #1

declare dso_local i32 @REQ_FIFO_PORT_LO(i32) #1

declare dso_local i32 @FIFO_PTR_SEGMENT(i32) #1

declare dso_local i32 @FIFO_PTR_FRAMENO(i32) #1

declare dso_local i32 @FIFO_PTR_FRAMELEN(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
