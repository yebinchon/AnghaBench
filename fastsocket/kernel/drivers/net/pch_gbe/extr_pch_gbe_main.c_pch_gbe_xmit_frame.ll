; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_adapter = type { %struct.pch_gbe_tx_ring* }
%struct.pch_gbe_tx_ring = type { i32, i32, i32 }

@NETDEV_TX_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Return : BUSY  next_to use : 0x%08x  next_to clean : 0x%08x\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @pch_gbe_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pch_gbe_adapter*, align 8
  %7 = alloca %struct.pch_gbe_tx_ring*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.pch_gbe_adapter* %10, %struct.pch_gbe_adapter** %6, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 0
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %12, align 8
  store %struct.pch_gbe_tx_ring* %13, %struct.pch_gbe_tx_ring** %7, align 8
  %14 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %14, i32 0, i32 0
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_trylock_irqsave(i32* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @NETDEV_TX_LOCKED, align 4
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %23 = call i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i32 @netif_stop_queue(%struct.net_device* %30)
  %32 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %43, i32* %3, align 4
  br label %54

44:                                               ; preds = %21
  %45 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %6, align 8
  %46 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @pch_gbe_tx_queue(%struct.pch_gbe_adapter* %45, %struct.pch_gbe_tx_ring* %46, %struct.sk_buff* %47)
  %49 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %7, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %29, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pch_gbe_tx_queue(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
