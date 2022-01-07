; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_rxbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32, %struct.qlcnic_rx_buffer* }
%struct.qlcnic_rx_buffer = type { %struct.sk_buff*, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@STATUS_CKSUM_OK = common dso_local global i64 0, align 8
@STATUS_CKSUM_LOOP = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_rds_ring* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_rx_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_host_rds_ring* %1, %struct.qlcnic_host_rds_ring** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %7, align 8
  %13 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %14, i64 %15
  store %struct.qlcnic_rx_buffer* %16, %struct.qlcnic_rx_buffer** %10, align 8
  %17 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  %18 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %17, i32 0, i32 0
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 @WARN_ON(i32 1)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %76

26:                                               ; preds = %4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  %31 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %7, align 8
  %34 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %37 = call i32 @pci_unmap_single(i32 %29, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  %39 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %38, i32 0, i32 0
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %26
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @STATUS_CKSUM_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @STATUS_CKSUM_LOOP, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  br label %55

55:                                               ; preds = %53, %26
  %56 = phi i1 [ false, %26 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %72

69:                                               ; preds = %55
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %69, %60
  %73 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  %74 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %73, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %5, align 8
  br label %76

76:                                               ; preds = %72, %24
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %77
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
