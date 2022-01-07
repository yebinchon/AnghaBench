; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_fill_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_fill_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32 }
%struct.ring_info = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_16__, i32, %struct.buffAdd**, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.buffAdd = type { i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.RxD_t*, %struct.TYPE_12__* }
%struct.RxD_t = type { i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.RxD_t* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.swStat }
%struct.swStat = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i8* }
%struct.RxD1 = type { i32 }
%struct.RxD3 = type { i32, i32, i32 }

@INTR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: Get and Put info equated\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: Next block at: %p\0A\00", align 1
@RXD_OWN_XENA = common dso_local global i32 0, align 4
@RXD_MODE_3B = common dso_local global i64 0, align 8
@HEADER_ETHERNET_II_802_3_SIZE = common dso_local global i32 0, align 4
@HEADER_802_2_SIZE = common dso_local global i32 0, align 4
@HEADER_SNAP_SIZE = common dso_local global i32 0, align 4
@RXD_MODE_1 = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@ALIGN_SIZE = common dso_local global i32 0, align 4
@BUF0_LEN = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: Could not allocate skb\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@BUF1_LEN = common dso_local global i32 0, align 4
@rxsync_frequency = common dso_local global i32 0, align 4
@SET_RXD_MARKER = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, %struct.ring_info*, i32)* @fill_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_rx_buffers(%struct.s2io_nic* %0, %struct.ring_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s2io_nic*, align 8
  %6 = alloca %struct.ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.RxD_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffAdd*, align 8
  %18 = alloca %struct.RxD_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.RxD1*, align 8
  %23 = alloca %struct.RxD3*, align 8
  %24 = alloca %struct.swStat*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %5, align 8
  store %struct.ring_info* %1, %struct.ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store %struct.RxD_t* null, %struct.RxD_t** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %25 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %26 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %25, i32 0, i32 12
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.swStat* %31, %struct.swStat** %24, align 8
  %32 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %33 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %36 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %40 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %39, i32 0, i32 11
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %538, %3
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %545

47:                                               ; preds = %43
  %48 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %49 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %53 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %57 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %56, i32 0, i32 10
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.RxD_t*, %struct.RxD_t** %67, align 8
  store %struct.RxD_t* %68, %struct.RxD_t** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %47
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %76 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %21, align 4
  br label %81

81:                                               ; preds = %73, %47
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %88 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %94 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load i32, i32* @INTR_DBG, align 4
  %99 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %100 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %99, i32 0, i32 9
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %546

105:                                              ; preds = %92, %85, %81
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %157

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %111 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %108
  %115 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %116 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %121 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %125 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %130 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %114
  %133 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %134 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %139 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %142 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %141, i32 0, i32 10
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.RxD_t*, %struct.RxD_t** %147, align 8
  store %struct.RxD_t* %148, %struct.RxD_t** %9, align 8
  %149 = load i32, i32* @INTR_DBG, align 4
  %150 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %151 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %150, i32 0, i32 9
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %156 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %154, %struct.RxD_t* %155)
  br label %157

157:                                              ; preds = %132, %108, %105
  %158 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %159 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @RXD_OWN_XENA, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %157
  %165 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %166 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RXD_MODE_3B, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %164
  %171 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %172 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @s2BIT(i32 0)
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %180 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %546

182:                                              ; preds = %170, %164, %157
  %183 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %184 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @HEADER_ETHERNET_II_802_3_SIZE, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* @HEADER_802_2_SIZE, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* @HEADER_SNAP_SIZE, align 4
  %191 = add nsw i32 %189, %190
  store i32 %191, i32* %11, align 4
  %192 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %193 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @RXD_MODE_1, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %182
  %198 = load i32, i32* @NET_IP_ALIGN, align 4
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %11, align 4
  br label %210

201:                                              ; preds = %182
  %202 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %203 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ALIGN_SIZE, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* @BUF0_LEN, align 4
  %208 = add nsw i32 %206, %207
  %209 = add nsw i32 %208, 4
  store i32 %209, i32* %11, align 4
  br label %210

210:                                              ; preds = %201, %197
  %211 = load i32, i32* %11, align 4
  %212 = call %struct.sk_buff* @dev_alloc_skb(i32 %211)
  store %struct.sk_buff* %212, %struct.sk_buff** %8, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %214 = icmp ne %struct.sk_buff* %213, null
  br i1 %214, label %239, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @INFO_DBG, align 4
  %217 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %218 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %217, i32 0, i32 9
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i32, i8*, i32, ...) @DBG_PRINT(i32 %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %221)
  %223 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %224 = icmp ne %struct.RxD_t* %223, null
  br i1 %224, label %225, label %232

225:                                              ; preds = %215
  %226 = call i32 (...) @wmb()
  %227 = load i32, i32* @RXD_OWN_XENA, align 4
  %228 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %229 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %225, %215
  %233 = load %struct.swStat*, %struct.swStat** %24, align 8
  %234 = getelementptr inbounds %struct.swStat, %struct.swStat* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %4, align 4
  br label %576

239:                                              ; preds = %210
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.swStat*, %struct.swStat** %24, align 8
  %244 = getelementptr inbounds %struct.swStat, %struct.swStat* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  %249 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %250 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @RXD_MODE_1, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %296

254:                                              ; preds = %239
  %255 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %256 = bitcast %struct.RxD_t* %255 to %struct.RxD1*
  store %struct.RxD1* %256, %struct.RxD1** %22, align 8
  %257 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %258 = call i32 @memset(%struct.RxD_t* %257, i32 0, i32 4)
  %259 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %260 = load i32, i32* @NET_IP_ALIGN, align 4
  %261 = call i32 @skb_reserve(%struct.sk_buff* %259, i32 %260)
  %262 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %263 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %266 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @NET_IP_ALIGN, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %272 = call i8* @pci_map_single(i32 %264, i8* %267, i32 %270, i32 %271)
  %273 = ptrtoint i8* %272 to i32
  %274 = load %struct.RxD1*, %struct.RxD1** %22, align 8
  %275 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %274, i32 0, i32 0
  store i32 %273, i32* %275, align 4
  %276 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %277 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.RxD1*, %struct.RxD1** %22, align 8
  %280 = getelementptr inbounds %struct.RxD1, %struct.RxD1* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @pci_dma_mapping_error(i32 %278, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %254
  br label %558

285:                                              ; preds = %254
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* @NET_IP_ALIGN, align 4
  %288 = sub nsw i32 %286, %287
  %289 = call i32 @SET_BUFFER0_SIZE_1(i32 %288)
  %290 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %291 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %293 = ptrtoint %struct.sk_buff* %292 to i64
  %294 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %295 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %294, i32 0, i32 0
  store i64 %293, i64* %295, align 8
  br label %487

296:                                              ; preds = %239
  %297 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %298 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %297, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @RXD_MODE_3B, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %486

302:                                              ; preds = %296
  %303 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %304 = bitcast %struct.RxD_t* %303 to %struct.RxD3*
  store %struct.RxD3* %304, %struct.RxD3** %23, align 8
  %305 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %306 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %19, align 4
  %308 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %309 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %20, align 4
  %311 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %312 = call i32 @memset(%struct.RxD_t* %311, i32 0, i32 12)
  %313 = load i32, i32* %19, align 4
  %314 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %315 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %20, align 4
  %317 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %318 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %317, i32 0, i32 1
  store i32 %316, i32* %318, align 4
  %319 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %320 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %319, i32 0, i32 8
  %321 = load %struct.buffAdd**, %struct.buffAdd*** %320, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %321, i64 %323
  %325 = load %struct.buffAdd*, %struct.buffAdd** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %325, i64 %327
  store %struct.buffAdd* %328, %struct.buffAdd** %17, align 8
  %329 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %330 = load i32, i32* @BUF0_LEN, align 4
  %331 = call i32 @skb_reserve(%struct.sk_buff* %329, i32 %330)
  %332 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %333 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %332, i32 0, i32 1
  %334 = load i8*, i8** %333, align 8
  %335 = ptrtoint i8* %334 to i64
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %16, align 4
  %337 = load i32, i32* @ALIGN_SIZE, align 4
  %338 = load i32, i32* %16, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* @ALIGN_SIZE, align 4
  %341 = xor i32 %340, -1
  %342 = load i32, i32* %16, align 4
  %343 = and i32 %342, %341
  store i32 %343, i32* %16, align 4
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = inttoptr i64 %345 to i8*
  %347 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 1
  store i8* %346, i8** %348, align 8
  %349 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %350 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %349)
  %351 = load i32, i32* %7, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %376

353:                                              ; preds = %302
  %354 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %355 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %358 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %357, i32 0, i32 1
  %359 = load i8*, i8** %358, align 8
  %360 = load i32, i32* @BUF0_LEN, align 4
  %361 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %362 = call i8* @pci_map_single(i32 %356, i8* %359, i32 %360, i32 %361)
  %363 = ptrtoint i8* %362 to i32
  %364 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %365 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 4
  %366 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %367 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %370 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i64 @pci_dma_mapping_error(i32 %368, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %353
  br label %558

375:                                              ; preds = %353
  br label %386

376:                                              ; preds = %302
  %377 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %378 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %377, i32 0, i32 7
  %379 = load i32, i32* %378, align 4
  %380 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %381 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @BUF0_LEN, align 4
  %384 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %385 = call i32 @pci_dma_sync_single_for_device(i32 %379, i32 %382, i32 %383, i32 %384)
  br label %386

386:                                              ; preds = %376, %375
  %387 = load i32, i32* @BUF0_LEN, align 4
  %388 = call i32 @SET_BUFFER0_SIZE_3(i32 %387)
  %389 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %390 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %389, i32 0, i32 2
  store i32 %388, i32* %390, align 4
  %391 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %392 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %391, i32 0, i32 4
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @RXD_MODE_3B, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %476

396:                                              ; preds = %386
  %397 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %398 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %397, i32 0, i32 7
  %399 = load i32, i32* %398, align 4
  %400 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %401 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %400, i32 0, i32 1
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %404 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = add nsw i32 %405, 4
  %407 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %408 = call i8* @pci_map_single(i32 %399, i8* %402, i32 %406, i32 %407)
  %409 = ptrtoint i8* %408 to i32
  %410 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %411 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %410, i32 0, i32 2
  store i32 %409, i32* %411, align 4
  %412 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %413 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %416 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = call i64 @pci_dma_mapping_error(i32 %414, i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %396
  br label %558

421:                                              ; preds = %396
  %422 = load i32, i32* %7, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %461

424:                                              ; preds = %421
  %425 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %426 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %425, i32 0, i32 7
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %429 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = load i32, i32* @BUF1_LEN, align 4
  %432 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %433 = call i8* @pci_map_single(i32 %427, i8* %430, i32 %431, i32 %432)
  %434 = ptrtoint i8* %433 to i32
  %435 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %436 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %435, i32 0, i32 1
  store i32 %434, i32* %436, align 4
  %437 = load %struct.s2io_nic*, %struct.s2io_nic** %5, align 8
  %438 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.RxD3*, %struct.RxD3** %23, align 8
  %441 = getelementptr inbounds %struct.RxD3, %struct.RxD3* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = call i64 @pci_dma_mapping_error(i32 %439, i32 %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %460

445:                                              ; preds = %424
  %446 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %447 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %446, i32 0, i32 7
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %450 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %449, i32 0, i32 1
  %451 = load i8*, i8** %450, align 8
  %452 = ptrtoint i8* %451 to i64
  %453 = trunc i64 %452 to i32
  %454 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %455 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 8
  %457 = add nsw i32 %456, 4
  %458 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %459 = call i32 @pci_unmap_single(i32 %448, i32 %453, i32 %457, i32 %458)
  br label %558

460:                                              ; preds = %424
  br label %461

461:                                              ; preds = %460, %421
  %462 = call i32 @SET_BUFFER1_SIZE_3(i32 1)
  %463 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %464 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 4
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 4
  %467 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %468 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 8
  %470 = add nsw i32 %469, 4
  %471 = call i32 @SET_BUFFER2_SIZE_3(i32 %470)
  %472 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %473 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 4
  %475 = or i32 %474, %471
  store i32 %475, i32* %473, align 4
  br label %476

476:                                              ; preds = %461, %386
  %477 = call i32 @s2BIT(i32 0)
  %478 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %479 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = or i32 %480, %477
  store i32 %481, i32* %479, align 4
  %482 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %483 = ptrtoint %struct.sk_buff* %482 to i64
  %484 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %485 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %484, i32 0, i32 0
  store i64 %483, i64* %485, align 8
  br label %486

486:                                              ; preds = %476, %296
  br label %487

487:                                              ; preds = %486, %285
  %488 = load i32, i32* %14, align 4
  %489 = load i32, i32* @rxsync_frequency, align 4
  %490 = shl i32 1, %489
  %491 = sub nsw i32 %490, 1
  %492 = and i32 %488, %491
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %500

494:                                              ; preds = %487
  %495 = load i32, i32* @RXD_OWN_XENA, align 4
  %496 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %497 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = or i32 %498, %495
  store i32 %499, i32* %497, align 8
  br label %500

500:                                              ; preds = %494, %487
  %501 = load i32, i32* %10, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %10, align 4
  %503 = load i32, i32* %10, align 4
  %504 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %505 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 8
  %507 = add nsw i32 %506, 1
  %508 = icmp eq i32 %503, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %500
  store i32 0, i32* %10, align 4
  br label %510

510:                                              ; preds = %509, %500
  %511 = load i32, i32* %10, align 4
  %512 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %513 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %512, i32 0, i32 6
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 1
  store i32 %511, i32* %514, align 4
  %515 = load i32, i32* @SET_RXD_MARKER, align 4
  %516 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  %517 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 4
  %519 = or i32 %518, %515
  store i32 %519, i32* %517, align 4
  %520 = load i32, i32* %14, align 4
  %521 = load i32, i32* @rxsync_frequency, align 4
  %522 = shl i32 1, %521
  %523 = sub nsw i32 %522, 1
  %524 = and i32 %520, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %538, label %526

526:                                              ; preds = %510
  %527 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %528 = icmp ne %struct.RxD_t* %527, null
  br i1 %528, label %529, label %536

529:                                              ; preds = %526
  %530 = call i32 (...) @wmb()
  %531 = load i32, i32* @RXD_OWN_XENA, align 4
  %532 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %533 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 8
  %535 = or i32 %534, %531
  store i32 %535, i32* %533, align 8
  br label %536

536:                                              ; preds = %529, %526
  %537 = load %struct.RxD_t*, %struct.RxD_t** %9, align 8
  store %struct.RxD_t* %537, %struct.RxD_t** %18, align 8
  br label %538

538:                                              ; preds = %536, %510
  %539 = load %struct.ring_info*, %struct.ring_info** %6, align 8
  %540 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %540, align 4
  %543 = load i32, i32* %14, align 4
  %544 = add nsw i32 %543, 1
  store i32 %544, i32* %14, align 4
  br label %43

545:                                              ; preds = %43
  br label %546

546:                                              ; preds = %545, %177, %97
  %547 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %548 = icmp ne %struct.RxD_t* %547, null
  br i1 %548, label %549, label %556

549:                                              ; preds = %546
  %550 = call i32 (...) @wmb()
  %551 = load i32, i32* @RXD_OWN_XENA, align 4
  %552 = load %struct.RxD_t*, %struct.RxD_t** %18, align 8
  %553 = getelementptr inbounds %struct.RxD_t, %struct.RxD_t* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = or i32 %554, %551
  store i32 %555, i32* %553, align 8
  br label %556

556:                                              ; preds = %549, %546
  %557 = load i32, i32* @SUCCESS, align 4
  store i32 %557, i32* %4, align 4
  br label %576

558:                                              ; preds = %445, %420, %374, %284
  %559 = load %struct.swStat*, %struct.swStat** %24, align 8
  %560 = getelementptr inbounds %struct.swStat, %struct.swStat* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %560, align 4
  %563 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %564 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %563, i32 0, i32 0
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.swStat*, %struct.swStat** %24, align 8
  %567 = getelementptr inbounds %struct.swStat, %struct.swStat* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = sext i32 %568 to i64
  %570 = add nsw i64 %569, %565
  %571 = trunc i64 %570 to i32
  store i32 %571, i32* %567, align 4
  %572 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %573 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %572)
  %574 = load i32, i32* @ENOMEM, align 4
  %575 = sub nsw i32 0, %574
  store i32 %575, i32* %4, align 4
  br label %576

576:                                              ; preds = %558, %556, %232
  %577 = load i32, i32* %4, align 4
  ret i32 %577
}

declare dso_local i32 @DBG_PRINT(i32, i8*, i32, ...) #1

declare dso_local i32 @s2BIT(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @memset(%struct.RxD_t*, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @pci_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @SET_BUFFER0_SIZE_1(i32) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @SET_BUFFER0_SIZE_3(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @SET_BUFFER1_SIZE_3(i32) #1

declare dso_local i32 @SET_BUFFER2_SIZE_3(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
