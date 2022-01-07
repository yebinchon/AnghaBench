; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32*, i32, i32, %struct.rxbuff_ent* }
%struct.rxbuff_ent = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.basic_ring = type { i64 }
%struct.rx_desc = type { i64, i32, i32, i32, i32 }

@TYPHOON_RX_ERROR = common dso_local global i32 0, align 4
@rx_copybreak = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TYPHOON_RX_IP_CHK_GOOD = common dso_local global i32 0, align 4
@TYPHOON_RX_UDP_CHK_GOOD = common dso_local global i32 0, align 4
@TYPHOON_RX_TCP_CHK_GOOD = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@TYPHOON_RX_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, %struct.basic_ring*, i32*, i32*, i32)* @typhoon_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_rx(%struct.typhoon* %0, %struct.basic_ring* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.typhoon*, align 8
  %7 = alloca %struct.basic_ring*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_desc*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.rxbuff_ent*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %6, align 8
  store %struct.basic_ring* %1, %struct.basic_ring** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  store i64 %24, i64* %16, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load volatile i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %17, align 8
  br label %28

28:                                               ; preds = %191, %65, %5
  %29 = load i64, i64* %17, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %199

37:                                               ; preds = %35
  %38 = load %struct.basic_ring*, %struct.basic_ring** %7, align 8
  %39 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %17, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to %struct.rx_desc*
  store %struct.rx_desc* %43, %struct.rx_desc** %11, align 8
  %44 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %45 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %19, align 8
  %47 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %48 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %47, i32 0, i32 4
  %49 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %48, align 8
  %50 = load i64, i64* %19, align 8
  %51 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %49, i64 %50
  store %struct.rxbuff_ent* %51, %struct.rxbuff_ent** %14, align 8
  %52 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %14, align 8
  %53 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %52, i32 0, i32 1
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %12, align 8
  %55 = load %struct.rxbuff_ent*, %struct.rxbuff_ent** %14, align 8
  %56 = getelementptr inbounds %struct.rxbuff_ent, %struct.rxbuff_ent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %15, align 4
  %58 = call i32 @typhoon_inc_rx_index(i64* %17, i32 1)
  %59 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %60 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TYPHOON_RX_ERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %37
  %66 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @typhoon_recycle_rx_skb(%struct.typhoon* %66, i64 %67)
  br label %28

69:                                               ; preds = %37
  %70 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %71 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @rx_copybreak, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %69
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 2
  %80 = call %struct.sk_buff* @dev_alloc_skb(i32 %79)
  store %struct.sk_buff* %80, %struct.sk_buff** %13, align 8
  %81 = icmp ne %struct.sk_buff* %80, null
  br i1 %81, label %82, label %111

82:                                               ; preds = %77
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = call i32 @skb_reserve(%struct.sk_buff* %83, i32 2)
  %85 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %86 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @PKT_BUF_SZ, align 4
  %90 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %91 = call i32 @pci_dma_sync_single_for_cpu(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %92, i32 %95, i32 %96)
  %98 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %99 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @PKT_BUF_SZ, align 4
  %103 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %104 = call i32 @pci_dma_sync_single_for_device(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = load i32, i32* %18, align 4
  %107 = call i32 @skb_put(%struct.sk_buff* %105, i32 %106)
  %108 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %109 = load i64, i64* %19, align 8
  %110 = call i32 @typhoon_recycle_rx_skb(%struct.typhoon* %108, i64 %109)
  br label %126

111:                                              ; preds = %77, %69
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %13, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @skb_put(%struct.sk_buff* %113, i32 %114)
  %116 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %117 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @PKT_BUF_SZ, align 4
  %121 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %122 = call i32 @pci_unmap_single(i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %124 = load i64, i64* %19, align 8
  %125 = call i32 @typhoon_alloc_rx_skb(%struct.typhoon* %123, i64 %124)
  br label %126

126:                                              ; preds = %111, %82
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %129 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @eth_type_trans(%struct.sk_buff* %127, i32 %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %135 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %138 = load i32, i32* @TYPHOON_RX_UDP_CHK_GOOD, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @TYPHOON_RX_TCP_CHK_GOOD, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %136, %141
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %145 = load i32, i32* @TYPHOON_RX_TCP_CHK_GOOD, align 4
  %146 = or i32 %144, %145
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* @TYPHOON_RX_IP_CHK_GOOD, align 4
  %151 = load i32, i32* @TYPHOON_RX_UDP_CHK_GOOD, align 4
  %152 = or i32 %150, %151
  %153 = icmp eq i32 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148, %126
  %155 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  br label %162

158:                                              ; preds = %148
  %159 = load i32, i32* @CHECKSUM_NONE, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %154
  %163 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %164 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %163, i32 0, i32 0
  %165 = call i32 @spin_lock(i32* %164)
  %166 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %167 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %188

170:                                              ; preds = %162
  %171 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %172 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @TYPHOON_RX_VLAN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %170
  %178 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %179 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %180 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.rx_desc*, %struct.rx_desc** %11, align 8
  %183 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ntohl(i32 %184)
  %186 = and i32 %185, 65535
  %187 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %178, i32* %181, i32 %186)
  br label %191

188:                                              ; preds = %170, %162
  %189 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %190 = call i32 @netif_receive_skb(%struct.sk_buff* %189)
  br label %191

191:                                              ; preds = %188, %177
  %192 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %193 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %192, i32 0, i32 0
  %194 = call i32 @spin_unlock(i32* %193)
  %195 = load i32, i32* %21, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %10, align 4
  br label %28

199:                                              ; preds = %35
  %200 = load i64, i64* %17, align 8
  %201 = call i32 @cpu_to_le32(i64 %200)
  %202 = load i32*, i32** %9, align 8
  store volatile i32 %201, i32* %202, align 4
  %203 = load i32, i32* %21, align 4
  ret i32 %203
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @typhoon_inc_rx_index(i64*, i32) #1

declare dso_local i32 @typhoon_recycle_rx_skb(%struct.typhoon*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @typhoon_alloc_rx_skb(%struct.typhoon*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
