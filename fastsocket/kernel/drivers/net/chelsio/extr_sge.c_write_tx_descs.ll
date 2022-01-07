; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_write_tx_descs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_write_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.cmdQ = type { i32, %struct.cmdQ_ce*, %struct.cmdQ_e* }
%struct.cmdQ_ce = type { %struct.sk_buff* }
%struct.cmdQ_e = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@F_CMD_DATAVALID = common dso_local global i32 0, align 4
@F_CMD_SOP = common dso_local global i32 0, align 4
@SGE_TX_DESC_MAX_PLEN = common dso_local global i32 0, align 4
@dma_len = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dma_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sk_buff*, i32, i32, %struct.cmdQ*)* @write_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_tx_descs(%struct.adapter* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.cmdQ* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmdQ*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cmdQ_e*, align 8
  %14 = alloca %struct.cmdQ_e*, align 8
  %15 = alloca %struct.cmdQ_ce*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cmdQ* %4, %struct.cmdQ** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %20, align 4
  %26 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %27 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %26, i32 0, i32 2
  %28 = load %struct.cmdQ_e*, %struct.cmdQ_e** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %28, i64 %30
  store %struct.cmdQ_e* %31, %struct.cmdQ_e** %14, align 8
  store %struct.cmdQ_e* %31, %struct.cmdQ_e** %13, align 8
  %32 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %33 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %32, i32 0, i32 1
  %34 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %34, i64 %36
  store %struct.cmdQ_ce* %37, %struct.cmdQ_ce** %15, align 8
  %38 = load %struct.adapter*, %struct.adapter** %6, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %46, %49
  %51 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %52 = call i64 @pci_map_single(i32 %40, i32 %43, i32 %50, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %12, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %56, %59
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* @F_CMD_DATAVALID, align 4
  %62 = load i32, i32* @F_CMD_SOP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %20, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %5
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %69 = icmp ule i32 %67, %68
  br label %70

70:                                               ; preds = %66, %5
  %71 = phi i1 [ false, %5 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @V_CMD_EOP(i32 %72)
  %74 = or i32 %63, %73
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @V_CMD_GEN2(i32 %75)
  %77 = or i32 %74, %76
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %19, align 4
  br label %85

83:                                               ; preds = %70
  %84 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %18, align 4
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %89 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = trunc i64 %90 to i32
  %92 = ashr i32 %91, 32
  %93 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %94 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @V_CMD_LEN(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @V_CMD_GEN1(i32 %97)
  %99 = or i32 %96, %98
  %100 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %101 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %103 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %102, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %103, align 8
  %104 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %105 = load i32, i32* @dma_len, align 4
  %106 = call i32 @pci_unmap_len_set(%struct.cmdQ_ce* %104, i32 %105, i32 0)
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %159

110:                                              ; preds = %85
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* @SGE_TX_DESC_MAX_PLEN, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %110
  %115 = load i32, i32* %18, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %12, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %12, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %19, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* %19, align 4
  %122 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %123 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %122, i32 1
  store %struct.cmdQ_e* %123, %struct.cmdQ_e** %14, align 8
  %124 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %125 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %124, i32 1
  store %struct.cmdQ_ce* %125, %struct.cmdQ_ce** %15, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %8, align 4
  %128 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %129 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %114
  store i32 0, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = xor i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %136 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %135, i32 0, i32 2
  %137 = load %struct.cmdQ_e*, %struct.cmdQ_e** %136, align 8
  store %struct.cmdQ_e* %137, %struct.cmdQ_e** %14, align 8
  %138 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %139 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %138, i32 0, i32 1
  %140 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %139, align 8
  store %struct.cmdQ_ce* %140, %struct.cmdQ_ce** %15, align 8
  br label %141

141:                                              ; preds = %132, %114
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %145 = call i32 @write_large_page_tx_descs(i32 %142, %struct.cmdQ_e** %14, %struct.cmdQ_ce** %15, i32* %9, i64* %12, i32* %19, i32 %143, %struct.cmdQ* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i64 @likely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %141
  %150 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @write_tx_desc(%struct.cmdQ_e* %150, i64 %151, i32 %152, i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %149, %141
  br label %159

159:                                              ; preds = %158, %110, %85
  %160 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %161 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %160, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %161, align 8
  %162 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %163 = load i32, i32* @dma_addr, align 4
  %164 = load i64, i64* %11, align 8
  %165 = call i32 @pci_unmap_addr_set(%struct.cmdQ_ce* %162, i32 %163, i64 %164)
  %166 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %167 = load i32, i32* @dma_len, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub i32 %170, %173
  %175 = call i32 @pci_unmap_len_set(%struct.cmdQ_ce* %166, i32 %167, i32 %174)
  store i32 0, i32* %16, align 4
  br label %176

176:                                              ; preds = %255, %159
  %177 = load i32, i32* %20, align 4
  %178 = add i32 %177, -1
  store i32 %178, i32* %20, align 4
  %179 = icmp ne i32 %177, 0
  br i1 %179, label %180, label %258

180:                                              ; preds = %176
  %181 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %182 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %181)
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  store %struct.TYPE_3__* %187, %struct.TYPE_3__** %21, align 8
  %188 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %189 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %188, i32 1
  store %struct.cmdQ_e* %189, %struct.cmdQ_e** %14, align 8
  %190 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %191 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %190, i32 1
  store %struct.cmdQ_ce* %191, %struct.cmdQ_ce** %15, align 8
  %192 = load i32, i32* %8, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %8, align 4
  %194 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %195 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %180
  store i32 0, i32* %8, align 4
  %199 = load i32, i32* %9, align 4
  %200 = xor i32 %199, 1
  store i32 %200, i32* %9, align 4
  %201 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %202 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %201, i32 0, i32 2
  %203 = load %struct.cmdQ_e*, %struct.cmdQ_e** %202, align 8
  store %struct.cmdQ_e* %203, %struct.cmdQ_e** %14, align 8
  %204 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %205 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %204, i32 0, i32 1
  %206 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %205, align 8
  store %struct.cmdQ_ce* %206, %struct.cmdQ_ce** %15, align 8
  br label %207

207:                                              ; preds = %198, %180
  %208 = load %struct.adapter*, %struct.adapter** %6, align 8
  %209 = getelementptr inbounds %struct.adapter, %struct.adapter* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %221 = call i64 @pci_map_page(i32 %210, i32 %213, i32 %216, i32 %219, i32 %220)
  store i64 %221, i64* %11, align 8
  %222 = load i64, i64* %11, align 8
  store i64 %222, i64* %12, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load %struct.cmdQ*, %struct.cmdQ** %10, align 8
  %229 = call i32 @write_large_page_tx_descs(i32 %226, %struct.cmdQ_e** %14, %struct.cmdQ_ce** %15, i32* %9, i64* %12, i32* %19, i32 %227, %struct.cmdQ* %228)
  store i32 %229, i32* %8, align 4
  %230 = load i32, i32* %19, align 4
  %231 = call i64 @likely(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %207
  %234 = load %struct.cmdQ_e*, %struct.cmdQ_e** %14, align 8
  %235 = load i64, i64* %12, align 8
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %20, align 4
  %239 = icmp eq i32 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @write_tx_desc(%struct.cmdQ_e* %234, i64 %235, i32 %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %233, %207
  %243 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %244 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %243, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %244, align 8
  %245 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %246 = load i32, i32* @dma_addr, align 4
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @pci_unmap_addr_set(%struct.cmdQ_ce* %245, i32 %246, i64 %247)
  %249 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %250 = load i32, i32* @dma_len, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @pci_unmap_len_set(%struct.cmdQ_ce* %249, i32 %250, i32 %253)
  br label %255

255:                                              ; preds = %242
  %256 = load i32, i32* %16, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %16, align 4
  br label %176

258:                                              ; preds = %176
  %259 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %260 = load %struct.cmdQ_ce*, %struct.cmdQ_ce** %15, align 8
  %261 = getelementptr inbounds %struct.cmdQ_ce, %struct.cmdQ_ce* %260, i32 0, i32 0
  store %struct.sk_buff* %259, %struct.sk_buff** %261, align 8
  %262 = call i32 (...) @wmb()
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.cmdQ_e*, %struct.cmdQ_e** %13, align 8
  %265 = getelementptr inbounds %struct.cmdQ_e, %struct.cmdQ_e* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 8
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @V_CMD_EOP(i32) #1

declare dso_local i32 @V_CMD_GEN2(i32) #1

declare dso_local i32 @V_CMD_LEN(i32) #1

declare dso_local i32 @V_CMD_GEN1(i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.cmdQ_ce*, i32, i32) #1

declare dso_local i32 @write_large_page_tx_descs(i32, %struct.cmdQ_e**, %struct.cmdQ_ce**, i32*, i64*, i32*, i32, %struct.cmdQ*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @write_tx_desc(%struct.cmdQ_e*, i64, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.cmdQ_ce*, i32, i64) #1

declare dso_local i64 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
