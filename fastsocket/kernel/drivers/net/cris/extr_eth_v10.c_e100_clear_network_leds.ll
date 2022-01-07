; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_e100_clear_network_leds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_e100_clear_network_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i32 }

@led_active = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@led_next_time = common dso_local global i64 0, align 8
@NO_NETWORK_ACTIVITY = common dso_local global i32 0, align 4
@NET_FLASH_PAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @e100_clear_network_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_clear_network_leds(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.net_device*
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %4, align 8
  %9 = load %struct.net_local*, %struct.net_local** %4, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i64, i64* @led_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @led_next_time, align 8
  %17 = call i64 @time_after(i64 %15, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @NO_NETWORK_ACTIVITY, align 4
  %21 = call i32 @e100_set_network_leds(i32 %20)
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @NET_FLASH_PAUSE, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* @led_next_time, align 8
  store i64 0, i64* @led_active, align 8
  br label %25

25:                                               ; preds = %19, %14, %1
  %26 = load %struct.net_local*, %struct.net_local** %4, align 8
  %27 = getelementptr inbounds %struct.net_local, %struct.net_local* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @e100_set_network_leds(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
