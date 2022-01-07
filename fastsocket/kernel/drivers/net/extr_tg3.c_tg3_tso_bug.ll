; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tso_bug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tso_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_6__ = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.sk_buff*)* @tg3_tso_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_tso_bug(%struct.tg3* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 3
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %8, align 8
  %15 = load %struct.tg3*, %struct.tg3** %4, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i64 @tg3_tx_avail(i32* %18)
  %20 = load i64, i64* %8, align 8
  %21 = icmp sle i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.tg3*, %struct.tg3** %4, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = call i32 @netif_stop_queue(%struct.TYPE_5__* %28)
  %30 = call i32 (...) @smp_mb()
  %31 = load %struct.tg3*, %struct.tg3** %4, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i64 @tg3_tx_avail(i32* %34)
  %36 = load i64, i64* %8, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %39, i32* %3, align 4
  br label %81

40:                                               ; preds = %25
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @netif_wake_queue(%struct.TYPE_5__* %43)
  br label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.tg3*, %struct.tg3** %4, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NETIF_F_TSO, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %46, i32 %54)
  store %struct.sk_buff* %55, %struct.sk_buff** %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = call i64 @IS_ERR(%struct.sk_buff* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %77

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %73, %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load %struct.tg3*, %struct.tg3** %4, align 8
  %70 = getelementptr inbounds %struct.tg3, %struct.tg3* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @tg3_start_xmit(%struct.sk_buff* %68, %struct.TYPE_5__* %71)
  br label %73

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %61, label %76

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %59
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @dev_kfree_skb(%struct.sk_buff* %78)
  %80 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %38
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tg3_tx_avail(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_5__*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_5__*) #1

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @tg3_start_xmit(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
