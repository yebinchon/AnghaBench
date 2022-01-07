; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_link_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_link_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.port_info = type { i32, i32, %struct.TYPE_2__, %struct.cmac }
%struct.TYPE_2__ = type { i32 }
%struct.cmac = type { i32 }

@MAX_MAC_IDX = common dso_local global i32 0, align 4
@LAN_MAC_IDX = common dso_local global i32 0, align 4
@SAN_MAC_IDX = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @link_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.port_info*, align 8
  %4 = alloca %struct.cmac*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.port_info* @netdev_priv(%struct.net_device* %5)
  store %struct.port_info* %6, %struct.port_info** %3, align 8
  %7 = load %struct.port_info*, %struct.port_info** %3, align 8
  %8 = getelementptr inbounds %struct.port_info, %struct.port_info* %7, i32 0, i32 3
  store %struct.cmac* %8, %struct.cmac** %4, align 8
  %9 = load %struct.cmac*, %struct.cmac** %4, align 8
  %10 = call i32 @t3_mac_reset(%struct.cmac* %9)
  %11 = load %struct.cmac*, %struct.cmac** %4, align 8
  %12 = load i32, i32* @MAX_MAC_IDX, align 4
  %13 = call i32 @t3_mac_set_num_ucast(%struct.cmac* %11, i32 %12)
  %14 = load %struct.cmac*, %struct.cmac** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @t3_mac_set_mtu(%struct.cmac* %14, i32 %17)
  %19 = load %struct.cmac*, %struct.cmac** %4, align 8
  %20 = load i32, i32* @LAN_MAC_IDX, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @t3_mac_set_address(%struct.cmac* %19, i32 %20, i32 %23)
  %25 = load %struct.cmac*, %struct.cmac** %4, align 8
  %26 = load i32, i32* @SAN_MAC_IDX, align 4
  %27 = load %struct.port_info*, %struct.port_info** %3, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @t3_mac_set_address(%struct.cmac* %25, i32 %26, i32 %30)
  %32 = load %struct.cmac*, %struct.cmac** %4, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @t3_mac_set_rx_mode(%struct.cmac* %32, %struct.net_device* %33)
  %35 = load %struct.port_info*, %struct.port_info** %3, align 8
  %36 = getelementptr inbounds %struct.port_info, %struct.port_info* %35, i32 0, i32 1
  %37 = load %struct.cmac*, %struct.cmac** %4, align 8
  %38 = load %struct.port_info*, %struct.port_info** %3, align 8
  %39 = getelementptr inbounds %struct.port_info, %struct.port_info* %38, i32 0, i32 0
  %40 = call i32 @t3_link_start(i32* %36, %struct.cmac* %37, i32* %39)
  %41 = load %struct.cmac*, %struct.cmac** %4, align 8
  %42 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %43 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @t3_mac_enable(%struct.cmac* %41, i32 %44)
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t3_mac_reset(%struct.cmac*) #1

declare dso_local i32 @t3_mac_set_num_ucast(%struct.cmac*, i32) #1

declare dso_local i32 @t3_mac_set_mtu(%struct.cmac*, i32) #1

declare dso_local i32 @t3_mac_set_address(%struct.cmac*, i32, i32) #1

declare dso_local i32 @t3_mac_set_rx_mode(%struct.cmac*, %struct.net_device*) #1

declare dso_local i32 @t3_link_start(i32*, %struct.cmac*, i32*) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
