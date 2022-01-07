; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_ethtool.c_netxen_nic_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netxen_adapter = type { i8* }

@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETXEN_NIC_LRO_DISABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"disabling LRO as rx_csum is off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netxen_nic_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_set_rx_csum(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.netxen_adapter* %8, %struct.netxen_adapter** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  store i32 0, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETIF_F_LRO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %24 = load i32, i32* @NETXEN_NIC_LRO_DISABLED, align 4
  %25 = call i64 @netxen_config_hw_lro(%struct.netxen_adapter* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load i32, i32* @NETIF_F_LRO, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %38 = call i32 @netxen_send_lro_cleanup(%struct.netxen_adapter* %37)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @netdev_info(%struct.net_device* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %30, %15
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %27, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netxen_config_hw_lro(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @netxen_send_lro_cleanup(%struct.netxen_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
