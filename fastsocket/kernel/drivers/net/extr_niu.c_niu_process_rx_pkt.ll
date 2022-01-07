; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_process_rx_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_process_rx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.niu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64, i32, i32)* }
%struct.rx_ring_info = type { i32, i64*, i64, i32, i32, i32, i32, i32* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.page = type { i64, i32* }

@RX_SKB_ALLOC_SIZE = common dso_local global i32 0, align 4
@RCR_ENTRY_L2_LEN = common dso_local global i64 0, align 8
@RCR_ENTRY_L2_LEN_SHIFT = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@RCR_ENTRY_PKT_BUF_ADDR = common dso_local global i64 0, align 8
@RCR_ENTRY_PKT_BUF_ADDR_SHIFT = common dso_local global i64 0, align 8
@RCR_ENTRY_PKTBUFSZ = common dso_local global i64 0, align 8
@RCR_ENTRY_PKTBUFSZ_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@RCR_ENTRY_PKT_TYPE_SHIFT = common dso_local global i64 0, align 8
@RCR_PKT_TYPE_TCP = common dso_local global i32 0, align 4
@RCR_PKT_TYPE_UDP = common dso_local global i32 0, align 4
@RCR_ENTRY_NOPORT = common dso_local global i64 0, align 8
@RCR_ENTRY_ERROR = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@RCR_ENTRY_MULTI = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, %struct.niu*, %struct.rx_ring_info*)* @niu_process_rx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_process_rx_pkt(%struct.napi_struct* %0, %struct.niu* %1, %struct.rx_ring_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.niu*, align 8
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store %struct.niu* %1, %struct.niu** %6, align 8
  store %struct.rx_ring_info* %2, %struct.rx_ring_info** %7, align 8
  %20 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.niu*, %struct.niu** %6, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RX_SKB_ALLOC_SIZE, align 4
  %27 = call %struct.sk_buff* @netdev_alloc_skb(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.niu*, %struct.niu** %6, align 8
  %36 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %37 = call i32 @niu_rx_pkt_ignore(%struct.niu* %35, %struct.rx_ring_info* %36)
  store i32 %37, i32* %4, align 4
  br label %226

38:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %186
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %43 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @le64_to_cpup(i32* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @RCR_ENTRY_L2_LEN, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @RCR_ENTRY_L2_LEN_SHIFT, align 8
  %53 = lshr i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i64, i64* @ETH_FCS_LEN, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* @RCR_ENTRY_PKT_BUF_ADDR, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @RCR_ENTRY_PKT_BUF_ADDR_SHIFT, align 8
  %64 = shl i64 %62, %63
  store i64 %64, i64* %16, align 8
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call %struct.page* @niu_find_rxpage(%struct.rx_ring_info* %65, i64 %66, %struct.page*** %13)
  store %struct.page* %67, %struct.page** %12, align 8
  %68 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %69 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @RCR_ENTRY_PKTBUFSZ, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* @RCR_ENTRY_PKTBUFSZ_SHIFT, align 8
  %75 = lshr i64 %73, %74
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* @PAGE_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = and i64 %78, %80
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %14, align 8
  store i64 %82, i64* %15, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %117

85:                                               ; preds = %39
  %86 = load i64, i64* %18, align 8
  %87 = add i64 %86, 2
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %15, align 8
  %89 = sub i64 %88, 2
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* @RCR_ENTRY_PKT_TYPE_SHIFT, align 8
  %92 = lshr i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @RCR_PKT_TYPE_TCP, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @RCR_PKT_TYPE_UDP, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97, %85
  %102 = load i64, i64* %17, align 8
  %103 = load i64, i64* @RCR_ENTRY_NOPORT, align 8
  %104 = load i64, i64* @RCR_ENTRY_ERROR, align 8
  %105 = or i64 %103, %104
  %106 = and i64 %102, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  br label %116

112:                                              ; preds = %101, %97
  %113 = load i32, i32* @CHECKSUM_NONE, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %39
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* @RCR_ENTRY_MULTI, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %15, align 8
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @niu_rx_skb_append(%struct.sk_buff* %130, %struct.page* %131, i64 %132, i64 %133)
  %135 = load %struct.page*, %struct.page** %12, align 8
  %136 = getelementptr inbounds %struct.page, %struct.page* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %139 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = load i64, i64* %14, align 8
  %143 = sub i64 %141, %142
  %144 = load i64, i64* %16, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %129
  %147 = load %struct.page*, %struct.page** %12, align 8
  %148 = getelementptr inbounds %struct.page, %struct.page* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = bitcast i32* %149 to %struct.page*
  %151 = load %struct.page**, %struct.page*** %13, align 8
  store %struct.page* %150, %struct.page** %151, align 8
  %152 = load %struct.niu*, %struct.niu** %6, align 8
  %153 = getelementptr inbounds %struct.niu, %struct.niu* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %155, align 8
  %157 = load %struct.niu*, %struct.niu** %6, align 8
  %158 = getelementptr inbounds %struct.niu, %struct.niu* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.page*, %struct.page** %12, align 8
  %161 = getelementptr inbounds %struct.page, %struct.page* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %165 = call i32 %156(i32 %159, i64 %162, i32 %163, i32 %164)
  %166 = load %struct.page*, %struct.page** %12, align 8
  %167 = getelementptr inbounds %struct.page, %struct.page* %166, i32 0, i32 0
  store i64 0, i64* %167, align 8
  %168 = load %struct.page*, %struct.page** %12, align 8
  %169 = getelementptr inbounds %struct.page, %struct.page* %168, i32 0, i32 1
  store i32* null, i32** %169, align 8
  %170 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %171 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  br label %177

174:                                              ; preds = %129
  %175 = load %struct.page*, %struct.page** %12, align 8
  %176 = call i32 @get_page(%struct.page* %175)
  br label %177

177:                                              ; preds = %174, %146
  %178 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @NEXT_RCR(%struct.rx_ring_info* %178, i32 %179)
  store i32 %180, i32* %8, align 4
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* @RCR_ENTRY_MULTI, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  br label %187

186:                                              ; preds = %177
  br label %39

187:                                              ; preds = %185
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %190 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %192 = load i32, i32* @NET_IP_ALIGN, align 4
  %193 = call i32 @skb_reserve(%struct.sk_buff* %191, i32 %192)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %197 = call i32 @min(i32 %195, i32 %196)
  %198 = call i32 @__pskb_pull_tail(%struct.sk_buff* %194, i32 %197)
  %199 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %200 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %207 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %211 = load %struct.niu*, %struct.niu** %6, align 8
  %212 = getelementptr inbounds %struct.niu, %struct.niu* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @eth_type_trans(%struct.sk_buff* %210, i32 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %218 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %219 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @skb_record_rx_queue(%struct.sk_buff* %217, i32 %220)
  %222 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %224 = call i32 @napi_gro_receive(%struct.napi_struct* %222, %struct.sk_buff* %223)
  %225 = load i32, i32* %11, align 4
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %187, %34
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @niu_rx_pkt_ignore(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i64 @le64_to_cpup(i32*) #1

declare dso_local %struct.page* @niu_find_rxpage(%struct.rx_ring_info*, i64, %struct.page***) #1

declare dso_local i32 @niu_rx_skb_append(%struct.sk_buff*, %struct.page*, i64, i64) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @NEXT_RCR(%struct.rx_ring_info*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
