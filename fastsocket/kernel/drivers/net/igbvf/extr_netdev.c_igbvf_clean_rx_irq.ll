; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.e1000_adv_rx_desc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.igbvf_adapter = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.pci_dev*, %struct.net_device*, %struct.igbvf_ring* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.igbvf_ring = type { i32, i32, %struct.igbvf_buffer* }
%struct.igbvf_buffer = type { i64, %struct.sk_buff*, i32*, i32, i64 }
%struct.sk_buff = type { i32, i32, i32, i64, %union.e1000_adv_rx_desc* }
%struct.TYPE_14__ = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@E1000_RXDADV_HDRBUFLEN_MASK = common dso_local global i32 0, align 4
@E1000_RXDADV_HDRBUFLEN_SHIFT = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %union.e1000_adv_rx_desc* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@IGBVF_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*, i32*, i32)* @igbvf_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_clean_rx_irq(%struct.igbvf_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.igbvf_ring*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %union.e1000_adv_rx_desc*, align 8
  %11 = alloca %union.e1000_adv_rx_desc*, align 8
  %12 = alloca %struct.igbvf_buffer*, align 8
  %13 = alloca %struct.igbvf_buffer*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %23, i32 0, i32 7
  %25 = load %struct.igbvf_ring*, %struct.igbvf_ring** %24, align 8
  store %struct.igbvf_ring* %25, %struct.igbvf_ring** %7, align 8
  %26 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %26, i32 0, i32 6
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 5
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %33 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %19, align 4
  %35 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %36 = load i32, i32* %19, align 4
  %37 = bitcast %struct.igbvf_ring* %35 to { i64, %struct.igbvf_buffer* }*
  %38 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %37, i32 0, i32 1
  %41 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %40, align 8
  %42 = call %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64 %39, %struct.igbvf_buffer* %41, i32 %36)
  store %union.e1000_adv_rx_desc* %42, %union.e1000_adv_rx_desc** %10, align 8
  %43 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %44 = bitcast %union.e1000_adv_rx_desc* %43 to %struct.TYPE_12__*
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  store i32 %48, i32* %22, align 4
  br label %49

49:                                               ; preds = %318, %3
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %327

54:                                               ; preds = %49
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %327

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = call i32 (...) @rmb()
  %65 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %66 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %65, i32 0, i32 2
  %67 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %66, align 8
  %68 = load i32, i32* %19, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %67, i64 %69
  store %struct.igbvf_buffer* %70, %struct.igbvf_buffer** %12, align 8
  %71 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %72 = bitcast %union.e1000_adv_rx_desc* %71 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load i32, i32* @E1000_RXDADV_HDRBUFLEN_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @E1000_RXDADV_HDRBUFLEN_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %60
  %89 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %88, %60
  %93 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %94 = bitcast %union.e1000_adv_rx_desc* %93 to %struct.TYPE_12__*
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16_to_cpu(i32 %97)
  store i32 %98, i32* %20, align 4
  store i32 1, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  %101 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %102 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %101, i32 0, i32 1
  %103 = load %struct.sk_buff*, %struct.sk_buff** %102, align 8
  store %struct.sk_buff* %103, %struct.sk_buff** %14, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 4
  %106 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %105, align 8
  %107 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** @NET_IP_ALIGN, align 8
  %108 = ptrtoint %union.e1000_adv_rx_desc* %106 to i64
  %109 = ptrtoint %union.e1000_adv_rx_desc* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 24
  %112 = inttoptr i64 %111 to %union.e1000_adv_rx_desc*
  %113 = call i32 @prefetch(%union.e1000_adv_rx_desc* %112)
  %114 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %115 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %114, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %115, align 8
  %116 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %117 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %92
  %121 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %124 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %127 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %130 = call i32 @dma_unmap_single(i32* %122, i64 %125, i32 %128, i32 %129)
  %131 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %132 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %131, i32 0, i32 0
  store i64 0, i64* %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @skb_put(%struct.sk_buff* %133, i32 %134)
  br label %223

136:                                              ; preds = %92
  %137 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %138 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %137)
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %156, label %142

142:                                              ; preds = %136
  %143 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %144 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %143, i32 0, i32 0
  %145 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %146 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %149 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %152 = call i32 @dma_unmap_single(i32* %144, i64 %147, i32 %150, i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %154 = load i32, i32* %21, align 4
  %155 = call i32 @skb_put(%struct.sk_buff* %153, i32 %154)
  br label %156

156:                                              ; preds = %142, %136
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %222

159:                                              ; preds = %156
  %160 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %163 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @PAGE_SIZE, align 4
  %166 = sdiv i32 %165, 2
  %167 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %168 = call i32 @dma_unmap_page(i32* %161, i64 %164, i32 %166, i32 %167)
  %169 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %170 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %169, i32 0, i32 4
  store i64 0, i64* %170, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %173 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %172)
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %177 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %180 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @skb_fill_page_desc(%struct.sk_buff* %171, i32 %175, i32* %178, i32 %181, i32 %182)
  %184 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %185 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PAGE_SIZE, align 4
  %188 = sdiv i32 %187, 2
  %189 = icmp sgt i32 %186, %188
  br i1 %189, label %196, label %190

190:                                              ; preds = %159
  %191 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %192 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @page_count(i32* %193)
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %190, %159
  %197 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %198 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %197, i32 0, i32 2
  store i32* null, i32** %198, align 8
  br label %204

199:                                              ; preds = %190
  %200 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %201 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = call i32 @get_page(i32* %202)
  br label %204

204:                                              ; preds = %199, %196
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %206
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %20, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = sdiv i32 %216, 2
  %218 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %204, %156
  br label %223

223:                                              ; preds = %222, %120
  %224 = load i32, i32* %19, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %228 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  store i32 0, i32* %19, align 4
  br label %232

232:                                              ; preds = %231, %223
  %233 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %234 = load i32, i32* %19, align 4
  %235 = bitcast %struct.igbvf_ring* %233 to { i64, %struct.igbvf_buffer* }*
  %236 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds { i64, %struct.igbvf_buffer* }, { i64, %struct.igbvf_buffer* }* %235, i32 0, i32 1
  %239 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %238, align 8
  %240 = call %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64 %237, %struct.igbvf_buffer* %239, i32 %234)
  store %union.e1000_adv_rx_desc* %240, %union.e1000_adv_rx_desc** %11, align 8
  %241 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  %242 = call i32 @prefetch(%union.e1000_adv_rx_desc* %241)
  %243 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %244 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %243, i32 0, i32 2
  %245 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %244, align 8
  %246 = load i32, i32* %19, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %245, i64 %247
  store %struct.igbvf_buffer* %248, %struct.igbvf_buffer** %13, align 8
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %269, label %253

253:                                              ; preds = %232
  %254 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %255 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %254, i32 0, i32 1
  %256 = load %struct.sk_buff*, %struct.sk_buff** %255, align 8
  %257 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %258 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %257, i32 0, i32 1
  store %struct.sk_buff* %256, %struct.sk_buff** %258, align 8
  %259 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %260 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %12, align 8
  %263 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %265 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %266 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %265, i32 0, i32 1
  store %struct.sk_buff* %264, %struct.sk_buff** %266, align 8
  %267 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  %268 = getelementptr inbounds %struct.igbvf_buffer, %struct.igbvf_buffer* %267, i32 0, i32 0
  store i64 0, i64* %268, align 8
  br label %306

269:                                              ; preds = %232
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %276 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %275)
  br label %306

277:                                              ; preds = %269
  %278 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* %17, align 4
  %282 = zext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %17, align 4
  %285 = load i32, i32* %18, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %18, align 4
  %287 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %288 = load i32, i32* %22, align 4
  %289 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %290 = call i32 @igbvf_rx_checksum_adv(%struct.igbvf_adapter* %287, i32 %288, %struct.sk_buff* %289)
  %291 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %292 = load %struct.net_device*, %struct.net_device** %8, align 8
  %293 = call i32 @eth_type_trans(%struct.sk_buff* %291, %struct.net_device* %292)
  %294 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %297 = load %struct.net_device*, %struct.net_device** %8, align 8
  %298 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %299 = load i32, i32* %22, align 4
  %300 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %301 = bitcast %union.e1000_adv_rx_desc* %300 to %struct.TYPE_12__*
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @igbvf_receive_skb(%struct.igbvf_adapter* %296, %struct.net_device* %297, %struct.sk_buff* %298, i32 %299, i32 %304)
  br label %306

306:                                              ; preds = %277, %274, %253
  %307 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %308 = bitcast %union.e1000_adv_rx_desc* %307 to %struct.TYPE_12__*
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  store i64 0, i64* %310, align 8
  %311 = load i32, i32* %16, align 4
  %312 = load i32, i32* @IGBVF_RX_BUFFER_WRITE, align 4
  %313 = icmp sge i32 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %306
  %315 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %316 = load i32, i32* %16, align 4
  %317 = call i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring* %315, i32 %316)
  store i32 0, i32* %16, align 4
  br label %318

318:                                              ; preds = %314, %306
  %319 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %11, align 8
  store %union.e1000_adv_rx_desc* %319, %union.e1000_adv_rx_desc** %10, align 8
  %320 = load %struct.igbvf_buffer*, %struct.igbvf_buffer** %13, align 8
  store %struct.igbvf_buffer* %320, %struct.igbvf_buffer** %12, align 8
  %321 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %10, align 8
  %322 = bitcast %union.e1000_adv_rx_desc* %321 to %struct.TYPE_12__*
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @le32_to_cpu(i64 %325)
  store i32 %326, i32* %22, align 4
  br label %49

327:                                              ; preds = %59, %49
  %328 = load i32, i32* %19, align 4
  %329 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %330 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %332 = call i32 @igbvf_desc_unused(%struct.igbvf_ring* %331)
  store i32 %332, i32* %16, align 4
  %333 = load i32, i32* %16, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %327
  %336 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %337 = load i32, i32* %16, align 4
  %338 = call i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring* %336, i32 %337)
  br label %339

339:                                              ; preds = %335, %327
  %340 = load i32, i32* %18, align 4
  %341 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %342 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = add i32 %343, %340
  store i32 %344, i32* %342, align 8
  %345 = load i32, i32* %17, align 4
  %346 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %347 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = add i32 %348, %345
  store i32 %349, i32* %347, align 4
  %350 = load i32, i32* %17, align 4
  %351 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %352 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = add i32 %354, %350
  store i32 %355, i32* %353, align 8
  %356 = load i32, i32* %18, align 4
  %357 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %358 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = add i32 %360, %356
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* %15, align 4
  ret i32 %362
}

declare dso_local %union.e1000_adv_rx_desc* @IGBVF_RX_DESC_ADV(i64, %struct.igbvf_buffer*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @prefetch(%union.e1000_adv_rx_desc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @page_count(i32*) #1

declare dso_local i32 @get_page(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @igbvf_rx_checksum_adv(%struct.igbvf_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @igbvf_receive_skb(%struct.igbvf_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @igbvf_alloc_rx_buffers(%struct.igbvf_ring*, i32) #1

declare dso_local i32 @igbvf_desc_unused(%struct.igbvf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
