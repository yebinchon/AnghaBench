; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_multicast.c_ipoib_mcast_sendonly_join_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32, %struct.ipoib_mcast* }
%struct.ipoib_mcast = type { i32, i32, %struct.TYPE_5__, i32, %struct.net_device* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENETRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"multicast join failed for %pI6, status %d\0A\00", align 1
@IPOIB_MCAST_FLAG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ib_sa_multicast*)* @ipoib_mcast_sendonly_join_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_mcast_sendonly_join_complete(i32 %0, %struct.ib_sa_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_multicast*, align 8
  %6 = alloca %struct.ipoib_mcast*, align 8
  %7 = alloca %struct.net_device*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ib_sa_multicast* %1, %struct.ib_sa_multicast** %5, align 8
  %8 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %9 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %8, i32 0, i32 1
  %10 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %9, align 8
  store %struct.ipoib_mcast* %10, %struct.ipoib_mcast** %6, align 8
  %11 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %12 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %11, i32 0, i32 4
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENETRESET, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %24 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %5, align 8
  %25 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %24, i32 0, i32 0
  %26 = call i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast* %23, i32* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %72

30:                                               ; preds = %27
  %31 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %32 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp slt i32 %33, 20
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @netdev_priv(%struct.net_device* %37)
  %39 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %40 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ipoib_dbg_mcast(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %30
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = call i32 @netif_tx_lock_bh(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %55, %46
  %50 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %51 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %50, i32 0, i32 1
  %52 = call i32 @skb_queue_empty(i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %62 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %61, i32 0, i32 1
  %63 = call i32 @skb_dequeue(i32* %62)
  %64 = call i32 @dev_kfree_skb_any(i32 %63)
  br label %49

65:                                               ; preds = %49
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 @netif_tx_unlock_bh(%struct.net_device* %66)
  %68 = load i32, i32* @IPOIB_MCAST_FLAG_BUSY, align 4
  %69 = load %struct.ipoib_mcast*, %struct.ipoib_mcast** %6, align 8
  %70 = getelementptr inbounds %struct.ipoib_mcast, %struct.ipoib_mcast* %69, i32 0, i32 0
  %71 = call i32 @test_and_clear_bit(i32 %68, i32* %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %65, %27
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ipoib_mcast_join_finish(%struct.ipoib_mcast*, i32*) #1

declare dso_local i32 @ipoib_dbg_mcast(i32, i8*, i32, i32) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_lock_bh(%struct.net_device*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(%struct.net_device*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
