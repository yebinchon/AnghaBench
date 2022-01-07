; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_3__, %struct.pci_dev*, %struct.pch_gbe_hw, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.pch_gbe_rx_ring = type { i32, i32, i64, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i32, i32, i64, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.pch_gbe_rx_desc = type { i32, i64 }

@PCH_GBE_DMA_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"i = %d  buffer_info->dma = 0x08%llx  buffer_info->length = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*, i32)* @pch_gbe_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_alloc_rx_buffers(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.pch_gbe_hw*, align 8
  %10 = alloca %struct.pch_gbe_rx_desc*, align 8
  %11 = alloca %struct.pch_gbe_buffer*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 4
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %18, i32 0, i32 2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %21, i32 0, i32 3
  store %struct.pch_gbe_hw* %22, %struct.pch_gbe_hw** %9, align 8
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PCH_GBE_DMA_ALIGN, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %129, %3
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %130

35:                                               ; preds = %31
  %36 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %37 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %36, i32 0, i32 3
  %38 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %37, align 8
  %39 = load i32, i32* %13, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %38, i64 %40
  store %struct.pch_gbe_buffer* %41, %struct.pch_gbe_buffer** %11, align 8
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %12, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %130

57:                                               ; preds = %35
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = load i32, i32* @PCH_GBE_DMA_ALIGN, align 4
  %60 = call i32 @skb_reserve(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %63 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %62, i32 0, i32 3
  store %struct.sk_buff* %61, %struct.sk_buff** %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %67 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %73 = call i64 @dma_map_single(i32* %65, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %76, i32 0, i32 2
  %78 = load %struct.pci_dev*, %struct.pci_dev** %77, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 0
  %80 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @dma_mapping_error(i32* %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %57
  %86 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  %88 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %88, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %89, align 8
  %90 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %91 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %93 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %130

97:                                               ; preds = %57
  %98 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %99 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8 %100, i32 %101)
  store %struct.pch_gbe_rx_desc* %102, %struct.pch_gbe_rx_desc** %10, align 8
  %103 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %104 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %10, align 8
  %107 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* @DSC_INIT16, align 4
  %109 = load %struct.pch_gbe_rx_desc*, %struct.pch_gbe_rx_desc** %10, align 8
  %110 = getelementptr inbounds %struct.pch_gbe_rx_desc, %struct.pch_gbe_rx_desc* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %113 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %11, align 8
  %116 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %111, i64 %114, i32 %117)
  %119 = load i32, i32* %13, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %122 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %97
  br label %31

130:                                              ; preds = %85, %51, %31
  %131 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %132 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i64 @likely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %130
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %142 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %13, align 4
  %144 = add i32 %143, -1
  store i32 %144, i32* %13, align 4
  %145 = icmp eq i32 %143, 0
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %151 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %149, %139
  %155 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %5, align 8
  %156 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = mul i32 16, %158
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %157, %160
  %162 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %9, align 8
  %163 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = call i32 @iowrite32(i64 %161, i32* %165)
  br label %167

167:                                              ; preds = %154, %130
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.pch_gbe_rx_desc* @PCH_GBE_RX_DESC(%struct.pch_gbe_rx_ring* byval(%struct.pch_gbe_rx_ring) align 8, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
