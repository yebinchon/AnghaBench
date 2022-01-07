; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ethoc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ethoc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ethoc* @netdev_priv(%struct.net_device* %4)
  store %struct.ethoc* %5, %struct.ethoc** %3, align 8
  %6 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %7 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %6, i32 0, i32 1
  %8 = call i32 @napi_disable(i32* %7)
  %9 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %10 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %15 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @phy_stop(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.ethoc*, %struct.ethoc** %3, align 8
  %20 = call i32 @ethoc_disable_rx_and_tx(%struct.ethoc* %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netif_queue_stopped(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @netif_stop_queue(%struct.net_device* %30)
  br label %32

32:                                               ; preds = %29, %18
  ret i32 0
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @ethoc_disable_rx_and_tx(%struct.ethoc*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
