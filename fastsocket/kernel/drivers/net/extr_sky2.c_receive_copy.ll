; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_receive_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_receive_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.sky2_port = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rx_ring_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sky2_port*, %struct.rx_ring_info*, i32)* @receive_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @receive_copy(%struct.sky2_port* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %9 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add i32 %11, 2
  %13 = call %struct.sk_buff* @netdev_alloc_skb(i32 %10, i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = call i64 @likely(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %72

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call i32 @skb_reserve(%struct.sk_buff* %18, i32 2)
  %20 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %21 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %26 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %30 = call i32 @pci_dma_sync_single_for_cpu(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %32 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @skb_copy_from_linear_data(%struct.TYPE_4__* %33, i32 %36, i32 %37)
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %54 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %59 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %63 = call i32 @pci_dma_sync_single_for_device(i32 %57, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @CHECKSUM_NONE, align 4
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %66 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @skb_put(%struct.sk_buff* %69, i32 %70)
  br label %72

72:                                               ; preds = %17, %3
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %73
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
