; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i64, i32, i32, i32* }
%struct.hso_net = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"sizeof hso_net is %d\00", align 1
@hso_netdev_ops = common dso_local global i32 0, align 4
@HSO_NET_TX_TIMEOUT = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@ARPHRD_NONE = common dso_local global i32 0, align 4
@DEFAULT_MTU = common dso_local global i64 0, align 8
@ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hso_net_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_net_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hso_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hso_net* @netdev_priv(%struct.net_device* %4)
  store %struct.hso_net* %5, %struct.hso_net** %3, align 8
  %6 = call i32 @D1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 4)
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 5
  store i32* @hso_netdev_ops, i32** %8, align 8
  %9 = load i32, i32* @HSO_NET_TX_TIMEOUT, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @IFF_POINTOPOINT, align 4
  %13 = load i32, i32* @IFF_NOARP, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IFF_MULTICAST, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @ARPHRD_NONE, align 4
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i64, i64* @DEFAULT_MTU, align 8
  %23 = sub nsw i64 %22, 14
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  store i32 10, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %28, i32* @ops)
  %30 = load %struct.hso_net*, %struct.hso_net** %3, align 8
  %31 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_init(i32* %31)
  ret void
}

declare dso_local %struct.hso_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @D1(i8*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
