; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_xennet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netfront_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xennet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netfront_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %4)
  store %struct.netfront_info* %5, %struct.netfront_info** %3, align 8
  %6 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %7 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %6, i32 0, i32 1
  %8 = call i32 @napi_enable(i32* %7)
  %9 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %10 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i64 @netif_carrier_ok(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @xennet_alloc_rx_buffers(%struct.net_device* %16)
  %18 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %24 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %22, i64* %27, align 8
  %28 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %29 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %28, i32 0, i32 2
  %30 = call i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %34 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %33, i32 0, i32 1
  %35 = call i32 @napi_schedule(i32* %34)
  br label %36

36:                                               ; preds = %32, %15
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %39 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @netif_start_queue(%struct.net_device* %41)
  ret i32 0
}

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @xennet_alloc_rx_buffers(%struct.net_device*) #1

declare dso_local i64 @RING_HAS_UNCONSUMED_RESPONSES(%struct.TYPE_4__*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
