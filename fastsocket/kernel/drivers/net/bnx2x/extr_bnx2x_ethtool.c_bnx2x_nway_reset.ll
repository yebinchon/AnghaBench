; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nway_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nway_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bnx2x_nway_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_nway_reset(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %5)
  store %struct.bnx2x* %6, %struct.bnx2x** %4, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i64 @netif_running(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = load i32, i32* @STATS_EVENT_STOP, align 4
  %20 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %18, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i32 @bnx2x_force_link_reset(%struct.bnx2x* %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = call i32 @bnx2x_link_set(%struct.bnx2x* %23)
  br label %25

25:                                               ; preds = %17, %13
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_force_link_reset(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_set(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
