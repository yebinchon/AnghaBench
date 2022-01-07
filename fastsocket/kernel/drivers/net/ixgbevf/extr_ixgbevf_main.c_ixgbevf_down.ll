; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.ixgbe_hw, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.net_device = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@IXGBE_FLAG_IN_WATCHDOG_TASK = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_down(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 7
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 6
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 5
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netif_tx_disable(%struct.net_device* %17)
  %19 = call i32 @msleep(i32 10)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %20)
  %22 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %23 = call i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter* %22)
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %25 = call i32 @ixgbevf_napi_disable_all(%struct.ixgbevf_adapter* %24)
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 4
  %28 = call i32 @del_timer_sync(i32* %27)
  br label %29

29:                                               ; preds = %36, %1
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IXGBE_FLAG_IN_WATCHDOG_TASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @msleep(i32 1)
  br label %29

38:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %39
  %46 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @IXGBE_VFTXDCTL(i32 %55)
  %57 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @IXGBE_VFTXDCTL(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %39

69:                                               ; preds = %39
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netif_carrier_off(%struct.net_device* %70)
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_channel_offline(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %79 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %82 = call i32 @ixgbevf_clean_all_tx_rings(%struct.ixgbevf_adapter* %81)
  %83 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %84 = call i32 @ixgbevf_clean_all_rx_rings(%struct.ixgbevf_adapter* %83)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_irq_disable(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_napi_disable_all(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_clean_all_tx_rings(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_clean_all_rx_rings(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
