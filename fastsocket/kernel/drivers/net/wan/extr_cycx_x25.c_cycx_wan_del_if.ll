; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_wan_del_if.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_cycx_x25.c_cycx_wan_del_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wan_device = type { i32 }
%struct.net_device = type { i32 }
%struct.cycx_x25_channel = type { i64, i32, i32, i64 }

@WAN_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wan_device*, %struct.net_device*)* @cycx_wan_del_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cycx_wan_del_if(%struct.wan_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.wan_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.cycx_x25_channel*, align 8
  store %struct.wan_device* %0, %struct.wan_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.cycx_x25_channel* @netdev_priv(%struct.net_device* %6)
  store %struct.cycx_x25_channel* %7, %struct.cycx_x25_channel** %5, align 8
  %8 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %5, align 8
  %9 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %5, align 8
  %14 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @kfree(i32 %15)
  %17 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %5, align 8
  %18 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WAN_CONNECTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.cycx_x25_channel*, %struct.cycx_x25_channel** %5, align 8
  %24 = getelementptr inbounds %struct.cycx_x25_channel, %struct.cycx_x25_channel* %23, i32 0, i32 1
  %25 = call i32 @del_timer(i32* %24)
  br label %26

26:                                               ; preds = %22, %12
  br label %27

27:                                               ; preds = %26, %2
  ret i32 0
}

declare dso_local %struct.cycx_x25_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @del_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
