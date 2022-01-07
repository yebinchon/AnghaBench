; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c___qlcnic_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c___qlcnic_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_NIU_NON_PROMISC_MODE = common dso_local global i32 0, align 4
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qlcnic_down(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %74

11:                                               ; preds = %2
  %12 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 5
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @qlcnic_sriov_cleanup_async_list(i32* %28)
  br label %30

30:                                               ; preds = %22, %18
  %31 = call i32 (...) @smp_mb()
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @netif_carrier_off(%struct.net_device* %35)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = call i32 @netif_tx_disable(%struct.net_device* %41)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = call i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter* %43)
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = call i32 @qlcnic_delete_lb_filters(%struct.qlcnic_adapter* %51)
  br label %53

53:                                               ; preds = %50, %30
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = load i32, i32* @QLCNIC_NIU_NON_PROMISC_MODE, align 4
  %56 = call i32 @qlcnic_nic_set_promisc(%struct.qlcnic_adapter* %54, i32 %55)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = call i32 @qlcnic_napi_disable(%struct.qlcnic_adapter* %57)
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %60 = call i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter* %59)
  %61 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = call i32 @qlcnic_reset_rx_buffers_list(%struct.qlcnic_adapter* %67)
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %70 = call i32 @qlcnic_release_tx_buffers(%struct.qlcnic_adapter* %69)
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %53, %17, %10
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_cleanup_async_list(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_delete_lb_filters(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_nic_set_promisc(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_napi_disable(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_reset_rx_buffers_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_release_tx_buffers(%struct.qlcnic_adapter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
