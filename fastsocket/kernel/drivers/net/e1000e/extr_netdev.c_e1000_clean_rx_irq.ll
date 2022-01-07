; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { %union.e1000_rx_desc_extended* }
%union.e1000_rx_desc_extended = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, i32, %struct.e1000_hw, %struct.pci_dev*, %struct.net_device* }
%struct.e1000_hw = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@FLAG2_IS_DISCARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Receive packet consumed multiple buffers\0A\00", align 1
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_rx_irq(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.e1000_hw*, align 8
  %11 = alloca %union.e1000_rx_desc_extended*, align 8
  %12 = alloca %union.e1000_rx_desc_extended*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %24, i32 0, i32 3
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %25, align 8
  store %struct.e1000_adapter* %26, %struct.e1000_adapter** %7, align 8
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 7
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 6
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %9, align 8
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %33, i32 0, i32 5
  store %struct.e1000_hw* %34, %struct.e1000_hw** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %35 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %38, i32 %39)
  store %union.e1000_rx_desc_extended* %40, %union.e1000_rx_desc_extended** %11, align 8
  %41 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %42 = bitcast %union.e1000_rx_desc_extended* %41 to %struct.TYPE_11__*
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %47, i32 0, i32 2
  %49 = load %struct.e1000_buffer*, %struct.e1000_buffer** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %49, i64 %51
  store %struct.e1000_buffer* %52, %struct.e1000_buffer** %13, align 8
  br label %53

53:                                               ; preds = %259, %3
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %268

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %268

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = call i32 (...) @rmb()
  %69 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %70 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %70, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %22, align 8
  %72 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %73 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %72, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %75, align 8
  %77 = load i32, i32* @NET_IP_ALIGN, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %76, i64 %79
  %81 = call i32 @prefetch(%union.e1000_rx_desc_extended* %80)
  %82 = load i32, i32* %17, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %64
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %91, i32 %92)
  store %union.e1000_rx_desc_extended* %93, %union.e1000_rx_desc_extended** %12, align 8
  %94 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %12, align 8
  %95 = call i32 @prefetch(%union.e1000_rx_desc_extended* %94)
  %96 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %96, i32 0, i32 2
  %98 = load %struct.e1000_buffer*, %struct.e1000_buffer** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %98, i64 %100
  store %struct.e1000_buffer* %101, %struct.e1000_buffer** %14, align 8
  store i32 1, i32* %19, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  %104 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %107 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %110 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %113 = call i32 @dma_unmap_single(i32* %105, i64 %108, i32 %111, i32 %112)
  %114 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %115 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %117 = bitcast %union.e1000_rx_desc_extended* %116 to %struct.TYPE_11__*
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le16_to_cpu(i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %90
  %131 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %132 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %133 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %90
  %137 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %138 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = call i32 @e_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %145 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %146 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %147 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %146, i32 0, i32 0
  store %struct.sk_buff* %145, %struct.sk_buff** %147, align 8
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load i32, i32* @FLAG2_IS_DISCARDING, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %156 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %143
  br label %240

160:                                              ; preds = %136
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %167 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %168 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %167, i32 0, i32 0
  store %struct.sk_buff* %166, %struct.sk_buff** %168, align 8
  br label %240

169:                                              ; preds = %160
  %170 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %171 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %15, align 4
  %178 = sub nsw i32 %177, 4
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %176, %169
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %20, align 4
  %182 = add i32 %181, %180
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* @copybreak, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %214

188:                                              ; preds = %179
  %189 = load %struct.net_device*, %struct.net_device** %8, align 8
  %190 = load i32, i32* %15, align 4
  %191 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %189, i32 %190)
  store %struct.sk_buff* %191, %struct.sk_buff** %23, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %193 = icmp ne %struct.sk_buff* %192, null
  br i1 %193, label %194, label %213

194:                                              ; preds = %188
  %195 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %196 = load i32, i32* @NET_IP_ALIGN, align 4
  %197 = sub nsw i32 0, %196
  %198 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %199, align 8
  %201 = load i32, i32* @NET_IP_ALIGN, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds %union.e1000_rx_desc_extended, %union.e1000_rx_desc_extended* %200, i64 %203
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @NET_IP_ALIGN, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %195, i32 %197, %union.e1000_rx_desc_extended* %204, i32 %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %210 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  %211 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %210, i32 0, i32 0
  store %struct.sk_buff* %209, %struct.sk_buff** %211, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %212, %struct.sk_buff** %22, align 8
  br label %213

213:                                              ; preds = %194, %188
  br label %214

214:                                              ; preds = %213, %179
  %215 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @skb_put(%struct.sk_buff* %215, i32 %216)
  %218 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %219 = load i32, i32* %16, align 4
  %220 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %221 = bitcast %union.e1000_rx_desc_extended* %220 to %struct.TYPE_11__*
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le16_to_cpu(i32 %226)
  %228 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %229 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %218, i32 %219, i32 %227, %struct.sk_buff* %228)
  %230 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %231 = load %struct.net_device*, %struct.net_device** %8, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %233 = load i32, i32* %16, align 4
  %234 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %235 = bitcast %union.e1000_rx_desc_extended* %234 to %struct.TYPE_11__*
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %230, %struct.net_device* %231, %struct.sk_buff* %232, i32 %233, i32 %238)
  br label %240

240:                                              ; preds = %214, %165, %159
  %241 = call i32 @cpu_to_le32(i32 -256)
  %242 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %243 = bitcast %union.e1000_rx_desc_extended* %242 to %struct.TYPE_11__*
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, %241
  store i32 %247, i32* %245, align 4
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %250 = icmp sge i32 %248, %249
  br i1 %250, label %251, label %259

251:                                              ; preds = %240
  %252 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %253 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %252, i32 0, i32 3
  %254 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %253, align 8
  %255 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %256 = load i32, i32* %18, align 4
  %257 = load i32, i32* @GFP_ATOMIC, align 4
  %258 = call i32 %254(%struct.e1000_ring* %255, i32 %256, i32 %257)
  store i32 0, i32* %18, align 4
  br label %259

259:                                              ; preds = %251, %240
  %260 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %12, align 8
  store %union.e1000_rx_desc_extended* %260, %union.e1000_rx_desc_extended** %11, align 8
  %261 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  store %struct.e1000_buffer* %261, %struct.e1000_buffer** %13, align 8
  %262 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %263 = bitcast %union.e1000_rx_desc_extended* %262 to %struct.TYPE_11__*
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le32_to_cpu(i32 %266)
  store i32 %267, i32* %16, align 4
  br label %53

268:                                              ; preds = %63, %53
  %269 = load i32, i32* %17, align 4
  %270 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %271 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %273 = call i32 @e1000_desc_unused(%struct.e1000_ring* %272)
  store i32 %273, i32* %18, align 4
  %274 = load i32, i32* %18, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %268
  %277 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %278 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %277, i32 0, i32 3
  %279 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %278, align 8
  %280 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* @GFP_ATOMIC, align 4
  %283 = call i32 %279(%struct.e1000_ring* %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %276, %268
  %285 = load i32, i32* %20, align 4
  %286 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %287 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* %21, align 4
  %291 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %292 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = add i32 %293, %290
  store i32 %294, i32* %292, align 8
  %295 = load i32, i32* %20, align 4
  %296 = load %struct.net_device*, %struct.net_device** %8, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = add i32 %299, %295
  store i32 %300, i32* %298, align 4
  %301 = load i32, i32* %21, align 4
  %302 = load %struct.net_device*, %struct.net_device** %8, align 8
  %303 = getelementptr inbounds %struct.net_device, %struct.net_device* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = add i32 %305, %301
  store i32 %306, i32* %304, align 4
  %307 = load i32, i32* %19, align 4
  ret i32 %307
}

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_extended*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, %union.e1000_rx_desc_extended*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
