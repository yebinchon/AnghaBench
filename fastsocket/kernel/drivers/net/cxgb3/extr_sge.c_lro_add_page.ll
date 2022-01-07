; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_lro_add_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_lro_add_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32, i32, %struct.cpl_rx_pkt*, i32*, i32 }
%struct.cpl_rx_pkt = type { i64, i32, i32, i64 }
%struct.sge_fl = type { i64, i32, %struct.TYPE_5__, i64, i32, %struct.rx_sw_desc* }
%struct.TYPE_5__ = type { i64 }
%struct.rx_sw_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.cpl_rx_pkt*, i32, i32* }
%struct.port_info = type { i32, i64, %struct.vlan_group* }
%struct.vlan_group = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.skb_frag_struct* }

@dma_addr = common dso_local global i32 0, align 4
@SGE_PG_RSVD = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@T3_RX_CSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SGE_PSTAT_RX_CSUM_GOOD = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_qset*, %struct.sge_fl*, i32, i32)* @lro_add_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lro_add_page(%struct.adapter* %0, %struct.sge_qset* %1, %struct.sge_fl* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_qset*, align 8
  %8 = alloca %struct.sge_fl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_sw_desc*, align 8
  %12 = alloca %struct.port_info*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.cpl_rx_pkt*, align 8
  %15 = alloca %struct.skb_frag_struct*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vlan_group*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %7, align 8
  store %struct.sge_fl* %2, %struct.sge_fl** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %20 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %19, i32 0, i32 5
  %21 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %20, align 8
  %22 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %23 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %21, i64 %24
  store %struct.rx_sw_desc* %25, %struct.rx_sw_desc** %11, align 8
  %26 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %27 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.port_info* @netdev_priv(i32 %28)
  store %struct.port_info* %29, %struct.port_info** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %5
  %35 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %36 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %35, i32 0, i32 1
  %37 = call %struct.sk_buff* @napi_get_frags(i32* %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %43 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %34, %5
  %45 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %46 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %53 = load i32, i32* @dma_addr, align 4
  %54 = call i32 @pci_unmap_addr(%struct.rx_sw_desc* %52, i32 %53)
  %55 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %56 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SGE_PG_RSVD, align 8
  %59 = sub nsw i64 %57, %58
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @pci_dma_sync_single_for_cpu(i32 %51, i32 %54, i64 %59, i32 %60)
  %62 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %63 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %69 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %44
  %75 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %76 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %80 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %74
  %85 = load %struct.adapter*, %struct.adapter** %6, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %89 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sge_fl*, %struct.sge_fl** %8, align 8
  %93 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %96 = call i32 @pci_unmap_page(i32 %87, i32 %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %84, %74, %44
  %98 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %102 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @put_page(i64 %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %110 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %100
  br label %261

112:                                              ; preds = %97
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %113)
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %115, align 8
  store %struct.skb_frag_struct* %116, %struct.skb_frag_struct** %15, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %118 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %164, label %123

123:                                              ; preds = %112
  store i32 26, i32* %17, align 4
  %124 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %125 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %126, align 8
  %128 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %127, i64 2
  %129 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %130 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %129, i32 0, i32 2
  store %struct.cpl_rx_pkt* %128, %struct.cpl_rx_pkt** %130, align 8
  store %struct.cpl_rx_pkt* %128, %struct.cpl_rx_pkt** %14, align 8
  %131 = load %struct.port_info*, %struct.port_info** %12, align 8
  %132 = getelementptr inbounds %struct.port_info, %struct.port_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @T3_RX_CSUM, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %123
  %138 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %139 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %137
  %143 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %144 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @htons(i32 65535)
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %142
  %149 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %153 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @SGE_PSTAT_RX_CSUM_GOOD, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %163

159:                                              ; preds = %142, %137, %123
  %160 = load i32, i32* @CHECKSUM_NONE, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %159, %148
  br label %168

164:                                              ; preds = %112
  %165 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %166 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %165, i32 0, i32 2
  %167 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %166, align 8
  store %struct.cpl_rx_pkt* %167, %struct.cpl_rx_pkt** %14, align 8
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %9, align 4
  %171 = sub nsw i32 %170, %169
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %15, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %173, i64 %174
  store %struct.skb_frag_struct* %175, %struct.skb_frag_struct** %15, align 8
  %176 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %15, align 8
  %177 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %178 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @__skb_frag_set_page(%struct.skb_frag_struct* %176, i64 %180)
  %182 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %11, align 8
  %183 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %185, %186
  %188 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %15, align 8
  %189 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %15, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @skb_frag_size_set(%struct.skb_frag_struct* %190, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %198
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %209 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %168
  br label %261

216:                                              ; preds = %168
  %217 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %218 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %219 = load %struct.adapter*, %struct.adapter** %6, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load %struct.sge_qset*, %struct.sge_qset** %221, align 8
  %223 = load %struct.port_info*, %struct.port_info** %12, align 8
  %224 = getelementptr inbounds %struct.port_info, %struct.port_info* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %222, i64 %225
  %227 = ptrtoint %struct.sge_qset* %218 to i64
  %228 = ptrtoint %struct.sge_qset* %226 to i64
  %229 = sub i64 %227, %228
  %230 = sdiv exact i64 %229, 32
  %231 = trunc i64 %230 to i32
  %232 = call i32 @skb_record_rx_queue(%struct.sk_buff* %217, i32 %231)
  %233 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %234 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @unlikely(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %216
  %239 = load %struct.port_info*, %struct.port_info** %12, align 8
  %240 = getelementptr inbounds %struct.port_info, %struct.port_info* %239, i32 0, i32 2
  %241 = load %struct.vlan_group*, %struct.vlan_group** %240, align 8
  store %struct.vlan_group* %241, %struct.vlan_group** %18, align 8
  %242 = load %struct.vlan_group*, %struct.vlan_group** %18, align 8
  %243 = icmp ne %struct.vlan_group* %242, null
  %244 = zext i1 %243 to i32
  %245 = call i64 @likely(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %238
  %248 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %249 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %248, i32 0, i32 1
  %250 = load %struct.vlan_group*, %struct.vlan_group** %18, align 8
  %251 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %14, align 8
  %252 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @ntohs(i32 %253)
  %255 = call i32 @vlan_gro_frags(i32* %249, %struct.vlan_group* %250, i32 %254)
  br label %261

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256, %216
  %258 = load %struct.sge_qset*, %struct.sge_qset** %7, align 8
  %259 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %258, i32 0, i32 1
  %260 = call i32 @napi_gro_frags(i32* %259)
  br label %261

261:                                              ; preds = %257, %247, %215, %111
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i64, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.rx_sw_desc*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i64) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__skb_frag_set_page(%struct.skb_frag_struct*, i64) #1

declare dso_local i32 @skb_frag_size_set(%struct.skb_frag_struct*, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlan_gro_frags(i32*, %struct.vlan_group*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @napi_gro_frags(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
