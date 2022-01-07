; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_clean_jumbo_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_clean_jumbo_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32*, i64 }
%struct.e1000_adapter = type { i32, i32, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, i32, i32, %struct.pci_dev*, %struct.net_device*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.e1000_hw = type { i32 }
%struct.e1000_rx_ring = type { i32, i32, %struct.sk_buff*, %struct.e1000_buffer* }
%struct.e1000_buffer = type { i32, %struct.sk_buff*, i64, i32 }
%struct.e1000_rx_desc = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@E1000_RXD_STAT_DD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@E1000_RXD_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@copybreak = common dso_local global i32 0, align 4
@KM_SKB_DATA_SOFTIRQ = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pskb_may_pull failed.\0A\00", align 1
@E1000_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@rxtop = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32*, i32)* @e1000_clean_jumbo_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_clean_jumbo_rx_irq(%struct.e1000_adapter* %0, %struct.e1000_rx_ring* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_rx_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.e1000_rx_desc*, align 8
  %13 = alloca %struct.e1000_rx_desc*, align 8
  %14 = alloca %struct.e1000_buffer*, align 8
  %15 = alloca %struct.e1000_buffer*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %5, align 8
  store %struct.e1000_rx_ring* %1, %struct.e1000_rx_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 7
  store %struct.e1000_hw* %28, %struct.e1000_hw** %9, align 8
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 6
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  store %struct.net_device* %31, %struct.net_device** %10, align 8
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 5
  %34 = load %struct.pci_dev*, %struct.pci_dev** %33, align 8
  store %struct.pci_dev* %34, %struct.pci_dev** %11, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %35 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %18, align 4
  %38 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %39 = load i32, i32* %18, align 4
  %40 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %38, i32 %39)
  store %struct.e1000_rx_desc* %40, %struct.e1000_rx_desc** %12, align 8
  %41 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %41, i32 0, i32 3
  %43 = load %struct.e1000_buffer*, %struct.e1000_buffer** %42, align 8
  %44 = load i32, i32* %18, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %43, i64 %45
  store %struct.e1000_buffer* %46, %struct.e1000_buffer** %14, align 8
  br label %47

47:                                               ; preds = %361, %4
  %48 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %49 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @E1000_RXD_STAT_DD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %364

54:                                               ; preds = %47
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %364

60:                                               ; preds = %54
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = call i32 (...) @rmb()
  %65 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %66 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %24, align 4
  %68 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %69 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %68, i32 0, i32 1
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  store %struct.sk_buff* %70, %struct.sk_buff** %23, align 8
  %71 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %72 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %71, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  %73 = load i32, i32* %18, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %18, align 4
  %75 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8 %81, i32 %82)
  store %struct.e1000_rx_desc* %83, %struct.e1000_rx_desc** %13, align 8
  %84 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %13, align 8
  %85 = call i32 @prefetch(%struct.e1000_rx_desc* %84)
  %86 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %87 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %86, i32 0, i32 3
  %88 = load %struct.e1000_buffer*, %struct.e1000_buffer** %87, align 8
  %89 = load i32, i32* %18, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %88, i64 %90
  store %struct.e1000_buffer* %91, %struct.e1000_buffer** %15, align 8
  store i32 1, i32* %20, align 4
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %97 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %100 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %103 = call i32 @dma_unmap_page(i32* %95, i64 %98, i32 %101, i32 %102)
  %104 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %105 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %107 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %80
  %115 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %116 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @E1000_RXD_ERR_FRAME_ERR_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br label %121

121:                                              ; preds = %114, %80
  %122 = phi i1 [ false, %80 ], [ %120, %114 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %180

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = getelementptr inbounds i32, i32* %132, i64 -1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %25, align 4
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %136 = load i32, i32* %24, align 4
  %137 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %138 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %25, align 4
  %142 = call i64 @TBI_ACCEPT(%struct.e1000_hw* %135, i32 %136, i32 %139, i32 %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %126
  %145 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %146 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %145, i32 0, i32 3
  %147 = load i64, i64* %16, align 8
  %148 = call i32 @spin_lock_irqsave(i32* %146, i64 %147)
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %150 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %151 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %150, i32 0, i32 4
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @e1000_tbi_adjust_stats(%struct.e1000_hw* %149, i32* %151, i32 %152, i32* %155)
  %157 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %158 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %157, i32 0, i32 3
  %159 = load i64, i64* %16, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %17, align 4
  br label %179

163:                                              ; preds = %126
  %164 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %165 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %166 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %165, i32 0, i32 1
  store %struct.sk_buff* %164, %struct.sk_buff** %166, align 8
  %167 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %168 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %167, i32 0, i32 2
  %169 = load %struct.sk_buff*, %struct.sk_buff** %168, align 8
  %170 = icmp ne %struct.sk_buff* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %173 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %172, i32 0, i32 2
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  %175 = call i32 @dev_kfree_skb(%struct.sk_buff* %174)
  br label %176

176:                                              ; preds = %171, %163
  %177 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %178 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %177, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %178, align 8
  br label %344

179:                                              ; preds = %144
  br label %180

180:                                              ; preds = %179, %121
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %227, label %185

185:                                              ; preds = %180
  %186 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %187 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %186, i32 0, i32 2
  %188 = load %struct.sk_buff*, %struct.sk_buff** %187, align 8
  %189 = icmp ne %struct.sk_buff* %188, null
  br i1 %189, label %202, label %190

190:                                              ; preds = %185
  %191 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %192 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %193 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %192, i32 0, i32 2
  store %struct.sk_buff* %191, %struct.sk_buff** %193, align 8
  %194 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %195 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %194, i32 0, i32 2
  %196 = load %struct.sk_buff*, %struct.sk_buff** %195, align 8
  %197 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %198 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %17, align 4
  %201 = call i32 @skb_fill_page_desc(%struct.sk_buff* %196, i32 0, i32 %199, i32 0, i32 %200)
  br label %220

202:                                              ; preds = %185
  %203 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %204 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %203, i32 0, i32 2
  %205 = load %struct.sk_buff*, %struct.sk_buff** %204, align 8
  %206 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %207 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %206, i32 0, i32 2
  %208 = load %struct.sk_buff*, %struct.sk_buff** %207, align 8
  %209 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %213 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @skb_fill_page_desc(%struct.sk_buff* %205, i32 %211, i32 %214, i32 0, i32 %215)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %218 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %219 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %218, i32 0, i32 1
  store %struct.sk_buff* %217, %struct.sk_buff** %219, align 8
  br label %220

220:                                              ; preds = %202, %190
  %221 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %222 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %223 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %222, i32 0, i32 2
  %224 = load %struct.sk_buff*, %struct.sk_buff** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @e1000_consume_page(%struct.e1000_buffer* %221, %struct.sk_buff* %224, i32 %225)
  br label %344

227:                                              ; preds = %180
  %228 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %229 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %228, i32 0, i32 2
  %230 = load %struct.sk_buff*, %struct.sk_buff** %229, align 8
  %231 = icmp ne %struct.sk_buff* %230, null
  br i1 %231, label %232, label %259

232:                                              ; preds = %227
  %233 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %234 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %233, i32 0, i32 2
  %235 = load %struct.sk_buff*, %struct.sk_buff** %234, align 8
  %236 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %237 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %236, i32 0, i32 2
  %238 = load %struct.sk_buff*, %struct.sk_buff** %237, align 8
  %239 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %238)
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %243 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = call i32 @skb_fill_page_desc(%struct.sk_buff* %235, i32 %241, i32 %244, i32 0, i32 %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %248 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %249 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %248, i32 0, i32 1
  store %struct.sk_buff* %247, %struct.sk_buff** %249, align 8
  %250 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %251 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %250, i32 0, i32 2
  %252 = load %struct.sk_buff*, %struct.sk_buff** %251, align 8
  store %struct.sk_buff* %252, %struct.sk_buff** %23, align 8
  %253 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %254 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %253, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %254, align 8
  %255 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %257 = load i32, i32* %17, align 4
  %258 = call i32 @e1000_consume_page(%struct.e1000_buffer* %255, %struct.sk_buff* %256, i32 %257)
  br label %297

259:                                              ; preds = %227
  %260 = load i32, i32* %17, align 4
  %261 = load i32, i32* @copybreak, align 4
  %262 = icmp sle i32 %260, %261
  br i1 %262, label %263, label %285

263:                                              ; preds = %259
  %264 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %265 = call i32 @skb_tailroom(%struct.sk_buff* %264)
  %266 = load i32, i32* %17, align 4
  %267 = icmp sge i32 %265, %266
  br i1 %267, label %268, label %285

268:                                              ; preds = %263
  %269 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %270 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %273 = call i32* @kmap_atomic(i32 %271, i32 %272)
  store i32* %273, i32** %26, align 8
  %274 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %275 = call i32 @skb_tail_pointer(%struct.sk_buff* %274)
  %276 = load i32*, i32** %26, align 8
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @memcpy(i32 %275, i32* %276, i32 %277)
  %279 = load i32*, i32** %26, align 8
  %280 = load i32, i32* @KM_SKB_DATA_SOFTIRQ, align 4
  %281 = call i32 @kunmap_atomic(i32* %279, i32 %280)
  %282 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %283 = load i32, i32* %17, align 4
  %284 = call i32 @skb_put(%struct.sk_buff* %282, i32 %283)
  br label %296

285:                                              ; preds = %263, %259
  %286 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %287 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %288 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* %17, align 4
  %291 = call i32 @skb_fill_page_desc(%struct.sk_buff* %286, i32 0, i32 %289, i32 0, i32 %290)
  %292 = load %struct.e1000_buffer*, %struct.e1000_buffer** %14, align 8
  %293 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %294 = load i32, i32* %17, align 4
  %295 = call i32 @e1000_consume_page(%struct.e1000_buffer* %292, %struct.sk_buff* %293, i32 %294)
  br label %296

296:                                              ; preds = %285, %268
  br label %297

297:                                              ; preds = %296, %232
  br label %298

298:                                              ; preds = %297
  %299 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %300 = load i32, i32* %24, align 4
  %301 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %302 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = shl i32 %303, 24
  %305 = or i32 %300, %304
  %306 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %307 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @le16_to_cpu(i32 %308)
  %310 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %311 = call i32 @e1000_rx_checksum(%struct.e1000_adapter* %299, i32 %305, i32 %309, %struct.sk_buff* %310)
  %312 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %313 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %314 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %315, 4
  %317 = call i32 @pskb_trim(%struct.sk_buff* %312, i64 %316)
  %318 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %319 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i32, i32* %21, align 4
  %322 = zext i32 %321 to i64
  %323 = add nsw i64 %322, %320
  %324 = trunc i64 %323 to i32
  store i32 %324, i32* %21, align 4
  %325 = load i32, i32* %22, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %22, align 4
  %327 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %328 = load i32, i32* @ETH_HLEN, align 4
  %329 = call i32 @pskb_may_pull(%struct.sk_buff* %327, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %298
  %332 = load i32, i32* @drv, align 4
  %333 = call i32 @e_err(i32 %332, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %334 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %335 = call i32 @dev_kfree_skb(%struct.sk_buff* %334)
  br label %344

336:                                              ; preds = %298
  %337 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %338 = load i32, i32* %24, align 4
  %339 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %340 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %343 = call i32 @e1000_receive_skb(%struct.e1000_adapter* %337, i32 %338, i32 %341, %struct.sk_buff* %342)
  br label %344

344:                                              ; preds = %336, %331, %220, %176
  %345 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %12, align 8
  %346 = getelementptr inbounds %struct.e1000_rx_desc, %struct.e1000_rx_desc* %345, i32 0, i32 0
  store i32 0, i32* %346, align 4
  %347 = load i32, i32* %19, align 4
  %348 = load i32, i32* @E1000_RX_BUFFER_WRITE, align 4
  %349 = icmp sge i32 %347, %348
  %350 = zext i1 %349 to i32
  %351 = call i64 @unlikely(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %344
  %354 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %355 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %354, i32 0, i32 2
  %356 = load i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)** %355, align 8
  %357 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %358 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %359 = load i32, i32* %19, align 4
  %360 = call i32 %356(%struct.e1000_adapter* %357, %struct.e1000_rx_ring* %358, i32 %359)
  store i32 0, i32* %19, align 4
  br label %361

361:                                              ; preds = %353, %344
  %362 = load %struct.e1000_rx_desc*, %struct.e1000_rx_desc** %13, align 8
  store %struct.e1000_rx_desc* %362, %struct.e1000_rx_desc** %12, align 8
  %363 = load %struct.e1000_buffer*, %struct.e1000_buffer** %15, align 8
  store %struct.e1000_buffer* %363, %struct.e1000_buffer** %14, align 8
  br label %47

364:                                              ; preds = %59, %47
  %365 = load i32, i32* %18, align 4
  %366 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %367 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %366, i32 0, i32 0
  store i32 %365, i32* %367, align 8
  %368 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %369 = call i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring* %368)
  store i32 %369, i32* %19, align 4
  %370 = load i32, i32* %19, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %380

372:                                              ; preds = %364
  %373 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %374 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %373, i32 0, i32 2
  %375 = load i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)*, i32 (%struct.e1000_adapter*, %struct.e1000_rx_ring*, i32)** %374, align 8
  %376 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %377 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %6, align 8
  %378 = load i32, i32* %19, align 4
  %379 = call i32 %375(%struct.e1000_adapter* %376, %struct.e1000_rx_ring* %377, i32 %378)
  br label %380

380:                                              ; preds = %372, %364
  %381 = load i32, i32* %22, align 4
  %382 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %383 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = add i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load i32, i32* %21, align 4
  %387 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %388 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = add i32 %389, %386
  store i32 %390, i32* %388, align 4
  %391 = load i32, i32* %21, align 4
  %392 = load %struct.net_device*, %struct.net_device** %10, align 8
  %393 = getelementptr inbounds %struct.net_device, %struct.net_device* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = add i32 %395, %391
  store i32 %396, i32* %394, align 4
  %397 = load i32, i32* %22, align 4
  %398 = load %struct.net_device*, %struct.net_device** %10, align 8
  %399 = getelementptr inbounds %struct.net_device, %struct.net_device* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, %397
  store i32 %402, i32* %400, align 4
  %403 = load i32, i32* %20, align 4
  ret i32 %403
}

declare dso_local %struct.e1000_rx_desc* @E1000_RX_DESC(%struct.e1000_rx_ring* byval(%struct.e1000_rx_ring) align 8, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @prefetch(%struct.e1000_rx_desc*) #1

declare dso_local i32 @dma_unmap_page(i32*, i64, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @TBI_ACCEPT(%struct.e1000_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @e1000_tbi_adjust_stats(%struct.e1000_hw*, i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @e1000_consume_page(%struct.e1000_buffer*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @e1000_rx_checksum(%struct.e1000_adapter*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @e1000_receive_skb(%struct.e1000_adapter*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @E1000_DESC_UNUSED(%struct.e1000_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
