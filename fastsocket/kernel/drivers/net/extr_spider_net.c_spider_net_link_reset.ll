; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_link_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.spider_net_card = type { i32, i32, i64 }

@SPIDER_NET_GMACST = common dso_local global i32 0, align 4
@SPIDER_NET_GMACINTEN = common dso_local global i32 0, align 4
@BCM54XX_COPPER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SPIDER_NET_ANEG_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @spider_net_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_link_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.spider_net_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %4)
  store %struct.spider_net_card* %5, %struct.spider_net_card** %3, align 8
  %6 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %7 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %6, i32 0, i32 0
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %10 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %11 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %12 = load i32, i32* @SPIDER_NET_GMACST, align 4
  %13 = call i32 @spider_net_read_reg(%struct.spider_net_card* %11, i32 %12)
  %14 = call i32 @spider_net_write_reg(%struct.spider_net_card* %9, i32 %10, i32 %13)
  %15 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %16 = load i32, i32* @SPIDER_NET_GMACINTEN, align 4
  %17 = call i32 @spider_net_write_reg(%struct.spider_net_card* %15, i32 %16, i32 0)
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %19 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @BCM54XX_COPPER, align 4
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %22 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %24 = call i32 @spider_net_setup_aneg(%struct.spider_net_card* %23)
  %25 = load %struct.spider_net_card*, %struct.spider_net_card** %3, align 8
  %26 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %25, i32 0, i32 0
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @SPIDER_NET_ANEG_TIMER, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  ret void
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_setup_aneg(%struct.spider_net_card*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
