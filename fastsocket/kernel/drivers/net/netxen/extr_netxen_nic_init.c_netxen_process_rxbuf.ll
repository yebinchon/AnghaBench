; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_rxbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_process_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nx_host_rds_ring = type { i32, %struct.netxen_rx_buffer* }
%struct.netxen_rx_buffer = type { i32, %struct.sk_buff*, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@STATUS_CKSUM_OK = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETXEN_BUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netxen_adapter*, %struct.nx_host_rds_ring*, i64, i64)* @netxen_process_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter* %0, %struct.nx_host_rds_ring* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.nx_host_rds_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netxen_rx_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store %struct.nx_host_rds_ring* %1, %struct.nx_host_rds_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %12 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %11, i32 0, i32 1
  %13 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %13, i64 %14
  store %struct.netxen_rx_buffer* %15, %struct.netxen_rx_buffer** %9, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %23 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %26 = call i32 @pci_unmap_single(i32 %18, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %27, i32 0, i32 1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %63

33:                                               ; preds = %4
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @STATUS_CKSUM_OK, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %33
  %43 = phi i1 [ false, %33 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %42
  %57 = load i32, i32* @CHECKSUM_NONE, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %47
  %61 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %62 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %61, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  br label %63

63:                                               ; preds = %60, %32
  %64 = load i32, i32* @NETXEN_BUFFER_FREE, align 4
  %65 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %67
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
