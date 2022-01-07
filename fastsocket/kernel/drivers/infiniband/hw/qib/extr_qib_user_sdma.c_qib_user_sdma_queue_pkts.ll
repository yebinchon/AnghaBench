; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_pkts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.iovec = type { i64, i64 }
%struct.page = type { i32 }
%struct.qib_user_sdma_pkt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QIB_USER_SDMA_MIN_HEADER_LENGTH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QIB_USER_SDMA_EXP_HEADER_LENGTH = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@QIB_PBC_LENGTH_MASK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.list_head*, %struct.iovec*, i64, i32)* @qib_user_sdma_queue_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_queue_pkts(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.list_head* %2, %struct.iovec* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_user_sdma_queue*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.qib_user_sdma_pkt*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %7, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.page* null, %struct.page** %16, align 8
  store %struct.qib_user_sdma_pkt* null, %struct.qib_user_sdma_pkt** %19, align 8
  %33 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %34 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %36

36:                                               ; preds = %276, %6
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %285

46:                                               ; preds = %44
  %47 = load %struct.iovec*, %struct.iovec** %10, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i64 %48
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %24, align 8
  %52 = load i64, i64* %13, align 8
  store i64 %52, i64* %25, align 8
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %23, align 4
  %53 = load %struct.iovec*, %struct.iovec** %10, align 8
  %54 = load i64, i64* %13, align 8
  %55 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i64 %54
  %56 = getelementptr inbounds %struct.iovec, %struct.iovec* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %20, align 8
  %58 = load i64, i64* %20, align 8
  %59 = lshr i64 %58, 2
  store i64 %59, i64* %21, align 8
  store %struct.page* null, %struct.page** %16, align 8
  %60 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %61 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.qib_user_sdma_pkt* @kmem_cache_alloc(i32 %62, i32 %63)
  store %struct.qib_user_sdma_pkt* %64, %struct.qib_user_sdma_pkt** %19, align 8
  %65 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %19, align 8
  %66 = icmp ne %struct.qib_user_sdma_pkt* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %46
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %323

70:                                               ; preds = %46
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* @QIB_USER_SDMA_MIN_HEADER_LENGTH, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = icmp ugt i64 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %20, align 8
  %80 = and i64 %79, 3
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %24, align 8
  %84 = and i64 %83, 3
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %78, %74, %70
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %317

89:                                               ; preds = %82
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* @QIB_USER_SDMA_EXP_HEADER_LENGTH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %95 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32* @dma_pool_alloc(i32 %96, i32 %97, i32* %18)
  store i32* %98, i32** %17, align 8
  br label %100

99:                                               ; preds = %89
  store i32* null, i32** %17, align 8
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i32*, i32** %17, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.page* @alloc_page(i32 %104)
  store %struct.page* %105, %struct.page** %16, align 8
  %106 = load %struct.page*, %struct.page** %16, align 8
  %107 = icmp ne %struct.page* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %14, align 4
  br label %317

111:                                              ; preds = %103
  %112 = load %struct.page*, %struct.page** %16, align 8
  %113 = call i32* @kmap(%struct.page* %112)
  store i32* %113, i32** %17, align 8
  br label %114

114:                                              ; preds = %111, %100
  %115 = load i32*, i32** %17, align 8
  %116 = load %struct.iovec*, %struct.iovec** %10, align 8
  %117 = load i64, i64* %13, align 8
  %118 = getelementptr inbounds %struct.iovec, %struct.iovec* %116, i64 %117
  %119 = getelementptr inbounds %struct.iovec, %struct.iovec* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %20, align 8
  %122 = call i32 @copy_from_user(i32* %115, i64 %120, i64 %121)
  store i32 %122, i32* %30, align 4
  %123 = load i32, i32* %30, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %14, align 4
  br label %301

128:                                              ; preds = %114
  %129 = load i64, i64* %21, align 8
  %130 = sub i64 %129, 1
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %27, align 4
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load i32, i32* @QIB_PBC_LENGTH_MASK, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %27, align 4
  %139 = icmp ult i32 %137, %138
  br i1 %139, label %149, label %140

140:                                              ; preds = %128
  %141 = load i32, i32* %26, align 4
  %142 = zext i32 %141 to i64
  %143 = load i32, i32* %27, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @PAGE_SIZE, align 8
  %146 = lshr i64 %145, 2
  %147 = add i64 %144, %146
  %148 = icmp ugt i64 %142, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %140, %128
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %14, align 4
  br label %301

152:                                              ; preds = %140
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %13, align 8
  br label %155

155:                                              ; preds = %209, %152
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %26, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %11, align 8
  %162 = icmp ult i64 %160, %161
  br label %163

163:                                              ; preds = %159, %155
  %164 = phi i1 [ false, %155 ], [ %162, %159 ]
  br i1 %164, label %165, label %220

165:                                              ; preds = %163
  %166 = load %struct.iovec*, %struct.iovec** %10, align 8
  %167 = load i64, i64* %13, align 8
  %168 = getelementptr inbounds %struct.iovec, %struct.iovec* %166, i64 %167
  %169 = getelementptr inbounds %struct.iovec, %struct.iovec* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %31, align 8
  %171 = load %struct.iovec*, %struct.iovec** %10, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds %struct.iovec, %struct.iovec* %171, i64 %172
  %174 = getelementptr inbounds %struct.iovec, %struct.iovec* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %32, align 8
  %176 = load i64, i64* %31, align 8
  %177 = and i64 %176, 3
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %165
  %180 = load i64, i64* %32, align 8
  %181 = and i64 %180, 3
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = load i64, i64* %31, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %183
  %187 = load i64, i64* %31, align 8
  %188 = load i64, i64* @PAGE_SIZE, align 8
  %189 = icmp ugt i64 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186, %183, %179, %165
  %191 = load i32, i32* @EINVAL, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %14, align 4
  br label %301

193:                                              ; preds = %186
  %194 = load i32, i32* %29, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %29, align 4
  %196 = load i64, i64* %32, align 8
  %197 = load i64, i64* @PAGE_MASK, align 8
  %198 = and i64 %196, %197
  %199 = load i64, i64* %32, align 8
  %200 = load i64, i64* %31, align 8
  %201 = add i64 %199, %200
  %202 = sub i64 %201, 1
  %203 = load i64, i64* @PAGE_MASK, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %198, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %193
  %207 = load i32, i32* %29, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %29, align 4
  br label %209

209:                                              ; preds = %206, %193
  %210 = load i64, i64* %31, align 8
  %211 = lshr i64 %210, 2
  %212 = load i32, i32* %27, align 4
  %213 = zext i32 %212 to i64
  %214 = add i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %27, align 4
  %216 = load i64, i64* %13, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %13, align 8
  %218 = load i32, i32* %28, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %28, align 4
  br label %155

220:                                              ; preds = %163
  %221 = load i32, i32* %27, align 4
  %222 = load i32, i32* %26, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %220
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %14, align 4
  br label %301

227:                                              ; preds = %220
  %228 = load %struct.page*, %struct.page** %16, align 8
  %229 = icmp ne %struct.page* %228, null
  br i1 %229, label %230, label %250

230:                                              ; preds = %227
  %231 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %232 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %231, i32 0, i32 0
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load %struct.page*, %struct.page** %16, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load i32, i32* @DMA_TO_DEVICE, align 4
  %238 = call i32 @dma_map_page(i32* %234, %struct.page* %235, i32 0, i64 %236, i32 %237)
  store i32 %238, i32* %18, align 4
  %239 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %240 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %239, i32 0, i32 0
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %18, align 4
  %244 = call i64 @dma_mapping_error(i32* %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %230
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %14, align 4
  br label %301

249:                                              ; preds = %230
  store i32 1, i32* %23, align 4
  br label %250

250:                                              ; preds = %249, %227
  %251 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %19, align 8
  %252 = load i32, i32* %22, align 4
  %253 = load i64, i64* %20, align 8
  %254 = load i32, i32* %23, align 4
  %255 = load %struct.page*, %struct.page** %16, align 8
  %256 = load i32*, i32** %17, align 8
  %257 = load i32, i32* %18, align 4
  %258 = call i32 @qib_user_sdma_init_header(%struct.qib_user_sdma_pkt* %251, i32 %252, i32 0, i64 %253, i32 %254, %struct.page* %255, i32* %256, i32 %257)
  %259 = load i32, i32* %28, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %276

261:                                              ; preds = %250
  %262 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %263 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %264 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %19, align 8
  %265 = load %struct.iovec*, %struct.iovec** %10, align 8
  %266 = load i64, i64* %25, align 8
  %267 = getelementptr inbounds %struct.iovec, %struct.iovec* %265, i64 %266
  %268 = getelementptr inbounds %struct.iovec, %struct.iovec* %267, i64 1
  %269 = load i32, i32* %28, align 4
  %270 = load i32, i32* %29, align 4
  %271 = call i32 @qib_user_sdma_init_payload(%struct.qib_devdata* %262, %struct.qib_user_sdma_queue* %263, %struct.qib_user_sdma_pkt* %264, %struct.iovec* %268, i32 %269, i32 %270)
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %14, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %261
  br label %288

275:                                              ; preds = %261
  br label %276

276:                                              ; preds = %275, %250
  %277 = load i32, i32* %22, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %22, align 4
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  %281 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %19, align 8
  %282 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %281, i32 0, i32 0
  %283 = load %struct.list_head*, %struct.list_head** %9, align 8
  %284 = call i32 @list_add_tail(i32* %282, %struct.list_head* %283)
  br label %36

285:                                              ; preds = %44
  %286 = load i64, i64* %13, align 8
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %14, align 4
  br label %331

288:                                              ; preds = %274
  %289 = load i32, i32* %23, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %300

291:                                              ; preds = %288
  %292 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %293 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = load i32, i32* %18, align 4
  %297 = load i64, i64* %20, align 8
  %298 = load i32, i32* @DMA_TO_DEVICE, align 4
  %299 = call i32 @dma_unmap_page(i32* %295, i32 %296, i64 %297, i32 %298)
  br label %300

300:                                              ; preds = %291, %288
  br label %301

301:                                              ; preds = %300, %246, %224, %190, %149, %125
  %302 = load %struct.page*, %struct.page** %16, align 8
  %303 = icmp ne %struct.page* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %301
  %305 = load %struct.page*, %struct.page** %16, align 8
  %306 = call i32 @kunmap(%struct.page* %305)
  %307 = load %struct.page*, %struct.page** %16, align 8
  %308 = call i32 @__free_page(%struct.page* %307)
  br label %316

309:                                              ; preds = %301
  %310 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %311 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %17, align 8
  %314 = load i32, i32* %18, align 4
  %315 = call i32 @dma_pool_free(i32 %312, i32* %313, i32 %314)
  br label %316

316:                                              ; preds = %309, %304
  br label %317

317:                                              ; preds = %316, %108, %86
  %318 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %319 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %19, align 8
  %322 = call i32 @kmem_cache_free(i32 %320, %struct.qib_user_sdma_pkt* %321)
  br label %323

323:                                              ; preds = %317, %67
  %324 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %325 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %324, i32 0, i32 0
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %329 = load %struct.list_head*, %struct.list_head** %9, align 8
  %330 = call i32 @qib_user_sdma_free_pkt_list(i32* %327, %struct.qib_user_sdma_queue* %328, %struct.list_head* %329)
  br label %331

331:                                              ; preds = %323, %285
  %332 = load i32, i32* %14, align 4
  ret i32 %332
}

declare dso_local %struct.qib_user_sdma_pkt* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @copy_from_user(i32*, i64, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @qib_user_sdma_init_header(%struct.qib_user_sdma_pkt*, i32, i32, i64, i32, %struct.page*, i32*, i32) #1

declare dso_local i32 @qib_user_sdma_init_payload(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i64, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qib_user_sdma_pkt*) #1

declare dso_local i32 @qib_user_sdma_free_pkt_list(i32*, %struct.qib_user_sdma_queue*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
