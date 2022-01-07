; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_init_netdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_plip.c_plip_init_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32*, i32*, i32 }
%struct.net_local = type { i32, i32, i32, i32, i32, i32, i64 }

@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@plip_netdev_ops = common dso_local global i32 0, align 4
@plip_header_ops = common dso_local global i32 0, align 4
@PLIP_TRIGGER_WAIT = common dso_local global i32 0, align 4
@PLIP_NIBBLE_WAIT = common dso_local global i32 0, align 4
@plip_bh = common dso_local global i32 0, align 4
@plip_kick_bh = common dso_local global i32 0, align 4
@plip_timer_bh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @plip_init_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plip_init_netdev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = load i32, i32* @IFF_POINTOPOINT, align 4
  %9 = load i32, i32* @IFF_NOARP, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = call i32 @memset(i32 %15, i32 252, i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 4
  store i32* @plip_netdev_ops, i32** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  store i32* @plip_header_ops, i32** %21, align 8
  %22 = load %struct.net_local*, %struct.net_local** %3, align 8
  %23 = getelementptr inbounds %struct.net_local, %struct.net_local* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @PLIP_TRIGGER_WAIT, align 4
  %25 = load %struct.net_local*, %struct.net_local** %3, align 8
  %26 = getelementptr inbounds %struct.net_local, %struct.net_local* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @PLIP_NIBBLE_WAIT, align 4
  %28 = load %struct.net_local*, %struct.net_local** %3, align 8
  %29 = getelementptr inbounds %struct.net_local, %struct.net_local* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.net_local*, %struct.net_local** %3, align 8
  %31 = getelementptr inbounds %struct.net_local, %struct.net_local* %30, i32 0, i32 3
  %32 = load i32, i32* @plip_bh, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.net_local*, %struct.net_local** %3, align 8
  %35 = getelementptr inbounds %struct.net_local, %struct.net_local* %34, i32 0, i32 2
  %36 = load i32, i32* @plip_kick_bh, align 4
  %37 = call i32 @INIT_DELAYED_WORK(i32* %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %1
  %43 = load %struct.net_local*, %struct.net_local** %3, align 8
  %44 = getelementptr inbounds %struct.net_local, %struct.net_local* %43, i32 0, i32 1
  %45 = load i32, i32* @plip_timer_bh, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %1
  %48 = load %struct.net_local*, %struct.net_local** %3, align 8
  %49 = getelementptr inbounds %struct.net_local, %struct.net_local* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_init(i32* %49)
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
