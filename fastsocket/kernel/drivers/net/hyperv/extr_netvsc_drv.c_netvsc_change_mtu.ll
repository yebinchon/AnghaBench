; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { %struct.hv_device*, i32, i32 }
%struct.hv_device = type { i32 }
%struct.netvsc_device = type { i64, i32, i64 }
%struct.netvsc_device_info = type { i32 }

@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NVSP_PROTOCOL_VERSION_2 = common dso_local global i64 0, align 8
@NETVSC_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ring_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @netvsc_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.hv_device*, align 8
  %8 = alloca %struct.netvsc_device*, align 8
  %9 = alloca %struct.netvsc_device_info, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %11)
  store %struct.net_device_context* %12, %struct.net_device_context** %6, align 8
  %13 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %14 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %13, i32 0, i32 0
  %15 = load %struct.hv_device*, %struct.hv_device** %14, align 8
  store %struct.hv_device* %15, %struct.hv_device** %7, align 8
  %16 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %17 = call %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device* %16)
  store %struct.netvsc_device* %17, %struct.netvsc_device** %8, align 8
  %18 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %20 = icmp eq %struct.netvsc_device* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %23 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %21
  %30 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %31 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NVSP_PROTOCOL_VERSION_2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @NETVSC_MTU, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 68
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %75

47:                                               ; preds = %40
  %48 = load %struct.netvsc_device*, %struct.netvsc_device** %8, align 8
  %49 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  %50 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %51 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %50, i32 0, i32 2
  %52 = call i32 @cancel_delayed_work_sync(i32* %51)
  %53 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %54 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %53, i32 0, i32 1
  %55 = call i32 @cancel_work_sync(i32* %54)
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @netif_tx_disable(%struct.net_device* %56)
  %58 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %59 = call i32 @rndis_filter_device_remove(%struct.hv_device* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %64 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %65 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %64, i32 0, i32 0
  store %struct.hv_device* %63, %struct.hv_device** %65, align 8
  %66 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @hv_set_drvdata(%struct.hv_device* %66, %struct.net_device* %67)
  %69 = load i32, i32* @ring_size, align 4
  %70 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %9, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = load %struct.hv_device*, %struct.hv_device** %7, align 8
  %72 = call i32 @rndis_filter_device_add(%struct.hv_device* %71, %struct.netvsc_device_info* %9)
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @netif_wake_queue(%struct.net_device* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %47, %44, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @hv_get_drvdata(%struct.hv_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_remove(%struct.hv_device*) #1

declare dso_local i32 @hv_set_drvdata(%struct.hv_device*, %struct.net_device*) #1

declare dso_local i32 @rndis_filter_device_add(%struct.hv_device*, %struct.netvsc_device_info*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
