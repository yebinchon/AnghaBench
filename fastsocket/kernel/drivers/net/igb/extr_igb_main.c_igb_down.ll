; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_2__**, i32, i32, %struct.e1000_hw, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.net_device = type { i32 }

@__IGB_DOWN = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_EN = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_EN = common dso_local global i32 0, align 4
@IGB_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_down(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 10
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 9
  store %struct.e1000_hw* %12, %struct.e1000_hw** %4, align 8
  %13 = load i32, i32* @__IGB_DOWN, align 4
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 8
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load i32, i32* @E1000_RCTL, align 4
  %18 = call i32 @rd32(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @E1000_RCTL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @E1000_RCTL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @wr32(i32 %19, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %25)
  %27 = load i32, i32* @E1000_TCTL, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @E1000_TCTL_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @E1000_TCTL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @wr32(i32 %33, i32 %34)
  %36 = call i32 (...) @wrfl()
  %37 = call i32 @msleep(i32 10)
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %39 = call i32 @igb_irq_disable(%struct.igb_adapter* %38)
  %40 = load i32, i32* @IGB_FLAG_NEED_LINK_UPDATE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %71, %1
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %46
  %53 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %53, i32 0, i32 6
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @napi_synchronize(i32* %60)
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @napi_disable(i32* %69)
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %46

74:                                               ; preds = %46
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %75, i32 0, i32 5
  %77 = call i32 @del_timer_sync(i32* %76)
  %78 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %78, i32 0, i32 4
  %80 = call i32 @del_timer_sync(i32* %79)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @netif_carrier_off(%struct.net_device* %81)
  %83 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %84 = call i32 @igb_update_stats(%struct.igb_adapter* %83)
  %85 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pci_channel_offline(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %74
  %95 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %96 = call i32 @igb_reset(%struct.igb_adapter* %95)
  br label %97

97:                                               ; preds = %94, %74
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %99 = call i32 @igb_clean_all_tx_rings(%struct.igb_adapter* %98)
  %100 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %101 = call i32 @igb_clean_all_rx_rings(%struct.igb_adapter* %100)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @igb_irq_disable(%struct.igb_adapter*) #1

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @igb_update_stats(%struct.igb_adapter*) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clean_all_tx_rings(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clean_all_rx_rings(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
