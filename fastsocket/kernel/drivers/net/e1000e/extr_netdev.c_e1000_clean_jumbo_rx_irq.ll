; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_jumbo_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000_clean_jumbo_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.e1000_ring = type { i32, i32, %struct.sk_buff*, %struct.e1000_buffer*, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32, %struct.sk_buff*, i64 }
%struct.e1000_adapter = type { i32, i32, i32 (%struct.e1000_ring*, i32, i32)*, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%union.e1000_rx_desc_extended = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXDEXT_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@KM_SKB_DATA_SOFTIRQ = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pskb_may_pull failed.\0A\00", align 1
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rxtop = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_ring*, i32*, i32)* @e1000_clean_jumbo_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_jumbo_rx_irq(%struct.e1000_ring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.e1000_ring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %union.e1000_rx_desc_extended*, align 8
  %11 = alloca %union.e1000_rx_desc_extended*, align 8
  %12 = alloca %struct.e1000_buffer*, align 8
  %13 = alloca %struct.e1000_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca i32*, align 8
  store %struct.e1000_ring* %0, %struct.e1000_ring** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %23, i32 0, i32 4
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %24, align 8
  store %struct.e1000_adapter* %25, %struct.e1000_adapter** %7, align 8
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 4
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %30, align 8
  store %struct.pci_dev* %31, %struct.pci_dev** %9, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %32 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %33 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %35, i32 %36)
  store %union.e1000_rx_desc_extended* %37, %union.e1000_rx_desc_extended** %10, align 8
  %38 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %39 = bitcast %union.e1000_rx_desc_extended* %38 to %struct.TYPE_12__*
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %44, i32 0, i32 3
  %46 = load %struct.e1000_buffer*, %struct.e1000_buffer** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %46, i64 %48
  store %struct.e1000_buffer* %49, %struct.e1000_buffer** %12, align 8
  br label %50

50:                                               ; preds = %320, %3
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %329

55:                                               ; preds = %50
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %329

61:                                               ; preds = %55
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = call i32 (...) @rmb()
  %66 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %67 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %66, i32 0, i32 1
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %21, align 8
  %69 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %70 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %69, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %70, align 8
  %71 = load i32, i32* %16, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8 %80, i32 %81)
  store %union.e1000_rx_desc_extended* %82, %union.e1000_rx_desc_extended** %11, align 8
  %83 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  %84 = call i32 @prefetch(%union.e1000_rx_desc_extended* %83)
  %85 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %85, i32 0, i32 3
  %87 = load %struct.e1000_buffer*, %struct.e1000_buffer** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %87, i64 %89
  store %struct.e1000_buffer* %90, %struct.e1000_buffer** %13, align 8
  store i32 1, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %96 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %100 = call i32 @dma_unmap_page(i32* %94, i64 %97, i32 %98, i32 %99)
  %101 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %102 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %104 = bitcast %union.e1000_rx_desc_extended* %103 to %struct.TYPE_12__*
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %79
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @E1000_RXDEXT_ERR_FRAME_ERR_MASK, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %113, %79
  %119 = phi i1 [ false, %79 ], [ %117, %113 ]
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %125 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %126 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %125, i32 0, i32 1
  store %struct.sk_buff* %124, %struct.sk_buff** %126, align 8
  %127 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %127, i32 0, i32 2
  %129 = load %struct.sk_buff*, %struct.sk_buff** %128, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %132, i32 0, i32 2
  %134 = load %struct.sk_buff*, %struct.sk_buff** %133, align 8
  %135 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %134)
  br label %136

136:                                              ; preds = %131, %123
  %137 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %137, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %138, align 8
  br label %298

139:                                              ; preds = %118
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %186, label %144

144:                                              ; preds = %139
  %145 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %146 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %145, i32 0, i32 2
  %147 = load %struct.sk_buff*, %struct.sk_buff** %146, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %151 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %152 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %151, i32 0, i32 2
  store %struct.sk_buff* %150, %struct.sk_buff** %152, align 8
  %153 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %154 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %153, i32 0, i32 2
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  %156 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %157 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @skb_fill_page_desc(%struct.sk_buff* %155, i32 0, i32 %158, i32 0, i32 %159)
  br label %179

161:                                              ; preds = %144
  %162 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %163 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %162, i32 0, i32 2
  %164 = load %struct.sk_buff*, %struct.sk_buff** %163, align 8
  %165 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %166 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %165, i32 0, i32 2
  %167 = load %struct.sk_buff*, %struct.sk_buff** %166, align 8
  %168 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %167)
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %172 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @skb_fill_page_desc(%struct.sk_buff* %164, i32 %170, i32 %173, i32 0, i32 %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %177 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %178 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %177, i32 0, i32 1
  store %struct.sk_buff* %176, %struct.sk_buff** %178, align 8
  br label %179

179:                                              ; preds = %161, %149
  %180 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %181 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %182 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %181, i32 0, i32 2
  %183 = load %struct.sk_buff*, %struct.sk_buff** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @e1000_consume_page(%struct.e1000_buffer* %180, %struct.sk_buff* %183, i32 %184)
  br label %298

186:                                              ; preds = %139
  %187 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %188 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %187, i32 0, i32 2
  %189 = load %struct.sk_buff*, %struct.sk_buff** %188, align 8
  %190 = icmp ne %struct.sk_buff* %189, null
  br i1 %190, label %191, label %218

191:                                              ; preds = %186
  %192 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %193 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %192, i32 0, i32 2
  %194 = load %struct.sk_buff*, %struct.sk_buff** %193, align 8
  %195 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %196 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %195, i32 0, i32 2
  %197 = load %struct.sk_buff*, %struct.sk_buff** %196, align 8
  %198 = call %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff* %197)
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %202 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @skb_fill_page_desc(%struct.sk_buff* %194, i32 %200, i32 %203, i32 0, i32 %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %207 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %208 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %207, i32 0, i32 1
  store %struct.sk_buff* %206, %struct.sk_buff** %208, align 8
  %209 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %210 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %209, i32 0, i32 2
  %211 = load %struct.sk_buff*, %struct.sk_buff** %210, align 8
  store %struct.sk_buff* %211, %struct.sk_buff** %21, align 8
  %212 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %213 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %212, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %213, align 8
  %214 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @e1000_consume_page(%struct.e1000_buffer* %214, %struct.sk_buff* %215, i32 %216)
  br label %256

218:                                              ; preds = %186
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* @copybreak, align 4
  %221 = icmp sle i32 %219, %220
  br i1 %221, label %222, label %244

222:                                              ; preds = %218
  %223 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %224 = call i32 @skb_tailroom(%struct.sk_buff* %223)
  %225 = load i32, i32* %14, align 4
  %226 = icmp sge i32 %224, %225
  br i1 %226, label %227, label %244

227:                                              ; preds = %222
  %228 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %229 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %232 = call i32* @kmap_atomic(i32 %230, i32 %231)
  store i32* %232, i32** %22, align 8
  %233 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %234 = call i32 @skb_tail_pointer(%struct.sk_buff* %233)
  %235 = load i32*, i32** %22, align 8
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @memcpy(i32 %234, i32* %235, i32 %236)
  %238 = load i32*, i32** %22, align 8
  %239 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %240 = call i32 @kunmap_atomic(i32* %238, i32 %239)
  %241 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @skb_put(%struct.sk_buff* %241, i32 %242)
  br label %255

244:                                              ; preds = %222, %218
  %245 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %246 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %247 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @skb_fill_page_desc(%struct.sk_buff* %245, i32 0, i32 %248, i32 0, i32 %249)
  %251 = load %struct.e1000_buffer*, %struct.e1000_buffer** %12, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @e1000_consume_page(%struct.e1000_buffer* %251, %struct.sk_buff* %252, i32 %253)
  br label %255

255:                                              ; preds = %244, %227
  br label %256

256:                                              ; preds = %255, %191
  br label %257

257:                                              ; preds = %256
  %258 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %259 = load i32, i32* %15, align 4
  %260 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %261 = bitcast %union.e1000_rx_desc_extended* %260 to %struct.TYPE_12__*
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le16_to_cpu(i32 %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %269 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %258, i32 %259, i32 %267, %struct.sk_buff* %268)
  %270 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %19, align 4
  %274 = zext i32 %273 to i64
  %275 = add nsw i64 %274, %272
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %19, align 4
  %277 = load i32, i32* %20, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %20, align 4
  %279 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %280 = load i32, i32* @ETH_HLEN, align 4
  %281 = call i32 @pskb_may_pull(%struct.sk_buff* %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %257
  %284 = call i32 @e_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %285 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %286 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %285)
  br label %298

287:                                              ; preds = %257
  %288 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %289 = load %struct.net_device*, %struct.net_device** %8, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %291 = load i32, i32* %15, align 4
  %292 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %293 = bitcast %union.e1000_rx_desc_extended* %292 to %struct.TYPE_12__*
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %288, %struct.net_device* %289, %struct.sk_buff* %290, i32 %291, i32 %296)
  br label %298

298:                                              ; preds = %287, %283, %179, %136
  %299 = call i32 @cpu_to_le32(i32 -256)
  %300 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %301 = bitcast %union.e1000_rx_desc_extended* %300 to %struct.TYPE_12__*
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, %299
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* %17, align 4
  %307 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %308 = icmp sge i32 %306, %307
  %309 = zext i1 %308 to i32
  %310 = call i64 @unlikely(i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %298
  %313 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %314 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %313, i32 0, i32 2
  %315 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %314, align 8
  %316 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* @GFP_ATOMIC, align 4
  %319 = call i32 %315(%struct.e1000_ring* %316, i32 %317, i32 %318)
  store i32 0, i32* %17, align 4
  br label %320

320:                                              ; preds = %312, %298
  %321 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %11, align 8
  store %union.e1000_rx_desc_extended* %321, %union.e1000_rx_desc_extended** %10, align 8
  %322 = load %struct.e1000_buffer*, %struct.e1000_buffer** %13, align 8
  store %struct.e1000_buffer* %322, %struct.e1000_buffer** %12, align 8
  %323 = load %union.e1000_rx_desc_extended*, %union.e1000_rx_desc_extended** %10, align 8
  %324 = bitcast %union.e1000_rx_desc_extended* %323 to %struct.TYPE_12__*
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @le32_to_cpu(i32 %327)
  store i32 %328, i32* %15, align 4
  br label %50

329:                                              ; preds = %60, %50
  %330 = load i32, i32* %16, align 4
  %331 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %332 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %331, i32 0, i32 0
  store i32 %330, i32* %332, align 8
  %333 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %334 = call i32 @e1000_desc_unused(%struct.e1000_ring* %333)
  store i32 %334, i32* %17, align 4
  %335 = load i32, i32* %17, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %329
  %338 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %339 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %338, i32 0, i32 2
  %340 = load i32 (%struct.e1000_ring*, i32, i32)*, i32 (%struct.e1000_ring*, i32, i32)** %339, align 8
  %341 = load %struct.e1000_ring*, %struct.e1000_ring** %4, align 8
  %342 = load i32, i32* %17, align 4
  %343 = load i32, i32* @GFP_ATOMIC, align 4
  %344 = call i32 %340(%struct.e1000_ring* %341, i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %337, %329
  %346 = load i32, i32* %19, align 4
  %347 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %348 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = add i32 %349, %346
  store i32 %350, i32* %348, align 8
  %351 = load i32, i32* %20, align 4
  %352 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %353 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = add i32 %354, %351
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* %19, align 4
  %357 = load %struct.net_device*, %struct.net_device** %8, align 8
  %358 = getelementptr inbounds %struct.net_device, %struct.net_device* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = add i32 %360, %356
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* %20, align 4
  %363 = load %struct.net_device*, %struct.net_device** %8, align 8
  %364 = getelementptr inbounds %struct.net_device, %struct.net_device* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, %362
  store i32 %367, i32* %365, align 4
  %368 = load i32, i32* %18, align 4
  ret i32 %368
}

declare dso_local %union.e1000_rx_desc_extended* @E1000_RX_DESC_EXT(%struct.e1000_ring* byval(%struct.e1000_ring) align 8, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @prefetch(%union.e1000_rx_desc_extended*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @e1000_consume_page(%struct.e1000_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @e1000_desc_unused(%struct.e1000_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
