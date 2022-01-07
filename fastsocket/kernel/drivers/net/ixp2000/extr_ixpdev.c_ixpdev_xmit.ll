; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixpdev_tx_desc = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ixpdev_priv = type { i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@tx_pointer = common dso_local global i32 0, align 4
@TX_BUF_COUNT = common dso_local global i32 0, align 4
@tx_desc = common dso_local global %struct.ixpdev_tx_desc* null, align 8
@RING_TX_PENDING = common dso_local global i32 0, align 4
@TX_BUF_DESC_BASE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@TX_BUF_COUNT_PER_CHAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ixpdev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixpdev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ixpdev_priv*, align 8
  %7 = alloca %struct.ixpdev_tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ixpdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ixpdev_priv* %11, %struct.ixpdev_priv** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = icmp sgt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @dev_kfree_skb(%struct.sk_buff* %21)
  %23 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %80

24:                                               ; preds = %2
  %25 = load i32, i32* @tx_pointer, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* @tx_pointer, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* @TX_BUF_COUNT, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* @tx_pointer, align 4
  %30 = load %struct.ixpdev_tx_desc*, %struct.ixpdev_tx_desc** @tx_desc, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.ixpdev_tx_desc, %struct.ixpdev_tx_desc* %30, i64 %32
  store %struct.ixpdev_tx_desc* %33, %struct.ixpdev_tx_desc** %7, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ixpdev_tx_desc*, %struct.ixpdev_tx_desc** %7, align 8
  %38 = getelementptr inbounds %struct.ixpdev_tx_desc, %struct.ixpdev_tx_desc* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %6, align 8
  %40 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ixpdev_tx_desc*, %struct.ixpdev_tx_desc** %7, align 8
  %43 = getelementptr inbounds %struct.ixpdev_tx_desc, %struct.ixpdev_tx_desc* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.ixpdev_tx_desc*, %struct.ixpdev_tx_desc** %7, align 8
  %46 = getelementptr inbounds %struct.ixpdev_tx_desc, %struct.ixpdev_tx_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @phys_to_virt(i32 %47)
  %49 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %44, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* @RING_TX_PENDING, align 4
  %53 = load i64, i64* @TX_BUF_DESC_BASE, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 16
  %57 = add i64 %53, %56
  %58 = call i32 @ixp2000_reg_write(i32 %52, i64 %57)
  %59 = load i32, i32* @jiffies, align 4
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @local_irq_save(i64 %62)
  %64 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %6, align 8
  %65 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %6, align 8
  %69 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TX_BUF_COUNT_PER_CHAN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %24
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i32 @netif_stop_queue(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %24
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @local_irq_restore(i64 %77)
  %79 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.ixpdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @ixp2000_reg_write(i32, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
