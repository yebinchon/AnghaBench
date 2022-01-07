; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.hv_vmbus_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32* }
%struct.net_device_context = type { i32, i32, %struct.hv_device* }
%struct.netvsc_device_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netvsc_send_garp = common dso_local global i32 0, align 4
@do_set_multicast = common dso_local global i32 0, align 4
@device_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@ethtool_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to register netdev.\0A\00", align 1
@ring_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to add netvsc device (ret %d)\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*, %struct.hv_vmbus_device_id*)* @netvsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_probe(%struct.hv_device* %0, %struct.hv_vmbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.hv_vmbus_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca %struct.netvsc_device_info, align 4
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.hv_vmbus_device_id* %1, %struct.hv_vmbus_device_id** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  %10 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %19)
  store %struct.net_device_context* %20, %struct.net_device_context** %7, align 8
  %21 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %22 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %23 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %22, i32 0, i32 2
  store %struct.hv_device* %21, %struct.hv_device** %23, align 8
  %24 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = call i32 @hv_set_drvdata(%struct.hv_device* %24, %struct.net_device* %25)
  %27 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %28 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %27, i32 0, i32 1
  %29 = load i32, i32* @netvsc_send_garp, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %32 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %31, i32 0, i32 0
  %33 = load i32, i32* @do_set_multicast, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  store i32* @device_ops, i32** %36, align 8
  %37 = load i32, i32* @NETIF_F_SG, align 4
  %38 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = call i32 @SET_ETHTOOL_OPS(%struct.net_device* %42, i32* @ethtool_ops)
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %46 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %45, i32 0, i32 0
  %47 = call i32 @SET_NETDEV_DEV(%struct.net_device* %44, i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @register_netdev(%struct.net_device* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %16
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @free_netdev(%struct.net_device* %54)
  br label %84

56:                                               ; preds = %16
  %57 = load i32, i32* @ring_size, align 4
  %58 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %8, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %60 = call i32 @rndis_filter_device_add(%struct.hv_device* %59, %struct.netvsc_device_info* %8)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @unregister_netdev(%struct.net_device* %67)
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = call i32 @free_netdev(%struct.net_device* %69)
  %71 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %72 = call i32 @hv_set_drvdata(%struct.hv_device* %71, %struct.net_device* null)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %86

74:                                               ; preds = %56
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %79, i32 %80)
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = call i32 @netif_carrier_on(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %74, %52
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %63, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @SET_ETHTOOL_OPS(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_add(%struct.hv_device*, %struct.netvsc_device_info*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
