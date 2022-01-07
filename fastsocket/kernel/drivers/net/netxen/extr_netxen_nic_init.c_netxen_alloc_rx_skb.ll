; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_alloc_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_alloc_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_2__, i32, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.nx_host_rds_ring = type { i32, i32 }
%struct.netxen_rx_buffer = type { i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NETXEN_BUFFER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*, %struct.nx_host_rds_ring*, %struct.netxen_rx_buffer*)* @netxen_alloc_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_alloc_rx_skb(%struct.netxen_adapter* %0, %struct.nx_host_rds_ring* %1, %struct.netxen_rx_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.nx_host_rds_ring*, align 8
  %7 = alloca %struct.netxen_rx_buffer*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store %struct.nx_host_rds_ring* %1, %struct.nx_host_rds_ring** %6, align 8
  store %struct.netxen_rx_buffer* %2, %struct.netxen_rx_buffer** %7, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %10, align 8
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %18 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sk_buff* @netdev_alloc_skb(i32 %16, i32 %19)
  %21 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %21, i32 0, i32 2
  store %struct.sk_buff* %20, %struct.sk_buff** %22, align 8
  %23 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %24 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %23, i32 0, i32 2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %69

28:                                               ; preds = %3
  %29 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %29, i32 0, i32 2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %8, align 8
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call i32 @skb_reserve(%struct.sk_buff* %38, i32 2)
  br label %40

40:                                               ; preds = %37, %28
  %41 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %46 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %49 = call i32 @pci_map_single(%struct.pci_dev* %41, i32 %44, i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  %57 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %57, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %58, align 8
  store i32 1, i32* %4, align 4
  br label %69

59:                                               ; preds = %40
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %62 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %61, i32 0, i32 2
  store %struct.sk_buff* %60, %struct.sk_buff** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @NETXEN_BUFFER_BUSY, align 4
  %67 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %7, align 8
  %68 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %54, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
