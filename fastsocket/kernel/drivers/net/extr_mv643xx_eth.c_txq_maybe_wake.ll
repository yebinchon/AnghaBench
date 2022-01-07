; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_maybe_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_maybe_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i64, i64, i32 }
%struct.mv643xx_eth_private = type { i32 }
%struct.netdev_queue = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_queue*)* @txq_maybe_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_maybe_wake(%struct.tx_queue* %0) #0 {
  %2 = alloca %struct.tx_queue*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca %struct.netdev_queue*, align 8
  store %struct.tx_queue* %0, %struct.tx_queue** %2, align 8
  %5 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %8 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %9, i32 %12)
  store %struct.netdev_queue* %13, %struct.netdev_queue** %4, align 8
  %14 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %15 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %19 = call i32 (...) @smp_processor_id()
  %20 = call i32 @__netif_tx_lock(%struct.netdev_queue* %18, i32 %19)
  %21 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %22 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.tx_queue*, %struct.tx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %29 = add nsw i64 %28, 1
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %33 = call i32 @netif_tx_wake_queue(%struct.netdev_queue* %32)
  br label %34

34:                                               ; preds = %31, %17
  %35 = load %struct.netdev_queue*, %struct.netdev_queue** %4, align 8
  %36 = call i32 @__netif_tx_unlock(%struct.netdev_queue* %35)
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_lock(%struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_tx_wake_queue(%struct.netdev_queue*) #1

declare dso_local i32 @__netif_tx_unlock(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
