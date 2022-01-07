; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgb/extr_ixgb_main.c_ixgb_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i64, i64, i32, %struct.TYPE_2__*, i64, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@__IXGB_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_down(%struct.ixgb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %6, i32 0, i32 7
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %5, align 8
  %9 = load i32, i32* @__IXGB_DOWN, align 4
  %10 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %10, i32 0, i32 6
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %13, i32 0, i32 5
  %15 = call i32 @napi_disable(i32* %14)
  %16 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %17 = call i32 @ixgb_irq_disable(%struct.ixgb_adapter* %16)
  %18 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @free_irq(i32 %22, %struct.net_device* %23)
  %25 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @pci_disable_msi(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %38, i32 0, i32 2
  %40 = call i32 @del_timer_sync(i32* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @netif_carrier_off(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netif_stop_queue(%struct.net_device* %48)
  %50 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %51 = call i32 @ixgb_reset(%struct.ixgb_adapter* %50)
  %52 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %53 = call i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter* %52)
  %54 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %55 = call i32 @ixgb_clean_rx_ring(%struct.ixgb_adapter* %54)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ixgb_irq_disable(%struct.ixgb_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_2__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ixgb_reset(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_clean_tx_ring(%struct.ixgb_adapter*) #1

declare dso_local i32 @ixgb_clean_rx_ring(%struct.ixgb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
