; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.ixgbevf_ring = type { i32, i32, %struct.ixgbevf_rx_buffer*, i32, i32 }
%struct.ixgbevf_rx_buffer = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32)* @ixgbevf_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %9 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %7, align 8
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %18, i32 0, i32 2
  %20 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %20, i64 %22
  store %struct.ixgbevf_rx_buffer* %23, %struct.ixgbevf_rx_buffer** %9, align 8
  br label %24

24:                                               ; preds = %99, %3
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %106

28:                                               ; preds = %24
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %29, i32 %30)
  store %union.ixgbe_adv_rx_desc* %31, %union.ixgbe_adv_rx_desc** %8, align 8
  %32 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %32, i32 0, i32 1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %83, label %36

36:                                               ; preds = %28
  %37 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %39, i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %11, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %107

51:                                               ; preds = %36
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %53, i32 0, i32 1
  store %struct.sk_buff* %52, %struct.sk_buff** %54, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_map_single(i32* %56, i32 %59, i32 %62, i32 %63)
  %65 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @dma_mapping_error(i32* %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %51
  %75 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %76 = call i32 @dev_kfree_skb(%struct.sk_buff* %75)
  %77 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %78 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %77, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %78, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %106

82:                                               ; preds = %51
  br label %83

83:                                               ; preds = %82, %28
  %84 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %9, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cpu_to_le64(i32 %86)
  %88 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %8, align 8
  %89 = bitcast %union.ixgbe_adv_rx_desc* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %95 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %83
  %100 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %100, i32 0, i32 2
  %102 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %102, i64 %104
  store %struct.ixgbevf_rx_buffer* %105, %struct.ixgbevf_rx_buffer** %9, align 8
  br label %24

106:                                              ; preds = %74, %24
  br label %107

107:                                              ; preds = %106, %46
  %108 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %109 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %116 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %117, i32 0, i32 0
  %119 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @ixgbevf_release_rx_desc(i32* %118, %struct.ixgbevf_ring* %119, i32 %120)
  br label %122

122:                                              ; preds = %113, %107
  ret void
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @ixgbevf_release_rx_desc(i32*, %struct.ixgbevf_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
