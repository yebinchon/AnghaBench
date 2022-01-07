; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.pch_gbe_rx_ring*, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.pch_gbe_rx_ring = type { i32*, i64, i64 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_down(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_gbe_rx_ring*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %5 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %5, i32 0, i32 7
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %8, i32 0, i32 1
  %10 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %9, align 8
  store %struct.pch_gbe_rx_ring* %10, %struct.pch_gbe_rx_ring** %4, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 6
  %13 = call i32 @napi_disable(i32* %12)
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 5
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %18 = call i32 @pch_gbe_irq_disable(%struct.pch_gbe_adapter* %17)
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %20 = call i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter* %19)
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %21, i32 0, i32 4
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_carrier_off(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @netif_stop_queue(%struct.net_device* %31)
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %34 = call i32 @pch_gbe_reset(%struct.pch_gbe_adapter* %33)
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %36 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pch_gbe_clean_tx_ring(%struct.pch_gbe_adapter* %35, i32 %38)
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %41 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %41, i32 0, i32 1
  %43 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %42, align 8
  %44 = call i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter* %40, %struct.pch_gbe_rx_ring* %43)
  %45 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @pci_free_consistent(i32 %47, i64 %50, i32* %53, i64 %56)
  %58 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pch_gbe_irq_disable(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_free_irq(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_reset(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_clean_tx_ring(%struct.pch_gbe_adapter*, i32) #1

declare dso_local i32 @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*) #1

declare dso_local i32 @pci_free_consistent(i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
