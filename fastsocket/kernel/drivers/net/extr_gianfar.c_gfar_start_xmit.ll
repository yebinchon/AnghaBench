; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.net_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.gfar_private = type { i32, i64, i32, %struct.TYPE_9__*, i32, %struct.txbd8*, %struct.TYPE_7__*, %struct.sk_buff**, i64, %struct.txbd8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.txbd8 = type { i32, i32 }
%struct.txfcb = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GMAC_FCB_LEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TXBD_LAST = common dso_local global i32 0, align 4
@TXBD_INTERRUPT = common dso_local global i32 0, align 4
@TXBD_READY = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TXBD_TOE = common dso_local global i32 0, align 4
@TXBD_CRC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TSTAT_CLEAR_THALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @gfar_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca %struct.txfcb*, align 8
  %8 = alloca %struct.txbd8*, align 8
  %9 = alloca %struct.txbd8*, align 8
  %10 = alloca %struct.txbd8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %18)
  store %struct.gfar_private* %19, %struct.gfar_private** %6, align 8
  store %struct.txfcb* null, %struct.txfcb** %7, align 8
  %20 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %21 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %20, i32 0, i32 9
  %22 = load %struct.txbd8*, %struct.txbd8** %21, align 8
  store %struct.txbd8* %22, %struct.txbd8** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33, %2
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i64 @skb_headroom(%struct.sk_buff* %38)
  %40 = load i64, i64* @GMAC_FCB_LEN, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i64, i64* @GMAC_FCB_LEN, align 8
  %45 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %43, i64 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %17, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %325

57:                                               ; preds = %42
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %60, %struct.sk_buff** %4, align 8
  br label %61

61:                                               ; preds = %57, %37, %33, %28
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  %66 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %67 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %66, i32 0, i32 2
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load i32, i32* %15, align 4
  %71 = add i32 %70, 1
  %72 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %73 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ugt i32 %71, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %61
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i32 @netif_stop_queue(%struct.net_device* %77)
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %85 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %84, i32 0, i32 2
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %88, i32* %3, align 4
  br label %325

89:                                               ; preds = %61
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %101 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %100, i32 0, i32 5
  %102 = load %struct.txbd8*, %struct.txbd8** %101, align 8
  store %struct.txbd8* %102, %struct.txbd8** %9, align 8
  store %struct.txbd8* %102, %struct.txbd8** %8, align 8
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %89
  %106 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %107 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @TXBD_LAST, align 4
  %110 = load i32, i32* @TXBD_INTERRUPT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @BD_LFLAG(i32 %111)
  %113 = or i32 %108, %112
  store i32 %113, i32* %11, align 4
  br label %194

114:                                              ; preds = %89
  store i32 0, i32* %12, align 4
  br label %115

115:                                              ; preds = %187, %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %115
  %120 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %121 = load %struct.txbd8*, %struct.txbd8** %10, align 8
  %122 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %123 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i8* @next_txbd(%struct.txbd8* %120, %struct.txbd8* %121, i32 %124)
  %126 = bitcast i8* %125 to %struct.txbd8*
  store %struct.txbd8* %126, %struct.txbd8** %8, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %16, align 4
  %136 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %137 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %16, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @TXBD_READY, align 4
  %142 = call i32 @BD_LFLAG(i32 %141)
  %143 = or i32 %140, %142
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %15, align 4
  %146 = sub i32 %145, 1
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %119
  %149 = load i32, i32* @TXBD_LAST, align 4
  %150 = load i32, i32* @TXBD_INTERRUPT, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @BD_LFLAG(i32 %151)
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %148, %119
  %156 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %157 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %156, i32 0, i32 6
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %169)
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* @DMA_TO_DEVICE, align 4
  %180 = call i32 @dma_map_page(i32* %159, i32 %168, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %183 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %186 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 4
  br label %187

187:                                              ; preds = %155
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %115

190:                                              ; preds = %115
  %191 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %192 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %190, %105
  %195 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %195, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %194
  %201 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %202 = call %struct.txfcb* @gfar_add_fcb(%struct.sk_buff* %201)
  store %struct.txfcb* %202, %struct.txfcb** %7, align 8
  %203 = load i32, i32* @TXBD_TOE, align 4
  %204 = call i32 @BD_LFLAG(i32 %203)
  %205 = load i32, i32* %11, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %11, align 4
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load %struct.txfcb*, %struct.txfcb** %7, align 8
  %209 = call i32 @gfar_tx_checksum(%struct.sk_buff* %207, %struct.txfcb* %208)
  br label %210

210:                                              ; preds = %200, %194
  %211 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %212 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %210
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %215
  %220 = load %struct.txfcb*, %struct.txfcb** %7, align 8
  %221 = icmp eq %struct.txfcb* null, %220
  %222 = zext i1 %221 to i32
  %223 = call i64 @unlikely(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %219
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = call %struct.txfcb* @gfar_add_fcb(%struct.sk_buff* %226)
  store %struct.txfcb* %227, %struct.txfcb** %7, align 8
  %228 = load i32, i32* @TXBD_TOE, align 4
  %229 = call i32 @BD_LFLAG(i32 %228)
  %230 = load i32, i32* %11, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %225, %219
  %233 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %234 = load %struct.txfcb*, %struct.txfcb** %7, align 8
  %235 = call i32 @gfar_tx_vlan(%struct.sk_buff* %233, %struct.txfcb* %234)
  br label %236

236:                                              ; preds = %232, %215, %210
  %237 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %238 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %239 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %238, i32 0, i32 7
  %240 = load %struct.sk_buff**, %struct.sk_buff*** %239, align 8
  %241 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %242 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %240, i64 %243
  store %struct.sk_buff* %237, %struct.sk_buff** %244, align 8
  %245 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %246 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %245, i32 0, i32 6
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %253 = call i32 @skb_headlen(%struct.sk_buff* %252)
  %254 = load i32, i32* @DMA_TO_DEVICE, align 4
  %255 = call i32 @dma_map_single(i32* %248, i32 %251, i32 %253, i32 %254)
  %256 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %257 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* @TXBD_CRC, align 4
  %259 = load i32, i32* @TXBD_READY, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @BD_LFLAG(i32 %260)
  %262 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %263 = call i32 @skb_headlen(%struct.sk_buff* %262)
  %264 = or i32 %261, %263
  %265 = load i32, i32* %11, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %11, align 4
  %267 = call i32 (...) @eieio()
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.txbd8*, %struct.txbd8** %9, align 8
  %270 = getelementptr inbounds %struct.txbd8, %struct.txbd8* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  %271 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %272 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %273, 1
  %275 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %276 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @TX_RING_MOD_MASK(i32 %277)
  %279 = sext i32 %278 to i64
  %280 = and i64 %274, %279
  %281 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %282 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load %struct.txbd8*, %struct.txbd8** %8, align 8
  %284 = load %struct.txbd8*, %struct.txbd8** %10, align 8
  %285 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %286 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = call i8* @next_txbd(%struct.txbd8* %283, %struct.txbd8* %284, i32 %287)
  %289 = bitcast i8* %288 to %struct.txbd8*
  %290 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %291 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %290, i32 0, i32 5
  store %struct.txbd8* %289, %struct.txbd8** %291, align 8
  %292 = load i32, i32* %15, align 4
  %293 = add i32 %292, 1
  %294 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %295 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i32, i32* @jiffies, align 4
  %299 = load %struct.net_device*, %struct.net_device** %5, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %302 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %236
  %306 = load %struct.net_device*, %struct.net_device** %5, align 8
  %307 = call i32 @netif_stop_queue(%struct.net_device* %306)
  %308 = load %struct.net_device*, %struct.net_device** %5, align 8
  %309 = getelementptr inbounds %struct.net_device, %struct.net_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 4
  br label %313

313:                                              ; preds = %305, %236
  %314 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %315 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %314, i32 0, i32 3
  %316 = load %struct.TYPE_9__*, %struct.TYPE_9__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = load i32, i32* @TSTAT_CLEAR_THALT, align 4
  %319 = call i32 @gfar_write(i32* %317, i32 %318)
  %320 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %321 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %320, i32 0, i32 2
  %322 = load i64, i64* %14, align 8
  %323 = call i32 @spin_unlock_irqrestore(i32* %321, i64 %322)
  %324 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %324, i32* %3, align 4
  br label %325

325:                                              ; preds = %313, %76, %48
  %326 = load i32, i32* %3, align 4
  ret i32 %326
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local i8* @next_txbd(%struct.txbd8*, %struct.txbd8*, i32) #1

declare dso_local i32 @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.txfcb* @gfar_add_fcb(%struct.sk_buff*) #1

declare dso_local i32 @gfar_tx_checksum(%struct.sk_buff*, %struct.txfcb*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @gfar_tx_vlan(%struct.sk_buff*, %struct.txfcb*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @eieio(...) #1

declare dso_local i32 @TX_RING_MOD_MASK(i32) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
