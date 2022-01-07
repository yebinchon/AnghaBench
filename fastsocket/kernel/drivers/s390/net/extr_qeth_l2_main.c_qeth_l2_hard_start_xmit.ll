; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_8__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@CARD_STATE_UP = common dso_local global i64 0, align 8
@QETH_CARD_TYPE_OSN = common dso_local global i64 0, align 8
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@qeth_core_header_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qeth_l2_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qeth_card*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qeth_qdio_out_q*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.qeth_hdr* null, %struct.qeth_hdr** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.qeth_card*, %struct.qeth_card** %19, align 8
  store %struct.qeth_card* %20, %struct.qeth_card** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %10, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @qeth_get_ip_version(%struct.sk_buff* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @qeth_l2_get_cast_type(%struct.qeth_card* %24, %struct.sk_buff* %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %28 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %29, align 8
  %31 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @qeth_get_priority_queue(%struct.qeth_card* %31, %struct.sk_buff* %32, i32 %33, i32 %34)
  %36 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %30, i64 %35
  %37 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %36, align 8
  store %struct.qeth_qdio_out_q* %37, %struct.qeth_qdio_out_q** %13, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %41 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %42 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CARD_STATE_UP, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %2
  %47 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %48 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46, %2
  %52 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %53 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %272

57:                                               ; preds = %46
  %58 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ETH_P_IPV6, align 4
  %69 = call i64 @htons(i32 %68)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %272

72:                                               ; preds = %64, %57
  %73 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = call i64 (...) @qeth_get_micros()
  %85 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %78, %72
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = call i32 @netif_stop_queue(%struct.net_device* %89)
  %91 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @QETH_CARD_TYPE_OSN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.qeth_hdr*
  store %struct.qeth_hdr* %101, %struct.qeth_hdr** %7, align 8
  br label %163

102:                                              ; preds = %88
  %103 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %102
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %110, %struct.sk_buff** %10, align 8
  %111 = load i32, i32* @ETH_HLEN, align 4
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* @ETH_HLEN, align 4
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* @qeth_core_header_cache, align 4
  %114 = load i32, i32* @GFP_ATOMIC, align 4
  %115 = call %struct.qeth_hdr* @kmem_cache_alloc(i32 %113, i32 %114)
  store %struct.qeth_hdr* %115, %struct.qeth_hdr** %7, align 8
  %116 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %117 = icmp ne %struct.qeth_hdr* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %272

119:                                              ; preds = %109
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %123 = call i32 @skb_reset_mac_header(%struct.sk_buff* %122)
  %124 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %125 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @qeth_l2_fill_header(%struct.qeth_card* %124, %struct.qeth_hdr* %125, %struct.sk_buff* %126, i32 %127, i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %134 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %138 = bitcast %struct.qeth_hdr* %137 to i8*
  %139 = getelementptr inbounds i8, i8* %138, i64 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = call i32 @skb_mac_header(%struct.sk_buff* %140)
  %142 = load i32, i32* @ETH_HLEN, align 4
  %143 = call i32 @memcpy(i8* %139, i32 %141, i32 %142)
  br label %162

144:                                              ; preds = %102
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %145, i32 4)
  store %struct.sk_buff* %146, %struct.sk_buff** %10, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %272

150:                                              ; preds = %144
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = call i64 @skb_push(%struct.sk_buff* %151, i32 4)
  %153 = inttoptr i64 %152 to %struct.qeth_hdr*
  store %struct.qeth_hdr* %153, %struct.qeth_hdr** %7, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = call i32 @skb_set_mac_header(%struct.sk_buff* %154, i32 4)
  %156 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %157 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @qeth_l2_fill_header(%struct.qeth_card* %156, %struct.qeth_hdr* %157, %struct.sk_buff* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %150, %119
  br label %163

163:                                              ; preds = %162, %97
  %164 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %165 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %166 = bitcast %struct.qeth_hdr* %165 to i8*
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = load i32, i32* %16, align 4
  %169 = call i32 @qeth_get_elements_no(%struct.qeth_card* %164, i8* %166, %struct.sk_buff* %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %15, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* @qeth_core_header_cache, align 4
  %177 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %178 = call i32 @kmem_cache_free(i32 %176, %struct.qeth_hdr* %177)
  br label %179

179:                                              ; preds = %175, %172
  br label %272

180:                                              ; preds = %163
  %181 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %182 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %180
  %188 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %189 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %13, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @qeth_do_send_packet(%struct.qeth_card* %188, %struct.qeth_qdio_out_q* %189, %struct.sk_buff* %190, %struct.qeth_hdr* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  br label %203

194:                                              ; preds = %180
  %195 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %196 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %13, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %198 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @qeth_do_send_packet_fast(%struct.qeth_card* %195, %struct.qeth_qdio_out_q* %196, %struct.sk_buff* %197, %struct.qeth_hdr* %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %194, %187
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %203
  %207 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %208 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %214 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, %212
  store i32 %217, i32* %215, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = icmp ne %struct.sk_buff* %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %206
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %222)
  br label %224

224:                                              ; preds = %221, %206
  %225 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %225, i32* %6, align 4
  br label %248

226:                                              ; preds = %203
  %227 = load i32, i32* %15, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* @qeth_core_header_cache, align 4
  %231 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %232 = call i32 @kmem_cache_free(i32 %230, %struct.qeth_hdr* %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @EBUSY, align 4
  %236 = sub nsw i32 0, %235
  %237 = icmp eq i32 %234, %236
  br i1 %237, label %238, label %247

238:                                              ; preds = %233
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = icmp ne %struct.sk_buff* %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %244 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %243)
  br label %245

245:                                              ; preds = %242, %238
  %246 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %246, i32* %3, align 4
  br label %298

247:                                              ; preds = %233
  br label %272

248:                                              ; preds = %224
  %249 = load %struct.net_device*, %struct.net_device** %5, align 8
  %250 = call i32 @netif_wake_queue(%struct.net_device* %249)
  %251 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %252 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %248
  %257 = call i64 (...) @qeth_get_micros()
  %258 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %259 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = sub nsw i64 %257, %261
  %263 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %264 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %262
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %265, align 8
  br label %270

270:                                              ; preds = %256, %248
  %271 = load i32, i32* %6, align 4
  store i32 %271, i32* %3, align 4
  br label %298

272:                                              ; preds = %247, %179, %149, %118, %71, %51
  %273 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %274 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %275, align 8
  %278 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  %279 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %280, align 4
  %283 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %285 = icmp ne %struct.sk_buff* %283, %284
  br i1 %285, label %286, label %292

286:                                              ; preds = %272
  %287 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %288 = icmp ne %struct.sk_buff* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %291 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %290)
  br label %292

292:                                              ; preds = %289, %286, %272
  %293 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %294 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %293)
  %295 = load %struct.net_device*, %struct.net_device** %5, align 8
  %296 = call i32 @netif_wake_queue(%struct.net_device* %295)
  %297 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %297, i32* %3, align 4
  br label %298

298:                                              ; preds = %292, %270, %245
  %299 = load i32, i32* %3, align 4
  ret i32 %299
}

declare dso_local i32 @qeth_get_ip_version(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l2_get_cast_type(%struct.qeth_card*, %struct.sk_buff*) #1

declare dso_local i64 @qeth_get_priority_queue(%struct.qeth_card*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @qeth_get_micros(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local %struct.qeth_hdr* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l2_fill_header(%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @qeth_get_elements_no(%struct.qeth_card*, i8*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qeth_hdr*) #1

declare dso_local i32 @qeth_do_send_packet(%struct.qeth_card*, %struct.qeth_qdio_out_q*, %struct.sk_buff*, %struct.qeth_hdr*, i32) #1

declare dso_local i32 @qeth_do_send_packet_fast(%struct.qeth_card*, %struct.qeth_qdio_out_q*, %struct.sk_buff*, %struct.qeth_hdr*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
