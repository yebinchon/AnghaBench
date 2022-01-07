; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.spider_net_card = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @spider_net_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %4)
  store %struct.spider_net_card* %5, %struct.spider_net_card** %3, align 8
  %6 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %7 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %6, i32 0, i32 1
  %8 = call i32 @atomic_inc(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFF_UP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 2
  %18 = call i32 @schedule_work(i32* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %21 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %20, i32 0, i32 1
  %22 = call i32 @atomic_dec(i32* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %25 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
