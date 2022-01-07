; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_ctcm_main.c_ctcm_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, %struct.net_device*, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_7__*, i32, i64, %struct.sk_buff*, i32, i32 }
%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64, i32, %struct.ll_header*, i32 }
%struct.ll_header = type { i32, i64, i32 }

@CTC_STATE_TXIDLE = common dso_local global i64 0, align 8
@LL_HEADER_LENGTH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTC_STATE_TX = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"single skb TX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*, %struct.sk_buff*)* @ctcm_transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_transmit_skb(%struct.channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ll_header, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ctcm_priv*, align 8
  store %struct.channel* %0, %struct.channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.channel*, %struct.channel** %4, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 11
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.channel*, %struct.channel** %4, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @fsm_getstate(i32 %22)
  %24 = load i64, i64* @CTC_STATE_TXIDLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %31 = add i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.channel*, %struct.channel** %4, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.channel*, %struct.channel** %4, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 2
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %26
  %44 = load %struct.channel*, %struct.channel** %4, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 11
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %362

50:                                               ; preds = %26
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @skb_push(%struct.sk_buff* %61, i32 %63)
  %65 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %66 = call i32 @memcpy(i64 %64, %struct.ll_header* %7, i64 %65)
  %67 = load %struct.channel*, %struct.channel** %4, align 8
  %68 = getelementptr inbounds %struct.channel, %struct.channel* %67, i32 0, i32 12
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @skb_queue_tail(i32* %68, %struct.sk_buff* %69)
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.channel*, %struct.channel** %4, align 8
  %73 = getelementptr inbounds %struct.channel, %struct.channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %50
  %77 = load %struct.channel*, %struct.channel** %4, align 8
  %78 = getelementptr inbounds %struct.channel, %struct.channel* %77, i32 0, i32 11
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  br label %356

81:                                               ; preds = %2
  %82 = load %struct.channel*, %struct.channel** %4, align 8
  %83 = getelementptr inbounds %struct.channel, %struct.channel* %82, i32 0, i32 11
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 1
  %88 = call i32 @atomic_inc(i32* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.channel*, %struct.channel** %4, align 8
  %93 = getelementptr inbounds %struct.channel, %struct.channel* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %91
  store i64 %96, i64* %94, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %101 = add i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i64 @skb_push(%struct.sk_buff* %109, i32 %111)
  %113 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %114 = call i32 @memcpy(i64 %112, %struct.ll_header* %7, i64 %113)
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 2
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i64 @skb_push(%struct.sk_buff* %121, i32 2)
  %123 = inttoptr i64 %122 to i32*
  store i32 %120, i32* %123, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i64 @skb_tail_pointer(%struct.sk_buff* %124)
  %126 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %127 = add i64 %125, %126
  %128 = lshr i64 %127, 31
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %180

131:                                              ; preds = %81
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @GFP_ATOMIC, align 4
  %137 = load i32, i32* @GFP_DMA, align 4
  %138 = or i32 %136, %137
  %139 = call %struct.sk_buff* @alloc_skb(i32 %135, i32 %138)
  store %struct.sk_buff* %139, %struct.sk_buff** %11, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = icmp ne %struct.sk_buff* %140, null
  br i1 %141, label %156, label %142

142:                                              ; preds = %131
  %143 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 1
  %145 = call i32 @atomic_dec(i32* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %148 = add i64 %147, 2
  %149 = call i32 @skb_pull(%struct.sk_buff* %146, i64 %148)
  %150 = load %struct.channel*, %struct.channel** %4, align 8
  %151 = getelementptr inbounds %struct.channel, %struct.channel* %150, i32 0, i32 2
  %152 = load %struct.net_device*, %struct.net_device** %151, align 8
  %153 = call i32 @ctcm_clear_busy(%struct.net_device* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %362

156:                                              ; preds = %131
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i64 @skb_put(%struct.sk_buff* %157, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 2
  %165 = load %struct.ll_header*, %struct.ll_header** %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @memcpy(i64 %162, %struct.ll_header* %165, i64 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 1
  %172 = call i32 @atomic_inc(i32* %171)
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %173, i32 0, i32 1
  %175 = call i32 @atomic_dec(i32* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %178, %struct.sk_buff** %5, align 8
  br label %179

179:                                              ; preds = %156
  br label %180

180:                                              ; preds = %179, %81
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.channel*, %struct.channel** %4, align 8
  %183 = getelementptr inbounds %struct.channel, %struct.channel* %182, i32 0, i32 7
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i64 4
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 %181, i32* %186, align 4
  %187 = load %struct.channel*, %struct.channel** %4, align 8
  %188 = getelementptr inbounds %struct.channel, %struct.channel* %187, i32 0, i32 7
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i64 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 2
  %193 = load %struct.ll_header*, %struct.ll_header** %192, align 8
  %194 = call i64 @set_normalized_cda(%struct.TYPE_7__* %190, %struct.ll_header* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %251

196:                                              ; preds = %180
  %197 = load %struct.channel*, %struct.channel** %4, align 8
  %198 = call i64 @ctcm_checkalloc_buffer(%struct.channel* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %196
  %201 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  %203 = call i32 @atomic_dec(i32* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %206 = add i64 %205, 2
  %207 = call i32 @skb_pull(%struct.sk_buff* %204, i64 %206)
  %208 = load %struct.channel*, %struct.channel** %4, align 8
  %209 = getelementptr inbounds %struct.channel, %struct.channel* %208, i32 0, i32 2
  %210 = load %struct.net_device*, %struct.net_device** %209, align 8
  %211 = call i32 @ctcm_clear_busy(%struct.net_device* %210)
  %212 = load i32, i32* @ENOMEM, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %3, align 4
  br label %362

214:                                              ; preds = %196
  %215 = load %struct.channel*, %struct.channel** %4, align 8
  %216 = getelementptr inbounds %struct.channel, %struct.channel* %215, i32 0, i32 10
  %217 = load %struct.sk_buff*, %struct.sk_buff** %216, align 8
  %218 = call i32 @skb_reset_tail_pointer(%struct.sk_buff* %217)
  %219 = load %struct.channel*, %struct.channel** %4, align 8
  %220 = getelementptr inbounds %struct.channel, %struct.channel* %219, i32 0, i32 10
  %221 = load %struct.sk_buff*, %struct.sk_buff** %220, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = load %struct.channel*, %struct.channel** %4, align 8
  %228 = getelementptr inbounds %struct.channel, %struct.channel* %227, i32 0, i32 7
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 1
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  store i32 %226, i32* %231, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %233 = load %struct.channel*, %struct.channel** %4, align 8
  %234 = getelementptr inbounds %struct.channel, %struct.channel* %233, i32 0, i32 10
  %235 = load %struct.sk_buff*, %struct.sk_buff** %234, align 8
  %236 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %237 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = trunc i64 %238 to i32
  %240 = call i64 @skb_put(%struct.sk_buff* %235, i32 %239)
  %241 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %232, i64 %240, i32 %244)
  %246 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %247 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %246, i32 0, i32 1
  %248 = call i32 @atomic_dec(i32* %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %250 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %249)
  store i32 0, i32* %10, align 4
  br label %256

251:                                              ; preds = %180
  %252 = load %struct.channel*, %struct.channel** %4, align 8
  %253 = getelementptr inbounds %struct.channel, %struct.channel* %252, i32 0, i32 3
  %254 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %255 = call i32 @skb_queue_tail(i32* %253, %struct.sk_buff* %254)
  store i32 3, i32* %10, align 4
  br label %256

256:                                              ; preds = %251, %214
  %257 = load %struct.channel*, %struct.channel** %4, align 8
  %258 = getelementptr inbounds %struct.channel, %struct.channel* %257, i32 0, i32 9
  store i64 0, i64* %258, align 8
  %259 = load %struct.channel*, %struct.channel** %4, align 8
  %260 = getelementptr inbounds %struct.channel, %struct.channel* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @CTC_STATE_TX, align 4
  %263 = call i32 @fsm_newstate(i32 %261, i32 %262)
  %264 = load %struct.channel*, %struct.channel** %4, align 8
  %265 = getelementptr inbounds %struct.channel, %struct.channel* %264, i32 0, i32 4
  %266 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %267 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %268 = load %struct.channel*, %struct.channel** %4, align 8
  %269 = call i32 @fsm_addtimer(i32* %265, i32 %266, i32 %267, %struct.channel* %268)
  %270 = load %struct.channel*, %struct.channel** %4, align 8
  %271 = getelementptr inbounds %struct.channel, %struct.channel* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = call i32* @get_ccwdev_lock(i32 %272)
  %274 = load i64, i64* %6, align 8
  %275 = call i32 @spin_lock_irqsave(i32* %273, i64 %274)
  %276 = call i32 (...) @current_kernel_time()
  %277 = load %struct.channel*, %struct.channel** %4, align 8
  %278 = getelementptr inbounds %struct.channel, %struct.channel* %277, i32 0, i32 5
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  store i32 %276, i32* %279, align 4
  %280 = load %struct.channel*, %struct.channel** %4, align 8
  %281 = getelementptr inbounds %struct.channel, %struct.channel* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.channel*, %struct.channel** %4, align 8
  %284 = getelementptr inbounds %struct.channel, %struct.channel* %283, i32 0, i32 7
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i64 %287
  %289 = load %struct.channel*, %struct.channel** %4, align 8
  %290 = ptrtoint %struct.channel* %289 to i64
  %291 = call i32 @ccw_device_start(i32 %282, %struct.TYPE_7__* %288, i64 %290, i32 255, i32 0)
  store i32 %291, i32* %8, align 4
  %292 = load %struct.channel*, %struct.channel** %4, align 8
  %293 = getelementptr inbounds %struct.channel, %struct.channel* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = call i32* @get_ccwdev_lock(i32 %294)
  %296 = load i64, i64* %6, align 8
  %297 = call i32 @spin_unlock_irqrestore(i32* %295, i64 %296)
  %298 = load i32, i32* %10, align 4
  %299 = icmp eq i32 %298, 3
  br i1 %299, label %300, label %306

300:                                              ; preds = %256
  %301 = load %struct.channel*, %struct.channel** %4, align 8
  %302 = getelementptr inbounds %struct.channel, %struct.channel* %301, i32 0, i32 5
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 8
  br label %306

306:                                              ; preds = %300, %256
  %307 = load i32, i32* %8, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %327

309:                                              ; preds = %306
  %310 = load %struct.channel*, %struct.channel** %4, align 8
  %311 = getelementptr inbounds %struct.channel, %struct.channel* %310, i32 0, i32 4
  %312 = call i32 @fsm_deltimer(i32* %311)
  %313 = load %struct.channel*, %struct.channel** %4, align 8
  %314 = load i32, i32* %8, align 4
  %315 = call i32 @ctcm_ccw_check_rc(%struct.channel* %313, i32 %314, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %316 = load i32, i32* %10, align 4
  %317 = icmp eq i32 %316, 3
  br i1 %317, label %318, label %322

318:                                              ; preds = %309
  %319 = load %struct.channel*, %struct.channel** %4, align 8
  %320 = getelementptr inbounds %struct.channel, %struct.channel* %319, i32 0, i32 3
  %321 = call i32 @skb_dequeue_tail(i32* %320)
  br label %322

322:                                              ; preds = %318, %309
  %323 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %324 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %325 = add i64 %324, 2
  %326 = call i32 @skb_pull(%struct.sk_buff* %323, i64 %325)
  br label %355

327:                                              ; preds = %306
  %328 = load i32, i32* %10, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %354

330:                                              ; preds = %327
  %331 = load %struct.channel*, %struct.channel** %4, align 8
  %332 = getelementptr inbounds %struct.channel, %struct.channel* %331, i32 0, i32 2
  %333 = load %struct.net_device*, %struct.net_device** %332, align 8
  store %struct.net_device* %333, %struct.net_device** %14, align 8
  %334 = load %struct.net_device*, %struct.net_device** %14, align 8
  %335 = getelementptr inbounds %struct.net_device, %struct.net_device* %334, i32 0, i32 0
  %336 = load %struct.ctcm_priv*, %struct.ctcm_priv** %335, align 8
  store %struct.ctcm_priv* %336, %struct.ctcm_priv** %15, align 8
  %337 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  %338 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 4
  %342 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %343 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %346 = sub i64 %344, %345
  %347 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  %348 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = add i64 %351, %346
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %349, align 4
  br label %354

354:                                              ; preds = %330, %327
  br label %355

355:                                              ; preds = %354, %322
  br label %356

356:                                              ; preds = %355, %76
  %357 = load %struct.channel*, %struct.channel** %4, align 8
  %358 = getelementptr inbounds %struct.channel, %struct.channel* %357, i32 0, i32 2
  %359 = load %struct.net_device*, %struct.net_device** %358, align 8
  %360 = call i32 @ctcm_clear_busy(%struct.net_device* %359)
  %361 = load i32, i32* %8, align 4
  store i32 %361, i32* %3, align 4
  br label %362

362:                                              ; preds = %356, %200, %142, %43
  %363 = load i32, i32* %3, align 4
  ret i32 %363
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memcpy(i64, %struct.ll_header*, i64) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @ctcm_clear_busy(%struct.net_device*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @set_normalized_cda(%struct.TYPE_7__*, %struct.ll_header*) #1

declare dso_local i64 @ctcm_checkalloc_buffer(%struct.channel*) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32* @get_ccwdev_lock(i32) #1

declare dso_local i32 @current_kernel_time(...) #1

declare dso_local i32 @ccw_device_start(i32, %struct.TYPE_7__*, i64, i32, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

declare dso_local i32 @skb_dequeue_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
