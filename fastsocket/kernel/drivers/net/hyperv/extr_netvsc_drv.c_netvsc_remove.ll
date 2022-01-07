; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i32, %struct.net_device* }

@.str = private unnamed_addr constant [25 x i8] c"No net device to remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @netvsc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_remove(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %7 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %8 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %7)
  store %struct.netvsc_device* %8, %struct.netvsc_device** %6, align 8
  %9 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %10 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp eq %struct.net_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %16 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %21)
  store %struct.net_device_context* %22, %struct.net_device_context** %5, align 8
  %23 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %24 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %23, i32 0, i32 1
  %25 = call i32 @cancel_delayed_work_sync(i32* %24)
  %26 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %27 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %26, i32 0, i32 0
  %28 = call i32 @cancel_work_sync(i32* %27)
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netif_tx_disable(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @unregister_netdev(%struct.net_device* %31)
  %33 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %34 = call i32 @rndis_filter_device_remove(%struct.hv_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %18, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
