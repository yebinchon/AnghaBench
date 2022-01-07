; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_clean_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ixgbe_adv_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ixgbevf_q_vector = type { %struct.TYPE_11__, %struct.ixgbevf_adapter* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.ixgbevf_adapter = type { %struct.TYPE_10__*, i32, %struct.pci_dev* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ixgbevf_ring = type { i32, i32, i32, i32, %struct.ixgbevf_rx_buffer*, i32, i32 }
%struct.ixgbevf_rx_buffer = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32, i64, %struct.sk_buff*, %union.ixgbe_adv_rx_desc* }
%struct.TYPE_12__ = type { %struct.sk_buff* }

@IXGBE_RXD_STAT_DD = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global %union.ixgbe_adv_rx_desc* null, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_EOP = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_FRAME_ERR_MASK = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_LB = common dso_local global i32 0, align 4
@IXGBEVF_RX_BUFFER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_q_vector*, %struct.ixgbevf_ring*, i32)* @ixgbevf_clean_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_clean_rx_irq(%struct.ixgbevf_q_vector* %0, %struct.ixgbevf_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbevf_q_vector*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %10 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %11 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %12 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32, align 4
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %23 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %22, i32 0, i32 1
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %23, align 8
  store %struct.ixgbevf_adapter* %24, %struct.ixgbevf_adapter** %7, align 8
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 2
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  store %struct.pci_dev* %27, %struct.pci_dev** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %28 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %29 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %31, i32 %32)
  store %union.ixgbe_adv_rx_desc* %33, %union.ixgbe_adv_rx_desc** %9, align 8
  %34 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %35 = bitcast %union.ixgbe_adv_rx_desc* %34 to %struct.TYPE_8__*
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @le32_to_cpu(i64 %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %40, i32 0, i32 4
  %42 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %42, i64 %44
  store %struct.ixgbevf_rx_buffer* %45, %struct.ixgbevf_rx_buffer** %11, align 8
  br label %46

46:                                               ; preds = %226, %3
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @IXGBE_RXD_STAT_DD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %240

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %240

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %6, align 4
  %58 = call i32 (...) @rmb()
  %59 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %60 = bitcast %union.ixgbe_adv_rx_desc* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le16_to_cpu(i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %11, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %66, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %13, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 3
  %70 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %69, align 8
  %71 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** @NET_IP_ALIGN, align 8
  %72 = ptrtoint %union.ixgbe_adv_rx_desc* %70 to i64
  %73 = ptrtoint %union.ixgbe_adv_rx_desc* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 16
  %76 = inttoptr i64 %75 to %union.ixgbe_adv_rx_desc*
  %77 = call i32 @prefetch(%union.ixgbe_adv_rx_desc* %76)
  %78 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %11, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %78, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %79, align 8
  %80 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %11, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %55
  %85 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %11, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %94 = call i32 @dma_unmap_single(i32* %86, i64 %89, i32 %92, i32 %93)
  %95 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %11, align 8
  %96 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @skb_put(%struct.sk_buff* %97, i32 %98)
  br label %100

100:                                              ; preds = %84, %55
  %101 = load i32, i32* %14, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %105 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %100
  %110 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring* %110, i32 %111)
  store %union.ixgbe_adv_rx_desc* %112, %union.ixgbe_adv_rx_desc** %10, align 8
  %113 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  %114 = call i32 @prefetch(%union.ixgbe_adv_rx_desc* %113)
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  %117 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %117, i32 0, i32 4
  %119 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %119, i64 %121
  store %struct.ixgbevf_rx_buffer* %122, %struct.ixgbevf_rx_buffer** %12, align 8
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @IXGBE_RXD_STAT_EOP, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %109
  %128 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %12, align 8
  %129 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %128, i32 0, i32 0
  %130 = load %struct.sk_buff*, %struct.sk_buff** %129, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 2
  store %struct.sk_buff* %130, %struct.sk_buff** %132, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 2
  %136 = load %struct.sk_buff*, %struct.sk_buff** %135, align 8
  %137 = call %struct.TYPE_12__* @IXGBE_CB(%struct.sk_buff* %136)
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store %struct.sk_buff* %133, %struct.sk_buff** %138, align 8
  %139 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %140 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %213

143:                                              ; preds = %109
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = call %struct.TYPE_12__* @IXGBE_CB(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.sk_buff*, %struct.sk_buff** %146, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %158, %149
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %151, %struct.sk_buff** %20, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %153 = call %struct.TYPE_12__* @IXGBE_CB(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load %struct.sk_buff*, %struct.sk_buff** %154, align 8
  store %struct.sk_buff* %155, %struct.sk_buff** %13, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %157 = call i32 @dev_kfree_skb(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %150
  %159 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %160 = icmp ne %struct.sk_buff* %159, null
  br i1 %160, label %150, label %161

161:                                              ; preds = %158
  br label %213

162:                                              ; preds = %143
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* @IXGBE_RXDADV_ERR_FRAME_ERR_MASK, align 4
  %165 = and i32 %163, %164
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %170 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %169)
  br label %213

171:                                              ; preds = %162
  %172 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %173 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %176 = call i32 @ixgbevf_rx_checksum(%struct.ixgbevf_adapter* %172, %struct.ixgbevf_ring* %173, i32 %174, %struct.sk_buff* %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = zext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %19, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @IXGBE_RXD_STAT_LB, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %171
  %191 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %192 = call i32 @skb_headlen(%struct.sk_buff* %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = icmp slt i32 %193, 14
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %197 = load i32, i32* %21, align 4
  %198 = call i32 @skb_push(%struct.sk_buff* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %190
  br label %200

200:                                              ; preds = %199, %171
  %201 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %202 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %203 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @eth_type_trans(%struct.sk_buff* %201, i32 %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %212 = call i32 @ixgbevf_receive_skb(%struct.ixgbevf_q_vector* %208, %struct.sk_buff* %209, i32 %210, %union.ixgbe_adv_rx_desc* %211)
  br label %213

213:                                              ; preds = %200, %168, %161, %127
  %214 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %215 = bitcast %union.ixgbe_adv_rx_desc* %214 to %struct.TYPE_8__*
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* @IXGBEVF_RX_BUFFER_WRITE, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %213
  %222 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %223 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter* %222, %struct.ixgbevf_ring* %223, i32 %224)
  store i32 0, i32* %17, align 4
  br label %226

226:                                              ; preds = %221, %213
  %227 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %10, align 8
  store %union.ixgbe_adv_rx_desc* %227, %union.ixgbe_adv_rx_desc** %9, align 8
  %228 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %229 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %228, i32 0, i32 4
  %230 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %229, align 8
  %231 = load i32, i32* %14, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %230, i64 %232
  store %struct.ixgbevf_rx_buffer* %233, %struct.ixgbevf_rx_buffer** %11, align 8
  %234 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %235 = bitcast %union.ixgbe_adv_rx_desc* %234 to %struct.TYPE_8__*
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @le32_to_cpu(i64 %238)
  store i32 %239, i32* %16, align 4
  br label %46

240:                                              ; preds = %54, %46
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %243 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %245 = call i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring* %244)
  store i32 %245, i32* %17, align 4
  %246 = load i32, i32* %17, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %250 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %251 = load i32, i32* %17, align 4
  %252 = call i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter* %249, %struct.ixgbevf_ring* %250, i32 %251)
  br label %253

253:                                              ; preds = %248, %240
  %254 = load i32, i32* %19, align 4
  %255 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %256 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = add i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* %18, align 4
  %260 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %261 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, %259
  store i32 %263, i32* %261, align 4
  %264 = load i32, i32* %18, align 4
  %265 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %266 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %265, i32 0, i32 0
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, %264
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %19, align 4
  %273 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %274 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %278, %272
  store i32 %279, i32* %277, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %282 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = add i32 %284, %280
  store i32 %285, i32* %283, align 8
  %286 = load i32, i32* %18, align 4
  %287 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %4, align 8
  %288 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = add i32 %290, %286
  store i32 %291, i32* %289, align 4
  %292 = load i32, i32* %6, align 4
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  ret i32 %296
}

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBEVF_RX_DESC(%struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @prefetch(%union.ixgbe_adv_rx_desc*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_12__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_rx_checksum(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbevf_receive_skb(%struct.ixgbevf_q_vector*, %struct.sk_buff*, i32, %union.ixgbe_adv_rx_desc*) #1

declare dso_local i32 @ixgbevf_alloc_rx_buffers(%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*, i32) #1

declare dso_local i32 @IXGBE_DESC_UNUSED(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
