; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_irq_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_irq_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.e1000_rx_desc_packet_split = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_12__, %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { %struct.sk_buff*, %struct.e1000_ps_page*, i64 }
%struct.sk_buff = type { i32, i64, i32, %union.e1000_rx_desc_packet_split* }
%struct.e1000_ps_page = type { i32*, i64 }
%struct.e1000_adapter = type { i32, i32, i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, i32, %struct.pci_dev*, %struct.net_device*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.e1000_hw = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %union.e1000_rx_desc_packet_split* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@FLAG2_IS_DISCARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Packet Split buffers didn't pick up the full packet\0A\00", align 1
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Last part of the packet spanning multiple descriptors\0A\00", align 1
@copybreak = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KM_SKB_DATA_SOFTIRQ = common dso_local global i32 0, align 4
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@PS_PAGE_BUFFERS = common dso_local global i32 0, align 4
@E1000_RXDPS_HDRSTAT_HDRSP = common dso_local global i32 0, align 4
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_rx_irq_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_rx_irq_ps(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca %union.e1000_rx_desc_packet_split*, align 8
  %10 = alloca %union.e1000_rx_desc_packet_split*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca %struct.e1000_ps_page*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %27, i32 0, i32 3
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %28, align 8
  store %struct.e1000_adapter* %29, %struct.e1000_adapter** %7, align 8
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 8
  store %struct.e1000_hw* %31, %struct.e1000_hw** %8, align 8
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 7
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  store %struct.net_device* %34, %struct.net_device** %11, align 8
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 6
  %37 = load %struct.pci_dev*, %struct.pci_dev** %36, align 8
  store %struct.pci_dev* %37, %struct.pci_dev** %12, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %41, i32 %42)
  store %union.e1000_rx_desc_packet_split* %43, %union.e1000_rx_desc_packet_split** %9, align 8
  %44 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %45 = bitcast %union.e1000_rx_desc_packet_split* %44 to %struct.TYPE_14__*
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %51 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %50, i32 0, i32 2
  %52 = load %struct.e1000_buffer*, %struct.e1000_buffer** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %52, i64 %54
  store %struct.e1000_buffer* %55, %struct.e1000_buffer** %13, align 8
  br label %56

56:                                               ; preds = %395, %3
  %57 = load i32, i32* %20, align 4
  %58 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %404

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %404

67:                                               ; preds = %61
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %72 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %71, i32 0, i32 0
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  store %struct.sk_buff* %73, %struct.sk_buff** %16, align 8
  %74 = call i32 (...) @rmb()
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 3
  %77 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %76, align 8
  %78 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** @NET_IP_ALIGN, align 8
  %79 = ptrtoint %union.e1000_rx_desc_packet_split* %77 to i64
  %80 = ptrtoint %union.e1000_rx_desc_packet_split* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 40
  %83 = inttoptr i64 %82 to %union.e1000_rx_desc_packet_split*
  %84 = call i32 @prefetch(%union.e1000_rx_desc_packet_split* %83)
  %85 = load i32, i32* %17, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %89 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %67
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %67
  %94 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %94, i32 %95)
  store %union.e1000_rx_desc_packet_split* %96, %union.e1000_rx_desc_packet_split** %10, align 8
  %97 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %10, align 8
  %98 = call i32 @prefetch(%union.e1000_rx_desc_packet_split* %97)
  %99 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %100 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %99, i32 0, i32 2
  %101 = load %struct.e1000_buffer*, %struct.e1000_buffer** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %101, i64 %103
  store %struct.e1000_buffer* %104, %struct.e1000_buffer** %14, align 8
  store i32 1, i32* %22, align 4
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %21, align 4
  %107 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 0
  %109 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %110 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %113 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @dma_unmap_single(i32* %108, i64 %111, i32 %114, i32 %115)
  %117 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %118 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %93
  %124 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %125 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %126 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %93
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %129
  %137 = call i32 @e_dbg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %139 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %138)
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %136
  %145 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %148 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %144, %136
  br label %374

152:                                              ; preds = %129
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %159 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %158)
  br label %374

160:                                              ; preds = %152
  %161 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %162 = bitcast %union.e1000_rx_desc_packet_split* %161 to %struct.TYPE_14__*
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @le16_to_cpu(i32 %165)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %160
  %170 = call i32 @e_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %171 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %172 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %171)
  br label %374

173:                                              ; preds = %160
  %174 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %175 = load i32, i32* %19, align 4
  %176 = call i32 @skb_put(%struct.sk_buff* %174, i32 %175)
  %177 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %178 = bitcast %union.e1000_rx_desc_packet_split* %177 to %struct.TYPE_14__*
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le16_to_cpu(i32 %183)
  store i32 %184, i32* %25, align 4
  %185 = load i32, i32* %25, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %246

187:                                              ; preds = %173
  %188 = load i32, i32* %25, align 4
  %189 = load i32, i32* @copybreak, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %246

191:                                              ; preds = %187
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %25, align 4
  %194 = add nsw i32 %192, %193
  %195 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %196 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sle i32 %194, %197
  br i1 %198, label %199, label %246

199:                                              ; preds = %191
  %200 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %201 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %200, i32 0, i32 1
  %202 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %201, align 8
  %203 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %202, i64 0
  store %struct.e1000_ps_page* %203, %struct.e1000_ps_page** %15, align 8
  %204 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %205 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %204, i32 0, i32 0
  %206 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %207 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @PAGE_SIZE, align 8
  %210 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %211 = call i32 @dma_sync_single_for_cpu(i32* %205, i64 %208, i64 %209, i32 %210)
  %212 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %213 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %216 = call i32* @kmap_atomic(i32* %214, i32 %215)
  store i32* %216, i32** %26, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %218 = call i32 @skb_tail_pointer(%struct.sk_buff* %217)
  %219 = load i32*, i32** %26, align 8
  %220 = load i32, i32* %25, align 4
  %221 = call i32 @memcpy(i32 %218, i32* %219, i32 %220)
  %222 = load i32*, i32** %26, align 8
  %223 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %224 = call i32 @kunmap_atomic(i32* %222, i32 %223)
  %225 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %226 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %225, i32 0, i32 0
  %227 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %228 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @PAGE_SIZE, align 8
  %231 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %232 = call i32 @dma_sync_single_for_device(i32* %226, i64 %229, i64 %230, i32 %231)
  %233 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %234 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %199
  %240 = load i32, i32* %25, align 4
  %241 = sub nsw i32 %240, 4
  store i32 %241, i32* %25, align 4
  br label %242

242:                                              ; preds = %239, %199
  %243 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %244 = load i32, i32* %25, align 4
  %245 = call i32 @skb_put(%struct.sk_buff* %243, i32 %244)
  br label %327

246:                                              ; preds = %191, %187, %173
  store i32 0, i32* %18, align 4
  br label %247

247:                                              ; preds = %309, %246
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* @PS_PAGE_BUFFERS, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %312

251:                                              ; preds = %247
  %252 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %253 = bitcast %union.e1000_rx_desc_packet_split* %252 to %struct.TYPE_14__*
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %18, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le16_to_cpu(i32 %260)
  store i32 %261, i32* %19, align 4
  %262 = load i32, i32* %19, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %251
  br label %312

265:                                              ; preds = %251
  %266 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %267 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %266, i32 0, i32 1
  %268 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %267, align 8
  %269 = load i32, i32* %18, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %268, i64 %270
  store %struct.e1000_ps_page* %271, %struct.e1000_ps_page** %15, align 8
  %272 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %273 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %272, i32 0, i32 0
  %274 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %275 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @PAGE_SIZE, align 8
  %278 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %279 = call i32 @dma_unmap_page(i32* %273, i64 %276, i64 %277, i32 %278)
  %280 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %281 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %280, i32 0, i32 1
  store i64 0, i64* %281, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %283 = load i32, i32* %18, align 4
  %284 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %285 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %19, align 4
  %288 = call i32 @skb_fill_page_desc(%struct.sk_buff* %282, i32 %283, i32* %286, i32 0, i32 %287)
  %289 = load %struct.e1000_ps_page*, %struct.e1000_ps_page** %15, align 8
  %290 = getelementptr inbounds %struct.e1000_ps_page, %struct.e1000_ps_page* %289, i32 0, i32 0
  store i32* null, i32** %290, align 8
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %294 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %292
  store i64 %296, i64* %294, align 8
  %297 = load i32, i32* %19, align 4
  %298 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %299 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = add nsw i32 %300, %297
  store i32 %301, i32* %299, align 8
  %302 = load i64, i64* @PAGE_SIZE, align 8
  %303 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %304 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %302
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %304, align 8
  br label %309

309:                                              ; preds = %265
  %310 = load i32, i32* %18, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %18, align 4
  br label %247

312:                                              ; preds = %264, %247
  %313 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %314 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %326, label %319

319:                                              ; preds = %312
  %320 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %322 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = sub nsw i64 %323, 4
  %325 = call i32 @pskb_trim(%struct.sk_buff* %320, i64 %324)
  br label %326

326:                                              ; preds = %319, %312
  br label %327

327:                                              ; preds = %326, %242
  %328 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %329 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i32, i32* %23, align 4
  %332 = zext i32 %331 to i64
  %333 = add nsw i64 %332, %330
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %23, align 4
  %335 = load i32, i32* %24, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %24, align 4
  %337 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %338 = load i32, i32* %20, align 4
  %339 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %340 = bitcast %union.e1000_rx_desc_packet_split* %339 to %struct.TYPE_14__*
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @le16_to_cpu(i32 %345)
  %347 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %348 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %337, i32 %338, i32 %346, %struct.sk_buff* %347)
  %349 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %350 = bitcast %union.e1000_rx_desc_packet_split* %349 to %struct.TYPE_14__*
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @E1000_RXDPS_HDRSTAT_HDRSP, align 4
  %355 = call i32 @cpu_to_le16(i32 %354)
  %356 = and i32 %353, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %327
  %359 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %360 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 8
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %360, align 8
  br label %363

363:                                              ; preds = %358, %327
  %364 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %365 = load %struct.net_device*, %struct.net_device** %11, align 8
  %366 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %367 = load i32, i32* %20, align 4
  %368 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %369 = bitcast %union.e1000_rx_desc_packet_split* %368 to %struct.TYPE_14__*
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %364, %struct.net_device* %365, %struct.sk_buff* %366, i32 %367, i32 %372)
  br label %374

374:                                              ; preds = %363, %169, %157, %151
  %375 = call i32 @cpu_to_le32(i32 -256)
  %376 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %377 = bitcast %union.e1000_rx_desc_packet_split* %376 to %struct.TYPE_14__*
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = and i32 %380, %375
  store i32 %381, i32* %379, align 8
  %382 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %383 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %382, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %383, align 8
  %384 = load i32, i32* %21, align 4
  %385 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %386 = icmp sge i32 %384, %385
  br i1 %386, label %387, label %395

387:                                              ; preds = %374
  %388 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %389 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %388, i32 0, i32 4
  %390 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %389, align 8
  %391 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %392 = load i32, i32* %21, align 4
  %393 = load i32, i32* @GFP_ATOMIC, align 4
  %394 = call i32 %390(%struct.e1000_ring* %391, i32 %392, i32 %393)
  store i32 0, i32* %21, align 4
  br label %395

395:                                              ; preds = %387, %374
  %396 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %10, align 8
  store %union.e1000_rx_desc_packet_split* %396, %union.e1000_rx_desc_packet_split** %9, align 8
  %397 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  store %struct.e1000_buffer* %397, %struct.e1000_buffer** %13, align 8
  %398 = load %union.e1000_rx_desc_packet_split*, %union.e1000_rx_desc_packet_split** %9, align 8
  %399 = bitcast %union.e1000_rx_desc_packet_split* %398 to %struct.TYPE_14__*
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @le32_to_cpu(i32 %402)
  store i32 %403, i32* %20, align 4
  br label %56

404:                                              ; preds = %66, %56
  %405 = load i32, i32* %17, align 4
  %406 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %407 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %406, i32 0, i32 0
  store i32 %405, i32* %407, align 8
  %408 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %409 = call i32 @e1000_desc_unused(%struct.e1000_ring* %408)
  store i32 %409, i32* %21, align 4
  %410 = load i32, i32* %21, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %420

412:                                              ; preds = %404
  %413 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %414 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %413, i32 0, i32 4
  %415 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %414, align 8
  %416 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %417 = load i32, i32* %21, align 4
  %418 = load i32, i32* @GFP_ATOMIC, align 4
  %419 = call i32 %415(%struct.e1000_ring* %416, i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %412, %404
  %421 = load i32, i32* %23, align 4
  %422 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %423 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = add i32 %424, %421
  store i32 %425, i32* %423, align 8
  %426 = load i32, i32* %24, align 4
  %427 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %428 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %429, %426
  store i32 %430, i32* %428, align 4
  %431 = load i32, i32* %23, align 4
  %432 = load %struct.net_device*, %struct.net_device** %11, align 8
  %433 = getelementptr inbounds %struct.net_device, %struct.net_device* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = add i32 %435, %431
  store i32 %436, i32* %434, align 4
  %437 = load i32, i32* %24, align 4
  %438 = load %struct.net_device*, %struct.net_device** %11, align 8
  %439 = getelementptr inbounds %struct.net_device, %struct.net_device* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = add i32 %441, %437
  store i32 %442, i32* %440, align 4
  %443 = load i32, i32* %22, align 4
  ret i32 %443
}

declare dso_local %union.e1000_rx_desc_packet_split* @E1000_RX_DESC_PS(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_packet_split*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i64, i64, i32) #1

declare dso_local i32* @kmap_atomic(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i64, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
