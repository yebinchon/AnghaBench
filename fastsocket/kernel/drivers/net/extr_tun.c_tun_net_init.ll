; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i8*, i32, i32*, i32, i32, i32 }
%struct.tun_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@tun_netdev_ops = common dso_local global i32 0, align 4
@ARPHRD_NONE = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@TUN_READQ_SIZE = common dso_local global i8* null, align 8
@tap_netdev_ops = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tun_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_net_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tun_struct*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.tun_struct* @netdev_priv(%struct.net_device* %4)
  store %struct.tun_struct* %5, %struct.tun_struct** %3, align 8
  %6 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TUN_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %52 [
    i32 128, label %11
    i32 129, label %33
  ]

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 4
  store i32* @tun_netdev_ops, i32** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 7
  store i32 0, i32* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  store i32 0, i32* %17, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 1500, i32* %19, align 8
  %20 = load i32, i32* @ARPHRD_NONE, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @IFF_POINTOPOINT, align 4
  %24 = load i32, i32* @IFF_NOARP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IFF_MULTICAST, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** @TUN_READQ_SIZE, align 8
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 4
  store i32* @tap_netdev_ops, i32** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @ether_setup(%struct.net_device* %36)
  %38 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @random_ether_addr(i32 %47)
  %49 = load i8*, i8** @TUN_READQ_SIZE, align 8
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %1, %33, %11
  ret void
}

declare dso_local %struct.tun_struct* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ether_setup(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local i32 @random_ether_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
