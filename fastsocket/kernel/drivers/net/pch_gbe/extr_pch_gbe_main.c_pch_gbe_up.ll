; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.net_device*, i32, i32, %struct.TYPE_5__, i32, %struct.pch_gbe_rx_ring*, %struct.pch_gbe_tx_ring* }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pch_gbe_rx_ring = type { i32 }
%struct.pch_gbe_tx_ring = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error: Invalid MAC address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error: can't bring device up\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_up(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pch_gbe_tx_ring*, align 8
  %6 = alloca %struct.pch_gbe_rx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  %8 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %11, i32 0, i32 6
  %13 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %12, align 8
  store %struct.pch_gbe_tx_ring* %13, %struct.pch_gbe_tx_ring** %5, align 8
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 5
  %16 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %15, align 8
  store %struct.pch_gbe_rx_ring* %16, %struct.pch_gbe_rx_ring** %6, align 8
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @is_valid_ether_addr(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %92

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @pch_gbe_set_multi(%struct.net_device* %29)
  %31 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %32 = call i32 @pch_gbe_setup_tctl(%struct.pch_gbe_adapter* %31)
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %34 = call i32 @pch_gbe_configure_tx(%struct.pch_gbe_adapter* %33)
  %35 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %36 = call i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter* %35)
  %37 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %38 = call i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter* %37)
  %39 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %40 = call i32 @pch_gbe_request_irq(%struct.pch_gbe_adapter* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %92

46:                                               ; preds = %28
  %47 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %48 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %49 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pch_gbe_alloc_rx_buffers_pool(%struct.pch_gbe_adapter* %47, %struct.pch_gbe_rx_ring* %48, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %92

58:                                               ; preds = %46
  %59 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %60 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %61 = call i32 @pch_gbe_alloc_tx_buffers(%struct.pch_gbe_adapter* %59, %struct.pch_gbe_tx_ring* %60)
  %62 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %63 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %64 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %6, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %62, %struct.pch_gbe_rx_ring* %63, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %73, i32 0, i32 3
  %75 = call i32 @pch_gbe_enable_dma_rx(%struct.TYPE_5__* %74)
  %76 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %76, i32 0, i32 3
  %78 = call i32 @pch_gbe_enable_mac_rx(%struct.TYPE_5__* %77)
  %79 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* @jiffies, align 4
  %82 = call i32 @mod_timer(i32* %80, i32 %81)
  %83 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %83, i32 0, i32 1
  %85 = call i32 @napi_enable(i32* %84)
  %86 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %87 = call i32 @pch_gbe_irq_enable(%struct.pch_gbe_adapter* %86)
  %88 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = call i32 @netif_start_queue(%struct.net_device* %90)
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %58, %55, %43, %24
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pch_gbe_set_multi(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_setup_tctl(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_configure_tx(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_setup_rctl(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_configure_rx(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_request_irq(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers_pool(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

declare dso_local i32 @pch_gbe_alloc_tx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32) #1

declare dso_local i32 @pch_gbe_enable_dma_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @pch_gbe_enable_mac_rx(%struct.TYPE_5__*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @pch_gbe_irq_enable(%struct.pch_gbe_adapter*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
