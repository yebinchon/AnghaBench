; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_rx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2_rx_ring_info = type { i64, i64, %struct.bnx2_sw_pg* }
%struct.bnx2_sw_pg = type { i32* }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@BNX2_RX_OFFSET = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i32, i32, i32, i32)* @bnx2_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_rx_skb(%struct.bnx2* %0, %struct.bnx2_rx_ring_info* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2*, align 8
  %10 = alloca %struct.bnx2_rx_ring_info*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.bnx2_sw_pg*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_5__*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %9, align 8
  store %struct.bnx2_rx_ring_info* %1, %struct.bnx2_rx_ring_info** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 65535
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %17, align 8
  %33 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %34 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %35 = load i64, i64* %17, align 8
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i32 @bnx2_alloc_rx_skb(%struct.bnx2* %33, %struct.bnx2_rx_ring_info* %34, i64 %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %7
  %42 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %43 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = load i32, i32* %15, align 4
  %46 = ashr i32 %45, 16
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %17, align 8
  %49 = call i32 @bnx2_reuse_rx_skb(%struct.bnx2* %42, %struct.bnx2_rx_ring_info* %43, %struct.sk_buff* %44, i64 %47, i64 %48)
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = add i32 %53, 4
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub i32 %55, %56
  %58 = call i32 @PAGE_ALIGN(i32 %57)
  %59 = load i32, i32* @PAGE_SHIFT, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %19, align 4
  %61 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %62 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %61, %struct.bnx2_rx_ring_info* %62, %struct.sk_buff* null, i32 %63)
  br label %65

65:                                               ; preds = %52, %41
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %262

67:                                               ; preds = %7
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = load i32, i32* @BNX2_RX_OFFSET, align 4
  %70 = call i32 @skb_reserve(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %72 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %77 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32* %74, i32 %75, i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @skb_put(%struct.sk_buff* %84, i32 %85)
  store i32 0, i32* %8, align 4
  br label %262

87:                                               ; preds = %67
  %88 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %89 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %25, align 8
  %91 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %92 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %26, align 8
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 4
  %96 = load i32, i32* %13, align 4
  %97 = sub i32 %95, %96
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %22, align 4
  %99 = call i32 @PAGE_ALIGN(i32 %98)
  %100 = load i32, i32* @PAGE_SHIFT, align 4
  %101 = ashr i32 %99, %100
  store i32 %101, i32* %23, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @skb_put(%struct.sk_buff* %102, i32 %103)
  store i32 0, i32* %20, align 4
  br label %105

105:                                              ; preds = %251, %87
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %23, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %254

109:                                              ; preds = %105
  %110 = load i32, i32* %22, align 4
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @min(i32 %110, i32 %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ule i32 %114, 4
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %167

119:                                              ; preds = %109
  %120 = load i32, i32* %21, align 4
  %121 = sub i32 4, %120
  store i32 %121, i32* %28, align 4
  %122 = load i64, i64* %25, align 8
  %123 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %124 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %26, align 8
  %126 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %127 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %126, i32 0, i32 1
  store i64 %125, i64* %127, align 8
  %128 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %129 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %20, align 4
  %132 = sub i32 %130, %131
  %133 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %128, %struct.bnx2_rx_ring_info* %129, %struct.sk_buff* null, i32 %132)
  %134 = load i32, i32* %28, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %20, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %119
  %142 = load i32, i32* %28, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %166

147:                                              ; preds = %119
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* %20, align 4
  %153 = sub i32 %152, 1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %154
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %29, align 8
  %156 = load i32, i32* %28, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sub i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %28, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %147, %141
  store i32 0, i32* %8, align 4
  br label %262

167:                                              ; preds = %109
  %168 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %169 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %168, i32 0, i32 2
  %170 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %169, align 8
  %171 = load i64, i64* %25, align 8
  %172 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %170, i64 %171
  store %struct.bnx2_sw_pg* %172, %struct.bnx2_sw_pg** %24, align 8
  %173 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %24, align 8
  %174 = load i32, i32* @mapping, align 4
  %175 = call i32 @pci_unmap_addr(%struct.bnx2_sw_pg* %173, i32 %174)
  store i32 %175, i32* %27, align 4
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %23, align 4
  %178 = sub i32 %177, 1
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %167
  %181 = load i32, i32* %21, align 4
  %182 = sub i32 %181, 4
  store i32 %182, i32* %21, align 4
  br label %183

183:                                              ; preds = %180, %167
  %184 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %24, align 8
  %187 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %21, align 4
  %190 = call i32 @skb_fill_page_desc(%struct.sk_buff* %184, i32 %185, i32* %188, i32 0, i32 %189)
  %191 = load %struct.bnx2_sw_pg*, %struct.bnx2_sw_pg** %24, align 8
  %192 = getelementptr inbounds %struct.bnx2_sw_pg, %struct.bnx2_sw_pg* %191, i32 0, i32 0
  store i32* null, i32** %192, align 8
  %193 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %194 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %195 = load i64, i64* %26, align 8
  %196 = call i64 @BNX2_RX_PG_RING_IDX(i64 %195)
  %197 = load i32, i32* @GFP_ATOMIC, align 4
  %198 = call i32 @bnx2_alloc_rx_page(%struct.bnx2* %193, %struct.bnx2_rx_ring_info* %194, i64 %196, i32 %197)
  store i32 %198, i32* %16, align 4
  %199 = load i32, i32* %16, align 4
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %183
  %203 = load i64, i64* %25, align 8
  %204 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %205 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load i64, i64* %26, align 8
  %207 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %208 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %207, i32 0, i32 1
  store i64 %206, i64* %208, align 8
  %209 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %210 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %20, align 4
  %214 = sub i32 %212, %213
  %215 = call i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2* %209, %struct.bnx2_rx_ring_info* %210, %struct.sk_buff* %211, i32 %214)
  %216 = load i32, i32* %16, align 4
  store i32 %216, i32* %8, align 4
  br label %262

217:                                              ; preds = %183
  %218 = load %struct.bnx2*, %struct.bnx2** %9, align 8
  %219 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %218, i32 0, i32 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %27, align 4
  %223 = load i64, i64* @PAGE_SIZE, align 8
  %224 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %225 = call i32 @dma_unmap_page(i32* %221, i32 %222, i64 %223, i32 %224)
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %22, align 4
  %228 = sub i32 %227, %226
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = add i32 %232, %229
  store i32 %233, i32* %231, align 4
  %234 = load i64, i64* @PAGE_SIZE, align 8
  %235 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %236 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = add i32 %244, %241
  store i32 %245, i32* %243, align 4
  %246 = load i64, i64* %26, align 8
  %247 = call i64 @BNX2_NEXT_RX_BD(i64 %246)
  store i64 %247, i64* %26, align 8
  %248 = load i64, i64* %25, align 8
  %249 = call i64 @BNX2_NEXT_RX_BD(i64 %248)
  %250 = call i64 @BNX2_RX_PG_RING_IDX(i64 %249)
  store i64 %250, i64* %25, align 8
  br label %251

251:                                              ; preds = %217
  %252 = load i32, i32* %20, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %20, align 4
  br label %105

254:                                              ; preds = %105
  %255 = load i64, i64* %26, align 8
  %256 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %257 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load i64, i64* %25, align 8
  %259 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %10, align 8
  %260 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  br label %261

261:                                              ; preds = %254
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %261, %202, %166, %83, %65
  %263 = load i32, i32* %8, align 4
  ret i32 %263
}

declare dso_local i32 @bnx2_alloc_rx_skb(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bnx2_reuse_rx_skb(%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i64, i64) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @bnx2_reuse_rx_skb_pages(%struct.bnx2*, %struct.bnx2_rx_ring_info*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_addr(%struct.bnx2_sw_pg*, i32) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32*, i32, i32) #1

declare dso_local i32 @bnx2_alloc_rx_page(%struct.bnx2*, %struct.bnx2_rx_ring_info*, i64, i32) #1

declare dso_local i64 @BNX2_RX_PG_RING_IDX(i64) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i64 @BNX2_NEXT_RX_BD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
