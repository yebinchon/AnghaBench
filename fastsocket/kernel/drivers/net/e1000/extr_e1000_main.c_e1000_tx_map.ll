; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_tx_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, %struct.pci_dev*, %struct.e1000_hw }
%struct.pci_dev = type { i32 }
%struct.e1000_hw = type { i64 }
%struct.e1000_tx_ring = type { i32, i32, i32, %struct.e1000_buffer* }
%struct.e1000_buffer = type { i32, i32, i32, i32, i32, i64, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.skb_frag_struct = type { i32 }
%struct.TYPE_2__ = type { i64, %struct.skb_frag_struct* }

@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i32, i32, i32, i32)* @e1000_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_tx_map(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_adapter*, align 8
  %10 = alloca %struct.e1000_tx_ring*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.e1000_hw*, align 8
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca %struct.e1000_buffer*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.skb_frag_struct*, align 8
  %28 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %9, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 2
  store %struct.e1000_hw* %30, %struct.e1000_hw** %16, align 8
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %32, align 8
  store %struct.pci_dev* %33, %struct.pci_dev** %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %35 = call i32 @skb_headlen(%struct.sk_buff* %34)
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %36 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %37 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %23, align 4
  br label %39

39:                                               ; preds = %193, %7
  %40 = load i32, i32* %19, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %194

42:                                               ; preds = %39
  %43 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %44 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %43, i32 0, i32 3
  %45 = load %struct.e1000_buffer*, %struct.e1000_buffer** %44, align 8
  %46 = load i32, i32* %23, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %45, i64 %47
  store %struct.e1000_buffer* %48, %struct.e1000_buffer** %18, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  store i32 %51, i32* %21, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %42
  %57 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %58 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = call i32 @skb_is_gso(%struct.sk_buff* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %67 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %21, align 4
  %69 = sub i32 %68, 4
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %65, %61, %56, %42
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %21, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %21, align 4
  %82 = icmp ugt i32 %81, 8
  br label %83

83:                                               ; preds = %80, %76, %73, %70
  %84 = phi i1 [ false, %76 ], [ false, %73 ], [ false, %70 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %21, align 4
  %90 = sub i32 %89, 4
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %16, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @e1000_bus_type_pcix, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %21, align 4
  %99 = icmp ugt i32 %98, 2015
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %22, align 4
  %102 = icmp eq i32 %101, 0
  br label %103

103:                                              ; preds = %100, %97, %91
  %104 = phi i1 [ false, %97 ], [ false, %91 ], [ %102, %100 ]
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 2015, i32* %21, align 4
  br label %109

109:                                              ; preds = %108, %103
  %110 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %111 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %20, align 4
  %119 = add i32 %117, %118
  %120 = load i32, i32* %21, align 4
  %121 = add i32 %119, %120
  %122 = sub i32 %121, 1
  %123 = zext i32 %122 to i64
  %124 = and i64 %123, 4
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %114
  %127 = load i32, i32* %21, align 4
  %128 = icmp ugt i32 %127, 4
  br label %129

129:                                              ; preds = %126, %114, %109
  %130 = phi i1 [ false, %114 ], [ false, %109 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %21, align 4
  %136 = sub i32 %135, 4
  store i32 %136, i32* %21, align 4
  br label %137

137:                                              ; preds = %134, %129
  %138 = load i32, i32* %21, align 4
  %139 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %140 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** @jiffies, align 8
  %142 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %143 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %145 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %144, i32 0, i32 1
  store i32 0, i32* %145, align 4
  %146 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 0
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %20, align 4
  %152 = add i32 %150, %151
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* @DMA_TO_DEVICE, align 4
  %155 = call i64 @dma_map_single(i32* %147, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %157 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %161 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @dma_mapping_error(i32* %159, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %137
  br label %382

166:                                              ; preds = %137
  %167 = load i32, i32* %23, align 4
  %168 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %169 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %19, align 4
  %172 = sub i32 %171, %170
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %20, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %20, align 4
  %176 = load i32, i32* %22, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %166
  %181 = load i32, i32* %23, align 4
  %182 = add i32 %181, 1
  store i32 %182, i32* %23, align 4
  %183 = load i32, i32* %23, align 4
  %184 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %185 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %183, %186
  %188 = zext i1 %187 to i32
  %189 = call i64 @unlikely(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  store i32 0, i32* %23, align 4
  br label %192

192:                                              ; preds = %191, %180
  br label %193

193:                                              ; preds = %192, %166
  br label %39

194:                                              ; preds = %39
  store i32 0, i32* %24, align 4
  br label %195

195:                                              ; preds = %326, %194
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %329

199:                                              ; preds = %195
  %200 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %201 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %200)
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  %203 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %202, align 8
  %204 = load i32, i32* %24, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %203, i64 %205
  store %struct.skb_frag_struct* %206, %struct.skb_frag_struct** %27, align 8
  %207 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %27, align 8
  %208 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %210

210:                                              ; preds = %313, %199
  %211 = load i32, i32* %19, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %325

213:                                              ; preds = %210
  %214 = load i32, i32* %23, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %23, align 4
  %217 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %218 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %216, %219
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %213
  store i32 0, i32* %23, align 4
  br label %225

225:                                              ; preds = %224, %213
  %226 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %227 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %226, i32 0, i32 3
  %228 = load %struct.e1000_buffer*, %struct.e1000_buffer** %227, align 8
  %229 = load i32, i32* %23, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %228, i64 %230
  store %struct.e1000_buffer* %231, %struct.e1000_buffer** %18, align 8
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 @min(i32 %232, i32 %233)
  store i32 %234, i32* %21, align 4
  %235 = load i32, i32* %15, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %225
  %238 = load i32, i32* %24, align 4
  %239 = load i32, i32* %14, align 4
  %240 = sub i32 %239, 1
  %241 = icmp eq i32 %238, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %19, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load i32, i32* %21, align 4
  %248 = icmp ugt i32 %247, 8
  br label %249

249:                                              ; preds = %246, %242, %237, %225
  %250 = phi i1 [ false, %242 ], [ false, %237 ], [ false, %225 ], [ %248, %246 ]
  %251 = zext i1 %250 to i32
  %252 = call i64 @unlikely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load i32, i32* %21, align 4
  %256 = sub i32 %255, 4
  store i32 %256, i32* %21, align 4
  br label %257

257:                                              ; preds = %254, %249
  %258 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %27, align 8
  %259 = call i32 @skb_frag_page(%struct.skb_frag_struct* %258)
  %260 = call i64 @page_to_phys(i32 %259)
  store i64 %260, i64* %28, align 8
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %21, align 4
  %263 = add i32 %261, %262
  %264 = sub i32 %263, 1
  %265 = zext i32 %264 to i64
  %266 = load i64, i64* %28, align 8
  %267 = add i64 %266, %265
  store i64 %267, i64* %28, align 8
  %268 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %269 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %257
  %273 = load i64, i64* %28, align 8
  %274 = and i64 %273, 4
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* %21, align 4
  %278 = icmp ugt i32 %277, 4
  br label %279

279:                                              ; preds = %276, %272, %257
  %280 = phi i1 [ false, %272 ], [ false, %257 ], [ %278, %276 ]
  %281 = zext i1 %280 to i32
  %282 = call i64 @unlikely(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %279
  %285 = load i32, i32* %21, align 4
  %286 = sub i32 %285, 4
  store i32 %286, i32* %21, align 4
  br label %287

287:                                              ; preds = %284, %279
  %288 = load i32, i32* %21, align 4
  %289 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %290 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load i8*, i8** @jiffies, align 8
  %292 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %293 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %292, i32 0, i32 7
  store i8* %291, i8** %293, align 8
  %294 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %295 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %294, i32 0, i32 1
  store i32 1, i32* %295, align 4
  %296 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %297 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %296, i32 0, i32 0
  %298 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %27, align 8
  %299 = load i32, i32* %20, align 4
  %300 = load i32, i32* %21, align 4
  %301 = load i32, i32* @DMA_TO_DEVICE, align 4
  %302 = call i64 @skb_frag_dma_map(i32* %297, %struct.skb_frag_struct* %298, i32 %299, i32 %300, i32 %301)
  %303 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %304 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %303, i32 0, i32 5
  store i64 %302, i64* %304, align 8
  %305 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %306 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %305, i32 0, i32 0
  %307 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %308 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = call i64 @dma_mapping_error(i32* %306, i64 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %287
  br label %382

313:                                              ; preds = %287
  %314 = load i32, i32* %23, align 4
  %315 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %316 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 8
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* %19, align 4
  %319 = sub i32 %318, %317
  store i32 %319, i32* %19, align 4
  %320 = load i32, i32* %21, align 4
  %321 = load i32, i32* %20, align 4
  %322 = add i32 %321, %320
  store i32 %322, i32* %20, align 4
  %323 = load i32, i32* %22, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %22, align 4
  br label %210

325:                                              ; preds = %210
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %24, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %24, align 4
  br label %195

329:                                              ; preds = %195
  %330 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %331 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %330)
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %329
  br label %337

336:                                              ; preds = %329
  br label %337

337:                                              ; preds = %336, %335
  %338 = phi i64 [ %333, %335 ], [ 1, %336 ]
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %26, align 4
  %340 = load i32, i32* %26, align 4
  %341 = sub i32 %340, 1
  %342 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %343 = call i32 @skb_headlen(%struct.sk_buff* %342)
  %344 = mul i32 %341, %343
  %345 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %346 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = add i32 %344, %347
  store i32 %348, i32* %25, align 4
  %349 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %350 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %351 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %350, i32 0, i32 3
  %352 = load %struct.e1000_buffer*, %struct.e1000_buffer** %351, align 8
  %353 = load i32, i32* %23, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %352, i64 %354
  %356 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %355, i32 0, i32 6
  store %struct.sk_buff* %349, %struct.sk_buff** %356, align 8
  %357 = load i32, i32* %26, align 4
  %358 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %359 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %358, i32 0, i32 3
  %360 = load %struct.e1000_buffer*, %struct.e1000_buffer** %359, align 8
  %361 = load i32, i32* %23, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %360, i64 %362
  %364 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %363, i32 0, i32 3
  store i32 %357, i32* %364, align 4
  %365 = load i32, i32* %25, align 4
  %366 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %367 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %366, i32 0, i32 3
  %368 = load %struct.e1000_buffer*, %struct.e1000_buffer** %367, align 8
  %369 = load i32, i32* %23, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %368, i64 %370
  %372 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %371, i32 0, i32 4
  store i32 %365, i32* %372, align 8
  %373 = load i32, i32* %23, align 4
  %374 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %375 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %374, i32 0, i32 3
  %376 = load %struct.e1000_buffer*, %struct.e1000_buffer** %375, align 8
  %377 = load i32, i32* %12, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %376, i64 %378
  %380 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %379, i32 0, i32 2
  store i32 %373, i32* %380, align 8
  %381 = load i32, i32* %22, align 4
  store i32 %381, i32* %8, align 4
  br label %420

382:                                              ; preds = %312, %165
  %383 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %384 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %383, i32 0, i32 0
  %385 = call i32 @dev_err(i32* %384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %386 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %387 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %386, i32 0, i32 5
  store i64 0, i64* %387, align 8
  %388 = load i32, i32* %22, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %382
  %391 = load i32, i32* %22, align 4
  %392 = add i32 %391, -1
  store i32 %392, i32* %22, align 4
  br label %393

393:                                              ; preds = %390, %382
  br label %394

394:                                              ; preds = %407, %393
  %395 = load i32, i32* %22, align 4
  %396 = add i32 %395, -1
  store i32 %396, i32* %22, align 4
  %397 = icmp ne i32 %395, 0
  br i1 %397, label %398, label %419

398:                                              ; preds = %394
  %399 = load i32, i32* %23, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %407

401:                                              ; preds = %398
  %402 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %403 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %23, align 4
  %406 = add i32 %405, %404
  store i32 %406, i32* %23, align 4
  br label %407

407:                                              ; preds = %401, %398
  %408 = load i32, i32* %23, align 4
  %409 = add i32 %408, -1
  store i32 %409, i32* %23, align 4
  %410 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %411 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %410, i32 0, i32 3
  %412 = load %struct.e1000_buffer*, %struct.e1000_buffer** %411, align 8
  %413 = load i32, i32* %23, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %412, i64 %414
  store %struct.e1000_buffer* %415, %struct.e1000_buffer** %18, align 8
  %416 = load %struct.e1000_adapter*, %struct.e1000_adapter** %9, align 8
  %417 = load %struct.e1000_buffer*, %struct.e1000_buffer** %18, align 8
  %418 = call i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter* %416, %struct.e1000_buffer* %417)
  br label %394

419:                                              ; preds = %394
  store i32 0, i32* %8, align 4
  br label %420

420:                                              ; preds = %419, %337
  %421 = load i32, i32* %8, align 4
  ret i32 %421
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @skb_frag_page(%struct.skb_frag_struct*) #1

declare dso_local i64 @skb_frag_dma_map(i32*, %struct.skb_frag_struct*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @e1000_unmap_and_free_tx_resource(%struct.e1000_adapter*, %struct.e1000_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
