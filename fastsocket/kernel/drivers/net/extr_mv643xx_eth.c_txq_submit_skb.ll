; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_submit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_txq_submit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_queue = type { i64, i64, i32, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i32, i64 }
%struct.sk_buff = type { i64, i64, i32, i64 }
%struct.mv643xx_eth_private = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TX_FIRST_DESC = common dso_local global i32 0, align 4
@GEN_CRC = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@MAC_HDR_EXTRA_4_BYTES = common dso_local global i32 0, align 4
@MAC_HDR_EXTRA_8_BYTES = common dso_local global i32 0, align 4
@GEN_TCP_UDP_CHECKSUM = common dso_local global i32 0, align 4
@GEN_IP_V4_CHECKSUM = common dso_local global i32 0, align 4
@TX_IHL_SHIFT = common dso_local global i32 0, align 4
@UDP_FRAME = common dso_local global i32 0, align 4
@ZERO_PADDING = common dso_local global i32 0, align 4
@TX_LAST_DESC = common dso_local global i32 0, align 4
@TX_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tx_queue*, %struct.sk_buff*)* @txq_submit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txq_submit_skb(%struct.tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mv643xx_eth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tx_queue* %0, %struct.tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %15 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %14)
  store %struct.mv643xx_eth_private* %15, %struct.mv643xx_eth_private** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff* %16)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @TX_FIRST_DESC, align 4
  %21 = load i32, i32* @GEN_CRC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %127

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @ETH_P_IP, align 4
  %35 = call i64 @htons(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @ETH_P_8021Q, align 4
  %42 = call i64 @htons(i32 %41)
  %43 = icmp ne i64 %40, %42
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ false, %30 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %48)
  %50 = bitcast %struct.TYPE_12__* %49 to i8*
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %50 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i32, i32* @ETH_HLEN, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = and i32 %62, -13
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %44
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i64 @skb_checksum_help(%struct.sk_buff* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %128

71:                                               ; preds = %66
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  store i32 1, i32* %3, align 4
  br label %222

74:                                               ; preds = %44
  %75 = load i32, i32* %13, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @MAC_HDR_EXTRA_4_BYTES, align 4
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %83, 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MAC_HDR_EXTRA_8_BYTES, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @GEN_TCP_UDP_CHECKSUM, align 4
  %92 = load i32, i32* @GEN_IP_V4_CHECKSUM, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @TX_IHL_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = or i32 %93, %99
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %124 [
    i32 128, label %107
    i32 129, label %117
  ]

107:                                              ; preds = %90
  %108 = load i32, i32* @UDP_FRAME, align 4
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call %struct.TYPE_9__* @udp_hdr(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @sum16_as_be(i32 %114)
  %116 = call i64 @ntohs(i32 %115)
  store i64 %116, i64* %11, align 8
  br label %126

117:                                              ; preds = %90
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = call %struct.TYPE_10__* @tcp_hdr(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @sum16_as_be(i32 %121)
  %123 = call i64 @ntohs(i32 %122)
  store i64 %123, i64* %11, align 8
  br label %126

124:                                              ; preds = %90
  %125 = call i32 (...) @BUG()
  br label %126

126:                                              ; preds = %124, %117, %107
  br label %133

127:                                              ; preds = %2
  br label %128

128:                                              ; preds = %127, %70
  %129 = load i32, i32* @TX_IHL_SHIFT, align 4
  %130 = shl i32 5, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %128, %126
  %134 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %135 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = trunc i64 %136 to i32
  store i32 %138, i32* %8, align 4
  %139 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %140 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %143 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %141, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %148 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %133
  %150 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %151 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %150, i32 0, i32 5
  %152 = load %struct.tx_desc*, %struct.tx_desc** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %152, i64 %154
  store %struct.tx_desc* %155, %struct.tx_desc** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call i32 @txq_submit_frag_skb(%struct.tx_queue* %159, %struct.sk_buff* %160)
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call i32 @skb_headlen(%struct.sk_buff* %162)
  store i32 %163, i32* %12, align 4
  br label %175

164:                                              ; preds = %149
  %165 = load i32, i32* @ZERO_PADDING, align 4
  %166 = load i32, i32* @TX_LAST_DESC, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @TX_ENABLE_INTERRUPT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %12, align 4
  br label %175

175:                                              ; preds = %164, %158
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %178 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %181 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %183 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %182, i32 0, i32 1
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @DMA_TO_DEVICE, align 4
  %193 = call i32 @dma_map_single(i32 %187, i64 %190, i32 %191, i32 %192)
  %194 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %195 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %197 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %196, i32 0, i32 4
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = call i32 @__skb_queue_tail(i32* %197, %struct.sk_buff* %198)
  %200 = call i32 (...) @wmb()
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.tx_desc*, %struct.tx_desc** %9, align 8
  %203 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %205 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 1, %206
  %208 = xor i32 %207, -1
  %209 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %6, align 8
  %210 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = call i32 (...) @wmb()
  %214 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %215 = call i32 @txq_enable(%struct.tx_queue* %214)
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  %218 = load %struct.tx_queue*, %struct.tx_queue** %4, align 8
  %219 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %175, %71
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local %struct.TYPE_11__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @sum16_as_be(i32) #1

declare dso_local %struct.TYPE_9__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @txq_submit_frag_skb(%struct.tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @txq_enable(%struct.tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
