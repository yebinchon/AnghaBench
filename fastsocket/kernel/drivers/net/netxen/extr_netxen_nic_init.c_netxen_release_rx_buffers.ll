; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_release_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_release_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, i32, %struct.netxen_recv_context }
%struct.netxen_recv_context = type { %struct.nx_host_rds_ring* }
%struct.nx_host_rds_ring = type { i32, i32, %struct.netxen_rx_buffer* }
%struct.netxen_rx_buffer = type { i64, i32*, i32 }

@NETXEN_BUFFER_FREE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_release_rx_buffers(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_recv_context*, align 8
  %4 = alloca %struct.nx_host_rds_ring*, align 8
  %5 = alloca %struct.netxen_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %8 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %8, i32 0, i32 2
  store %struct.netxen_recv_context* %9, %struct.netxen_recv_context** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %68, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %10
  %17 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %3, align 8
  %18 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %17, i32 0, i32 0
  %19 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %19, i64 %21
  store %struct.nx_host_rds_ring* %22, %struct.nx_host_rds_ring** %4, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %64, %16
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %26 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %23
  %30 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %31 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %30, i32 0, i32 2
  %32 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %32, i64 %34
  store %struct.netxen_rx_buffer* %35, %struct.netxen_rx_buffer** %5, align 8
  %36 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NETXEN_BUFFER_FREE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %64

42:                                               ; preds = %29
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  %47 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %4, align 8
  %50 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_unmap_single(i32 %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %42
  %59 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dev_kfree_skb_any(i32* %61)
  br label %63

63:                                               ; preds = %58, %42
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %23

67:                                               ; preds = %23
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %10

71:                                               ; preds = %10
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
