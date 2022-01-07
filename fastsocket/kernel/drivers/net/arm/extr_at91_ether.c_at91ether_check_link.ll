; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_check_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_at91_ether.c_at91ether_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_private = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LINK_POLL_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @at91ether_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91ether_check_link(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.at91_private*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.net_device*
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.at91_private* @netdev_priv(%struct.net_device* %7)
  store %struct.at91_private* %8, %struct.at91_private** %4, align 8
  %9 = call i32 (...) @enable_mdi()
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @update_linkspeed(%struct.net_device* %10, i32 1)
  %12 = call i32 (...) @disable_mdi()
  %13 = load %struct.at91_private*, %struct.at91_private** %4, align 8
  %14 = getelementptr inbounds %struct.at91_private, %struct.at91_private* %13, i32 0, i32 0
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @LINK_POLL_INTERVAL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mod_timer(i32* %14, i64 %17)
  ret void
}

declare dso_local %struct.at91_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enable_mdi(...) #1

declare dso_local i32 @update_linkspeed(%struct.net_device*, i32) #1

declare dso_local i32 @disable_mdi(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
