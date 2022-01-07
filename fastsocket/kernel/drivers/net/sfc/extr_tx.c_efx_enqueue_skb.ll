; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_enqueue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, %struct.efx_tx_buffer*, i32, %struct.efx_nic* }
%struct.efx_tx_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.efx_nic = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EFX_TX_BUF_MAP_SINGLE = common dso_local global i16 0, align 2
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_CONT = common dso_local global i16 0, align 2
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFX_TX_BUF_SKB = common dso_local global i16 0, align 2
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c" TX queue %d could not map skb with %d bytes %d fragments for DMA\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_tx_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.efx_tx_buffer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 5
  %20 = load %struct.efx_nic*, %struct.efx_nic** %19, align 8
  store %struct.efx_nic* %20, %struct.efx_nic** %6, align 8
  %21 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %25 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @EFX_BUG_ON_PARANOID(i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @efx_enqueue_skb_tso(%struct.efx_tx_queue* %40, %struct.sk_buff* %41)
  store i32 %42, i32* %3, align 4
  br label %275

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call i32 @skb_headlen(%struct.sk_buff* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = call i64 @EFX_WORKAROUND_15592(%struct.efx_nic* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 32
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @EFX_BUG_ON_PARANOID(i32 %57)
  store i32 33, i32* %10, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub i32 %60, %63
  %65 = call i64 @skb_pad(%struct.sk_buff* %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %275

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %49, %43
  %71 = load i16, i16* @EFX_TX_BUF_MAP_SINGLE, align 2
  store i16 %71, i16* %16, align 2
  %72 = load %struct.device*, %struct.device** %7, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %78 = call i32 @dma_map_single(%struct.device* %72, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %70, %168
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @dma_mapping_error(%struct.device* %80, i32 %81)
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %201

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %147, %86
  %90 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %94 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %92, %95
  store i32 %96, i32* %12, align 4
  %97 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %98 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %97, i32 0, i32 3
  %99 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %99, i64 %101
  store %struct.efx_tx_buffer* %102, %struct.efx_tx_buffer** %8, align 8
  %103 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %104 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @EFX_BUG_ON_PARANOID(i32 %105)
  %107 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %108 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @EFX_BUG_ON_PARANOID(i32 %109)
  %111 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %112 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @EFX_BUG_ON_PARANOID(i32 %113)
  %115 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @efx_max_tx_len(%struct.efx_nic* %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp uge i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @likely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %89
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %15, align 4
  br label %126

126:                                              ; preds = %124, %89
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %129 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %132 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load i16, i16* @EFX_TX_BUF_CONT, align 2
  %134 = zext i16 %133 to i32
  %135 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %136 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %10, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %13, align 4
  %143 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %144 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %89, label %150

150:                                              ; preds = %147
  %151 = load i16, i16* @EFX_TX_BUF_CONT, align 2
  %152 = zext i16 %151 to i32
  %153 = load i16, i16* %16, align 2
  %154 = zext i16 %153 to i32
  %155 = or i32 %152, %154
  %156 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %157 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %160 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  store i32 0, i32* %11, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %162)
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %161, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %150
  br label %185

168:                                              ; preds = %150
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %169)
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32* %175, i32** %9, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = call i32 @skb_frag_size(i32* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  store i16 0, i16* %16, align 2
  %180 = load %struct.device*, %struct.device** %7, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @DMA_TO_DEVICE, align 4
  %184 = call i32 @skb_frag_dma_map(%struct.device* %180, i32* %181, i32 0, i32 %182, i32 %183)
  store i32 %184, i32* %13, align 4
  br label %79

185:                                              ; preds = %167
  %186 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %187 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %188 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %187, i32 0, i32 4
  store %struct.sk_buff* %186, %struct.sk_buff** %188, align 8
  %189 = load i16, i16* @EFX_TX_BUF_SKB, align 2
  %190 = zext i16 %189 to i32
  %191 = load i16, i16* %16, align 2
  %192 = zext i16 %191 to i32
  %193 = or i32 %190, %192
  %194 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %195 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  %196 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %197 = call i32 @efx_nic_push_buffers(%struct.efx_tx_queue* %196)
  %198 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %199 = call i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue* %198)
  %200 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %200, i32* %3, align 4
  br label %275

201:                                              ; preds = %85
  %202 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %203 = load i32, i32* @tx_err, align 4
  %204 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %205 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %208 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %213)
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  %218 = call i32 @netif_err(%struct.efx_nic* %202, i32 %203, i32 %206, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %209, i32 %212, i32 %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %220 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %219)
  br label %221

221:                                              ; preds = %229, %201
  %222 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %223 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %226 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %224, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %221
  %230 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %231 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add i32 %232, -1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %235 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %238 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %236, %239
  store i32 %240, i32* %12, align 4
  %241 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %242 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %241, i32 0, i32 3
  %243 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %242, align 8
  %244 = load i32, i32* %12, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %243, i64 %245
  store %struct.efx_tx_buffer* %246, %struct.efx_tx_buffer** %8, align 8
  %247 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %4, align 8
  %248 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %249 = call i32 @efx_dequeue_buffer(%struct.efx_tx_queue* %247, %struct.efx_tx_buffer* %248)
  br label %221

250:                                              ; preds = %221
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %273

253:                                              ; preds = %250
  %254 = load i16, i16* %16, align 2
  %255 = zext i16 %254 to i32
  %256 = load i16, i16* @EFX_TX_BUF_MAP_SINGLE, align 2
  %257 = zext i16 %256 to i32
  %258 = and i32 %255, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load %struct.device*, %struct.device** %7, align 8
  %262 = load i32, i32* %14, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* @DMA_TO_DEVICE, align 4
  %265 = call i32 @dma_unmap_single(%struct.device* %261, i32 %262, i32 %263, i32 %264)
  br label %272

266:                                              ; preds = %253
  %267 = load %struct.device*, %struct.device** %7, align 8
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* %11, align 4
  %270 = load i32, i32* @DMA_TO_DEVICE, align 4
  %271 = call i32 @dma_unmap_page(%struct.device* %267, i32 %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %266, %260
  br label %273

273:                                              ; preds = %272, %250
  %274 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %274, i32* %3, align 4
  br label %275

275:                                              ; preds = %273, %185, %67, %39
  %276 = load i32, i32* %3, align 4
  ret i32 %276
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @efx_enqueue_skb_tso(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @EFX_WORKAROUND_15592(%struct.efx_nic*) #1

declare dso_local i64 @skb_pad(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @efx_max_tx_len(%struct.efx_nic*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(%struct.device*, i32*, i32, i32, i32) #1

declare dso_local i32 @efx_nic_push_buffers(%struct.efx_tx_queue*) #1

declare dso_local i32 @efx_tx_maybe_stop_queue(%struct.efx_tx_queue*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @efx_dequeue_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
