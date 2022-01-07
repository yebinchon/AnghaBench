; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_rx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_rx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_info = type { i64, i32, %struct.TYPE_10__*, %struct.lro*, i64, %struct.TYPE_8__*, %struct.rx_curr_get_info, i64, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.lro = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.RxD_t*, %struct.TYPE_7__* }
%struct.RxD_t = type { i64 }
%struct.TYPE_7__ = type { %struct.RxD_t* }
%struct.rx_curr_get_info = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.RxD1 = type { i64 }
%struct.RxD3 = type { i64, i64 }

@INTR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: Ring Full\0A\00", align 1
@ERR_DBG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: NULL skb in Rx Intr\0A\00", align 1
@RXD_MODE_1 = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i64 0, align 8
@HEADER_802_2_SIZE = common dso_local global i64 0, align 8
@HEADER_SNAP_SIZE = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i32 0, align 4
@rxd_count = common dso_local global i64* null, align 8
@indicate_max_pkts = common dso_local global i32 0, align 4
@MAX_LRO_SESSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_info*, i32)* @rx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_intr_handler(%struct.ring_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_curr_get_info, align 8
  %9 = alloca %struct.rx_curr_get_info, align 8
  %10 = alloca %struct.RxD_t*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.RxD1*, align 8
  %16 = alloca %struct.RxD3*, align 8
  %17 = alloca %struct.lro*, align 8
  store %struct.ring_info* %0, %struct.ring_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %19 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %18, i32 0, i32 6
  %20 = bitcast %struct.rx_curr_get_info* %8 to i8*
  %21 = bitcast %struct.rx_curr_get_info* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %25 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %24, i32 0, i32 10
  %26 = call i32 @memcpy(%struct.rx_curr_get_info* %9, i32* %25, i32 16)
  %27 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %30 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.RxD_t*, %struct.RxD_t** %40, align 8
  store %struct.RxD_t* %41, %struct.RxD_t** %10, align 8
  br label %42

42:                                               ; preds = %233, %2
  %43 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %44 = call i64 @RXD_IS_UP2DT(%struct.RxD_t* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %234

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %9, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @INTR_DBG, align 4
  %59 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %60 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %59, i32 0, i32 9
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DBG_PRINT(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %234

65:                                               ; preds = %50, %46
  %66 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %67 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.sk_buff*
  store %struct.sk_buff* %69, %struct.sk_buff** %11, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %71 = icmp eq %struct.sk_buff* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @ERR_DBG, align 4
  %74 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %75 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %74, i32 0, i32 9
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @DBG_PRINT(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %277

80:                                               ; preds = %65
  %81 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %82 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RXD_MODE_1, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %80
  %87 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %88 = bitcast %struct.RxD_t* %87 to %struct.RxD1*
  store %struct.RxD1* %88, %struct.RxD1** %15, align 8
  %89 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %90 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.RxD1*, %struct.RxD1** %15, align 8
  %93 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %97 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HEADER_ETHERNET_II_802_3_SIZE, align 8
  %100 = add nsw i64 %98, %99
  %101 = load i64, i64* @HEADER_802_2_SIZE, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i64, i64* @HEADER_SNAP_SIZE, align 8
  %104 = add nsw i64 %102, %103
  %105 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %106 = call i32 @pci_unmap_single(i32 %91, i32 %95, i64 %104, i32 %105)
  br label %140

107:                                              ; preds = %80
  %108 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %109 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RXD_MODE_3B, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %139

113:                                              ; preds = %107
  %114 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %115 = bitcast %struct.RxD_t* %114 to %struct.RxD3*
  store %struct.RxD3* %115, %struct.RxD3** %16, align 8
  %116 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %117 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.RxD3*, %struct.RxD3** %16, align 8
  %120 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @BUF0_LEN, align 4
  %124 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %125 = call i32 @pci_dma_sync_single_for_cpu(i32 %118, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %127 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.RxD3*, %struct.RxD3** %16, align 8
  %130 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %134 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %133, i32 0, i32 7
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 4
  %137 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %138 = call i32 @pci_unmap_single(i32 %128, i32 %132, i64 %136, i32 %137)
  br label %139

139:                                              ; preds = %113, %107
  br label %140

140:                                              ; preds = %139, %86
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @prefetch(i32 %143)
  %145 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %146 = load %struct.RxD_t*, %struct.RxD_t** %10, align 8
  %147 = call i32 @rx_osm_handler(%struct.ring_info* %145, %struct.RxD_t* %146)
  %148 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %148, align 8
  %151 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %154 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %154, i32 0, i32 1
  store i64 %152, i64* %155, align 8
  %156 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %157 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %156, i32 0, i32 5
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load %struct.RxD_t*, %struct.RxD_t** %167, align 8
  store %struct.RxD_t* %168, %struct.RxD_t** %10, align 8
  %169 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** @rxd_count, align 8
  %172 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %173 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %170, %176
  br i1 %177, label %178, label %206

178:                                              ; preds = %140
  %179 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %8, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %183 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %183, i32 0, i32 1
  store i64 %181, i64* %184, align 8
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %189 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %178
  %194 = load i32, i32* %6, align 4
  %195 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %196 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.rx_curr_get_info, %struct.rx_curr_get_info* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 8
  %198 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %199 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %198, i32 0, i32 5
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.RxD_t*, %struct.RxD_t** %204, align 8
  store %struct.RxD_t* %205, %struct.RxD_t** %10, align 8
  br label %206

206:                                              ; preds = %193, %140
  %207 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %208 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %207, i32 0, i32 2
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %206
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %5, align 4
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  br label %234

222:                                              ; preds = %214
  br label %223

223:                                              ; preds = %222, %206
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @indicate_max_pkts, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* @indicate_max_pkts, align 4
  %231 = icmp sgt i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %228
  br label %234

233:                                              ; preds = %228, %223
  br label %42

234:                                              ; preds = %232, %221, %57, %42
  %235 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %236 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %275

239:                                              ; preds = %234
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %271, %239
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @MAX_LRO_SESSIONS, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %274

244:                                              ; preds = %240
  %245 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %246 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %245, i32 0, i32 3
  %247 = load %struct.lro*, %struct.lro** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.lro, %struct.lro* %247, i64 %249
  store %struct.lro* %250, %struct.lro** %17, align 8
  %251 = load %struct.lro*, %struct.lro** %17, align 8
  %252 = getelementptr inbounds %struct.lro, %struct.lro* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %244
  %256 = load %struct.ring_info*, %struct.ring_info** %4, align 8
  %257 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %256, i32 0, i32 2
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = load %struct.lro*, %struct.lro** %17, align 8
  %260 = call i32 @update_L3L4_header(%struct.TYPE_10__* %258, %struct.lro* %259)
  %261 = load %struct.lro*, %struct.lro** %17, align 8
  %262 = getelementptr inbounds %struct.lro, %struct.lro* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.lro*, %struct.lro** %17, align 8
  %265 = getelementptr inbounds %struct.lro, %struct.lro* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @queue_rx_frame(i32 %263, i32 %266)
  %268 = load %struct.lro*, %struct.lro** %17, align 8
  %269 = call i32 @clear_lro_session(%struct.lro* %268)
  br label %270

270:                                              ; preds = %255, %244
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %14, align 4
  br label %240

274:                                              ; preds = %240
  br label %275

275:                                              ; preds = %274, %234
  %276 = load i32, i32* %13, align 4
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %275, %72
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.rx_curr_get_info*, i32*, i32) #2

declare dso_local i64 @RXD_IS_UP2DT(%struct.RxD_t*) #2

declare dso_local i32 @DBG_PRINT(i32, i8*, i32) #2

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #2

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #2

declare dso_local i32 @prefetch(i32) #2

declare dso_local i32 @rx_osm_handler(%struct.ring_info*, %struct.RxD_t*) #2

declare dso_local i32 @update_L3L4_header(%struct.TYPE_10__*, %struct.lro*) #2

declare dso_local i32 @queue_rx_frame(i32, i32) #2

declare dso_local i32 @clear_lro_session(%struct.lro*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
