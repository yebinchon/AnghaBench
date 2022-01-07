; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_korina.c_korina_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.korina_private = type { i64, %struct.sk_buff**, i32, %struct.TYPE_4__*, %struct.dma_desc* }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dma_desc = type { i64, i32, i8* }

@KORINA_RBSIZE = common dso_local global i32 0, align 4
@ETH_RX_CRC = common dso_local global i64 0, align 8
@ETH_RX_LOR = common dso_local global i64 0, align 8
@ETH_RX_LE = common dso_local global i64 0, align 8
@ETH_RX_OVR = common dso_local global i64 0, align 8
@ETH_RX_CV = common dso_local global i64 0, align 8
@ETH_RX_CES = common dso_local global i64 0, align 8
@ETH_RX_MP = common dso_local global i64 0, align 8
@ETH_RX_LD = common dso_local global i64 0, align 8
@ETH_RX_ROK = common dso_local global i64 0, align 8
@DMA_DESC_COD = common dso_local global i32 0, align 4
@DMA_DESC_IOD = common dso_local global i32 0, align 4
@KORINA_RDS_MASK = common dso_local global i32 0, align 4
@DMA_STAT_DONE = common dso_local global i64 0, align 8
@DMA_STAT_HALT = common dso_local global i64 0, align 8
@DMA_STAT_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @korina_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.korina_private*, align 8
  %6 = alloca %struct.dma_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.korina_private* @netdev_priv(%struct.net_device* %14)
  store %struct.korina_private* %15, %struct.korina_private** %5, align 8
  %16 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %17 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %16, i32 0, i32 4
  %18 = load %struct.dma_desc*, %struct.dma_desc** %17, align 8
  %19 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %20 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %18, i64 %21
  store %struct.dma_desc* %22, %struct.dma_desc** %6, align 8
  %23 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %24 = ptrtoint %struct.dma_desc* %23 to i64
  %25 = call i32 @dma_cache_inv(i64 %24, i64 24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %294, %2
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %297

30:                                               ; preds = %26
  %31 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %32 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %31, i32 0, i32 1
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %35 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %36
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %39 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %40 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i32, i32* @KORINA_RBSIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %45 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @DMA_COUNT(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %43, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %297

52:                                               ; preds = %30
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @ETH_RX_CRC, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* @ETH_RX_LOR, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @ETH_RX_LE, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @ETH_RX_OVR, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @ETH_RX_CV, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* @ETH_RX_CES, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %107
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* @ETH_RX_MP, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %118
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @ETH_RX_LD, align 8
  %132 = and i64 %130, %131
  %133 = load i64, i64* @ETH_RX_LD, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %129
  %136 = load %struct.net_device*, %struct.net_device** %3, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %224

146:                                              ; preds = %129
  %147 = load i64, i64* %10, align 8
  %148 = load i64, i64* @ETH_RX_ROK, align 8
  %149 = and i64 %147, %148
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %223

151:                                              ; preds = %146
  %152 = load i64, i64* %10, align 8
  %153 = call i64 @RCVPKT_LENGTH(i64 %152)
  store i64 %153, i64* %11, align 8
  %154 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %155 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %154, i32 0, i32 1
  %156 = load %struct.sk_buff**, %struct.sk_buff*** %155, align 8
  %157 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %158 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %156, i64 %159
  %161 = load %struct.sk_buff*, %struct.sk_buff** %160, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  store i32* %164, i32** %9, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = ptrtoint i32* %165 to i64
  %167 = load i64, i64* %11, align 8
  %168 = sub nsw i64 %167, 4
  %169 = call i32 @dma_cache_inv(i64 %166, i64 %168)
  %170 = load %struct.net_device*, %struct.net_device** %3, align 8
  %171 = load i32, i32* @KORINA_RBSIZE, align 4
  %172 = add nsw i32 %171, 2
  %173 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %170, i32 %172)
  store %struct.sk_buff* %173, %struct.sk_buff** %8, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %175 = icmp ne %struct.sk_buff* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %151
  br label %297

177:                                              ; preds = %151
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = load i64, i64* %11, align 8
  %180 = sub nsw i64 %179, 4
  %181 = call i32 @skb_put(%struct.sk_buff* %178, i64 %180)
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = load %struct.net_device*, %struct.net_device** %3, align 8
  %184 = call i32 @eth_type_trans(%struct.sk_buff* %182, %struct.net_device* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %188 = call i32 @netif_receive_skb(%struct.sk_buff* %187)
  %189 = load %struct.net_device*, %struct.net_device** %3, align 8
  %190 = getelementptr inbounds %struct.net_device, %struct.net_device* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load i64, i64* %11, align 8
  %195 = load %struct.net_device*, %struct.net_device** %3, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %194
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* @ETH_RX_MP, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %177
  %207 = load %struct.net_device*, %struct.net_device** %3, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %206, %177
  %213 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %214 = call i32 @skb_reserve(%struct.sk_buff* %213, i32 2)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %216 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %217 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %216, i32 0, i32 1
  %218 = load %struct.sk_buff**, %struct.sk_buff*** %217, align 8
  %219 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %220 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %218, i64 %221
  store %struct.sk_buff* %215, %struct.sk_buff** %222, align 8
  br label %223

223:                                              ; preds = %212, %146
  br label %224

224:                                              ; preds = %223, %135
  %225 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %226 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %228 = icmp ne %struct.sk_buff* %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i8* @CPHYSADDR(i64 %232)
  %234 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %235 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  br label %243

236:                                              ; preds = %224
  %237 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i8* @CPHYSADDR(i64 %239)
  %241 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %242 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %241, i32 0, i32 2
  store i8* %240, i8** %242, align 8
  br label %243

243:                                              ; preds = %236, %229
  %244 = load i32, i32* @KORINA_RBSIZE, align 4
  %245 = call i32 @DMA_COUNT(i32 %244)
  %246 = load i32, i32* @DMA_DESC_COD, align 4
  %247 = or i32 %245, %246
  %248 = load i32, i32* @DMA_DESC_IOD, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %251 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* @DMA_DESC_COD, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %255 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %254, i32 0, i32 4
  %256 = load %struct.dma_desc*, %struct.dma_desc** %255, align 8
  %257 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %258 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = sub i64 %259, 1
  %261 = load i32, i32* @KORINA_RDS_MASK, align 4
  %262 = sext i32 %261 to i64
  %263 = and i64 %260, %262
  %264 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %256, i64 %263
  %265 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %253
  store i32 %267, i32* %265, align 8
  %268 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %269 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = add i64 %270, 1
  %272 = load i32, i32* @KORINA_RDS_MASK, align 4
  %273 = sext i32 %272 to i64
  %274 = and i64 %271, %273
  %275 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %276 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %278 = ptrtoint %struct.dma_desc* %277 to i64
  %279 = call i32 @dma_cache_wback(i64 %278, i32 24)
  %280 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %281 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %280, i32 0, i32 4
  %282 = load %struct.dma_desc*, %struct.dma_desc** %281, align 8
  %283 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %284 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %282, i64 %285
  store %struct.dma_desc* %286, %struct.dma_desc** %6, align 8
  %287 = load i64, i64* @DMA_STAT_DONE, align 8
  %288 = xor i64 %287, -1
  %289 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %290 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %289, i32 0, i32 3
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = call i32 @writel(i64 %288, i32* %292)
  br label %294

294:                                              ; preds = %243
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %13, align 4
  br label %26

297:                                              ; preds = %176, %51, %26
  %298 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %299 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %298, i32 0, i32 3
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 0
  %302 = call i64 @readl(i32* %301)
  store i64 %302, i64* %12, align 8
  %303 = load i64, i64* %12, align 8
  %304 = load i64, i64* @DMA_STAT_HALT, align 8
  %305 = and i64 %303, %304
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %343

307:                                              ; preds = %297
  %308 = load i64, i64* @DMA_STAT_HALT, align 8
  %309 = load i64, i64* @DMA_STAT_ERR, align 8
  %310 = or i64 %308, %309
  %311 = xor i64 %310, -1
  %312 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %313 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %312, i32 0, i32 3
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = call i32 @writel(i64 %311, i32* %315)
  %317 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %318 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %322 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %321, i32 0, i32 0
  store i64 0, i64* %322, align 8
  %323 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %324 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %323, i32 0, i32 1
  %325 = load %struct.sk_buff**, %struct.sk_buff*** %324, align 8
  %326 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %327 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %325, i64 %328
  %330 = load %struct.sk_buff*, %struct.sk_buff** %329, align 8
  store %struct.sk_buff* %330, %struct.sk_buff** %7, align 8
  %331 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %332 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = call i8* @CPHYSADDR(i64 %333)
  %335 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %336 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %335, i32 0, i32 2
  store i8* %334, i8** %336, align 8
  %337 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %338 = ptrtoint %struct.dma_desc* %337 to i64
  %339 = call i32 @dma_cache_wback(i64 %338, i32 24)
  %340 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %341 = load %struct.dma_desc*, %struct.dma_desc** %6, align 8
  %342 = call i32 @korina_chain_rx(%struct.korina_private* %340, %struct.dma_desc* %341)
  br label %343

343:                                              ; preds = %307, %297
  %344 = load i32, i32* %13, align 4
  ret i32 %344
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_cache_inv(i64, i64) #1

declare dso_local i32 @DMA_COUNT(i32) #1

declare dso_local i64 @RCVPKT_LENGTH(i64) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @CPHYSADDR(i64) #1

declare dso_local i32 @dma_cache_wback(i64, i32) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @korina_chain_rx(%struct.korina_private*, %struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
