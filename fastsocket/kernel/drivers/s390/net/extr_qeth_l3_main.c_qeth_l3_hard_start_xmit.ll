; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i64, %struct.TYPE_13__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_14__, i64, %struct.TYPE_15__*, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { %struct.qeth_qdio_out_q** }
%struct.qeth_qdio_out_q = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@QETH_LARGE_SEND_NO = common dso_local global i32 0, align 4
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@ETH_P_AF_IUCV = common dso_local global i64 0, align 8
@CARD_STATE_UP = common dso_local global i64 0, align 8
@RTN_BROADCAST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@qeth_core_header_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ARPHRD_IEEE802_TR = common dso_local global i64 0, align 8
@TR_HLEN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@QETH_LARGE_SEND_TSO = common dso_local global i32 0, align 4
@RTN_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"tso skb misaligned\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @qeth_l3_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qeth_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_card*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qeth_qdio_out_q*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.qeth_hdr* null, %struct.qeth_hdr** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load %struct.qeth_card*, %struct.qeth_card** %21, align 8
  store %struct.qeth_card* %22, %struct.qeth_card** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @qeth_get_ip_version(%struct.sk_buff* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @qeth_l3_get_cast_type(%struct.qeth_card* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.qeth_qdio_out_q**, %struct.qeth_qdio_out_q*** %30, align 8
  %32 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @qeth_get_priority_queue(%struct.qeth_card* %32, %struct.sk_buff* %33, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %31, i64 %36
  %38 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %37, align 8
  store %struct.qeth_qdio_out_q* %38, %struct.qeth_qdio_out_q** %15, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* @QETH_LARGE_SEND_NO, align 4
  store i32 %42, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %43 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %2
  %50 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %51 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56, %49
  %60 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %61 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66, %59, %2
  %73 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %74 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %66, %56
  br label %531

79:                                               ; preds = %72
  %80 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CARD_STATE_UP, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %87 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %79
  %91 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  br label %531

96:                                               ; preds = %85
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @RTN_BROADCAST, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %102 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %531

107:                                              ; preds = %100, %96
  %108 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %115 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = call i64 (...) @qeth_get_micros()
  %120 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %121 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %107
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = call i64 @skb_is_gso(%struct.sk_buff* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %129 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %168

139:                                              ; preds = %132
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %139
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call %struct.TYPE_18__* @skb_shinfo(%struct.sk_buff* %143)
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %142
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %149, %struct.sk_buff** %12, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  br label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @ETH_HLEN, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = load i32, i32* @qeth_core_header_cache, align 4
  %160 = load i32, i32* @GFP_ATOMIC, align 4
  %161 = call %struct.qeth_hdr* @kmem_cache_alloc(i32 %159, i32 %160)
  store %struct.qeth_hdr* %161, %struct.qeth_hdr** %8, align 8
  %162 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %163 = icmp ne %struct.qeth_hdr* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %158
  br label %531

165:                                              ; preds = %158
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %179

168:                                              ; preds = %142, %139, %132
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = load i32, i32* @VLAN_HLEN, align 4
  %171 = sext i32 %170 to i64
  %172 = add i64 4, %171
  %173 = trunc i64 %172 to i32
  %174 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %169, i32 %173)
  store %struct.sk_buff* %174, %struct.sk_buff** %12, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %176 = icmp ne %struct.sk_buff* %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %168
  br label %531

178:                                              ; preds = %168
  br label %179

179:                                              ; preds = %178, %165
  %180 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %181 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %179
  %187 = load i32, i32* %18, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %191 = load i32, i32* @ETH_HLEN, align 4
  %192 = call i32 @skb_pull(%struct.sk_buff* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %186
  br label %262

194:                                              ; preds = %179
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %195, 4
  br i1 %196, label %197, label %214

197:                                              ; preds = %194
  %198 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %199 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %198, i32 0, i32 6
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @ARPHRD_IEEE802_TR, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %197
  %206 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %207 = load i32, i32* @TR_HLEN, align 4
  %208 = call i32 @skb_pull(%struct.sk_buff* %206, i32 %207)
  br label %213

209:                                              ; preds = %197
  %210 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %211 = load i32, i32* @ETH_HLEN, align 4
  %212 = call i32 @skb_pull(%struct.sk_buff* %210, i32 %211)
  br label %213

213:                                              ; preds = %209, %205
  br label %214

214:                                              ; preds = %213, %194
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 4
  br i1 %216, label %217, label %261

217:                                              ; preds = %214
  %218 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %219 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %261

222:                                              ; preds = %217
  %223 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %224 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %261

226:                                              ; preds = %222
  %227 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %228 = load i32, i32* @VLAN_HLEN, align 4
  %229 = call i64 @skb_push(%struct.sk_buff* %227, i32 %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 4
  %235 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %230, i64 %234, i32 4)
  %236 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 8
  %241 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %236, i32 4, i64 %240, i32 4)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 12
  %247 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %242, i32 8, i64 %246, i32 4)
  %248 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 12
  %252 = inttoptr i64 %251 to i32*
  store i32* %252, i32** %7, align 8
  %253 = load i32, i32* @ETH_P_8021Q, align 4
  %254 = call i32 @__constant_htons(i32 %253)
  %255 = load i32*, i32** %7, align 8
  store i32 %254, i32* %255, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %257 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %256)
  %258 = call i32 @htons(i32 %257)
  %259 = load i32*, i32** %7, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %226, %222, %217, %214
  br label %262

262:                                              ; preds = %261, %193
  %263 = load %struct.net_device*, %struct.net_device** %5, align 8
  %264 = call i32 @netif_stop_queue(%struct.net_device* %263)
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* @QETH_LARGE_SEND_TSO, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %292

268:                                              ; preds = %262
  %269 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %270 = call i32 @qeth_l3_tso_elements(%struct.sk_buff* %269)
  %271 = add nsw i32 %270, 1
  %272 = icmp sgt i32 %271, 16
  br i1 %272, label %273, label %291

273:                                              ; preds = %268
  %274 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %275 = call i64 @skb_linearize(%struct.sk_buff* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  br label %531

278:                                              ; preds = %273
  %279 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %280 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %286 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %284, %278
  br label %291

291:                                              ; preds = %290, %268
  br label %292

292:                                              ; preds = %291, %262
  %293 = load i32, i32* %17, align 4
  %294 = load i32, i32* @QETH_LARGE_SEND_TSO, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %324

296:                                              ; preds = %292
  %297 = load i32, i32* %14, align 4
  %298 = load i32, i32* @RTN_UNSPEC, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %324

300:                                              ; preds = %296
  %301 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %302 = call i64 @skb_push(%struct.sk_buff* %301, i32 4)
  %303 = inttoptr i64 %302 to %struct.qeth_hdr*
  store %struct.qeth_hdr* %303, %struct.qeth_hdr** %8, align 8
  %304 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %305 = call i64 @qeth_l3_tso_check(%struct.sk_buff* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %300
  %308 = call i32 @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %309

309:                                              ; preds = %307, %300
  %310 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %311 = call i32 @memset(%struct.qeth_hdr* %310, i32 0, i32 4)
  %312 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %313 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %314 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %14, align 4
  %317 = call i32 @qeth_l3_fill_header(%struct.qeth_card* %312, %struct.qeth_hdr* %313, %struct.sk_buff* %314, i32 %315, i32 %316)
  %318 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %319 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %320 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %321 = call i32 @qeth_tso_fill_header(%struct.qeth_card* %318, %struct.qeth_hdr* %319, %struct.sk_buff* %320)
  %322 = load i32, i32* %9, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %9, align 4
  br label %377

324:                                              ; preds = %296, %292
  %325 = load i32, i32* %18, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %324
  %328 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %329 = call i64 @skb_push(%struct.sk_buff* %328, i32 4)
  %330 = inttoptr i64 %329 to %struct.qeth_hdr*
  store %struct.qeth_hdr* %330, %struct.qeth_hdr** %8, align 8
  %331 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %332 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %333 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %334 = load i32, i32* %13, align 4
  %335 = load i32, i32* %14, align 4
  %336 = call i32 @qeth_l3_fill_header(%struct.qeth_card* %331, %struct.qeth_hdr* %332, %struct.sk_buff* %333, i32 %334, i32 %335)
  br label %365

337:                                              ; preds = %324
  %338 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %339 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %337
  %344 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %345 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %346 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %347 = call i32 @qeth_l3_fill_af_iucv_hdr(%struct.qeth_card* %344, %struct.qeth_hdr* %345, %struct.sk_buff* %346)
  br label %364

348:                                              ; preds = %337
  %349 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %350 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %351 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %352 = load i32, i32* %13, align 4
  %353 = load i32, i32* %14, align 4
  %354 = call i32 @qeth_l3_fill_header(%struct.qeth_card* %349, %struct.qeth_hdr* %350, %struct.sk_buff* %351, i32 %352, i32 %353)
  %355 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %356 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %18, align 4
  %359 = sub nsw i32 %357, %358
  %360 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %361 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  store i32 %359, i32* %363, align 4
  br label %364

364:                                              ; preds = %348, %343
  br label %365

365:                                              ; preds = %364, %327
  %366 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %367 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %365
  %372 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %373 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %374 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %375 = call i32 @qeth_l3_hdr_csum(%struct.qeth_card* %372, %struct.qeth_hdr* %373, %struct.sk_buff* %374)
  br label %376

376:                                              ; preds = %371, %365
  br label %377

377:                                              ; preds = %376, %309
  %378 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %379 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %380 = bitcast %struct.qeth_hdr* %379 to i8*
  %381 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %382 = load i32, i32* %9, align 4
  %383 = call i32 @qeth_get_elements_no(%struct.qeth_card* %378, i8* %380, %struct.sk_buff* %381, i32 %382)
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* %10, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %394, label %386

386:                                              ; preds = %377
  %387 = load i32, i32* %18, align 4
  %388 = icmp sge i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load i32, i32* @qeth_core_header_cache, align 4
  %391 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %392 = call i32 @kmem_cache_free(i32 %390, %struct.qeth_hdr* %391)
  br label %393

393:                                              ; preds = %389, %386
  br label %531

394:                                              ; preds = %377
  %395 = load i32, i32* %10, align 4
  %396 = load i32, i32* %9, align 4
  %397 = add nsw i32 %396, %395
  store i32 %397, i32* %9, align 4
  %398 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %399 = call %struct.TYPE_18__* @skb_shinfo(%struct.sk_buff* %398)
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  store i32 %401, i32* %19, align 4
  %402 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %403 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %394
  %409 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %410 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %15, align 8
  %411 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %412 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %413 = load i32, i32* %9, align 4
  %414 = call i32 @qeth_do_send_packet(%struct.qeth_card* %409, %struct.qeth_qdio_out_q* %410, %struct.sk_buff* %411, %struct.qeth_hdr* %412, i32 %413)
  store i32 %414, i32* %6, align 4
  br label %423

415:                                              ; preds = %394
  %416 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %417 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %15, align 8
  %418 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %419 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %18, align 4
  %422 = call i32 @qeth_do_send_packet_fast(%struct.qeth_card* %416, %struct.qeth_qdio_out_q* %417, %struct.sk_buff* %418, %struct.qeth_hdr* %419, i32 %420, i32 %421, i32 0)
  store i32 %422, i32* %6, align 4
  br label %423

423:                                              ; preds = %415, %408
  %424 = load i32, i32* %6, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %485, label %426

426:                                              ; preds = %423
  %427 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %428 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %429, align 4
  %432 = load i32, i32* %16, align 4
  %433 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %434 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = add nsw i32 %436, %432
  store i32 %437, i32* %435, align 8
  %438 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %439 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %440 = icmp ne %struct.sk_buff* %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %426
  %442 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %443 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %442)
  br label %444

444:                                              ; preds = %441, %426
  %445 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %446 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %445, i32 0, i32 3
  %447 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %483

450:                                              ; preds = %444
  %451 = load i32, i32* %17, align 4
  %452 = load i32, i32* @QETH_LARGE_SEND_NO, align 4
  %453 = icmp ne i32 %451, %452
  br i1 %453, label %454, label %466

454:                                              ; preds = %450
  %455 = load i32, i32* %16, align 4
  %456 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %457 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = add nsw i32 %459, %455
  store i32 %460, i32* %458, align 8
  %461 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %462 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %461, i32 0, i32 2
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 5
  %464 = load i32, i32* %463, align 8
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %463, align 8
  br label %466

466:                                              ; preds = %454, %450
  %467 = load i32, i32* %19, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %482

469:                                              ; preds = %466
  %470 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %471 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 4
  %475 = load i32, i32* %19, align 4
  %476 = add nsw i32 %475, 1
  %477 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %478 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, %476
  store i32 %481, i32* %479, align 4
  br label %482

482:                                              ; preds = %469, %466
  br label %483

483:                                              ; preds = %482, %444
  %484 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %484, i32* %6, align 4
  br label %507

485:                                              ; preds = %423
  %486 = load i32, i32* %18, align 4
  %487 = icmp sge i32 %486, 0
  br i1 %487, label %488, label %492

488:                                              ; preds = %485
  %489 = load i32, i32* @qeth_core_header_cache, align 4
  %490 = load %struct.qeth_hdr*, %struct.qeth_hdr** %8, align 8
  %491 = call i32 @kmem_cache_free(i32 %489, %struct.qeth_hdr* %490)
  br label %492

492:                                              ; preds = %488, %485
  %493 = load i32, i32* %6, align 4
  %494 = load i32, i32* @EBUSY, align 4
  %495 = sub nsw i32 0, %494
  %496 = icmp eq i32 %493, %495
  br i1 %496, label %497, label %506

497:                                              ; preds = %492
  %498 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %499 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %500 = icmp ne %struct.sk_buff* %498, %499
  br i1 %500, label %501, label %504

501:                                              ; preds = %497
  %502 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %503 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %502)
  br label %504

504:                                              ; preds = %501, %497
  %505 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %505, i32* %3, align 4
  br label %557

506:                                              ; preds = %492
  br label %531

507:                                              ; preds = %483
  %508 = load %struct.net_device*, %struct.net_device** %5, align 8
  %509 = call i32 @netif_wake_queue(%struct.net_device* %508)
  %510 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %511 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %510, i32 0, i32 3
  %512 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %529

515:                                              ; preds = %507
  %516 = call i64 (...) @qeth_get_micros()
  %517 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %518 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %518, i32 0, i32 2
  %520 = load i64, i64* %519, align 8
  %521 = sub nsw i64 %516, %520
  %522 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %523 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 8
  %526 = sext i32 %525 to i64
  %527 = add nsw i64 %526, %521
  %528 = trunc i64 %527 to i32
  store i32 %528, i32* %524, align 8
  br label %529

529:                                              ; preds = %515, %507
  %530 = load i32, i32* %6, align 4
  store i32 %530, i32* %3, align 4
  br label %557

531:                                              ; preds = %506, %393, %277, %177, %164, %106, %90, %78
  %532 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %533 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %534, align 8
  %537 = load %struct.qeth_card*, %struct.qeth_card** %11, align 8
  %538 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %537, i32 0, i32 1
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 1
  %540 = load i32, i32* %539, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %539, align 4
  %542 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %543 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %544 = icmp ne %struct.sk_buff* %542, %543
  br i1 %544, label %545, label %551

545:                                              ; preds = %531
  %546 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %547 = icmp ne %struct.sk_buff* %546, null
  br i1 %547, label %548, label %551

548:                                              ; preds = %545
  %549 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %550 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %549)
  br label %551

551:                                              ; preds = %548, %545, %531
  %552 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %553 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %552)
  %554 = load %struct.net_device*, %struct.net_device** %5, align 8
  %555 = call i32 @netif_wake_queue(%struct.net_device* %554)
  %556 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %556, i32* %3, align 4
  br label %557

557:                                              ; preds = %551, %529, %504
  %558 = load i32, i32* %3, align 4
  ret i32 %558
}

declare dso_local i32 @qeth_get_ip_version(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_get_cast_type(%struct.qeth_card*, %struct.sk_buff*) #1

declare dso_local i64 @qeth_get_priority_queue(%struct.qeth_card*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @qeth_get_micros(...) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_18__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.qeth_hdr* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i32 @__constant_htons(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @qeth_l3_tso_elements(%struct.sk_buff*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @qeth_l3_tso_check(%struct.sk_buff*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*) #1

declare dso_local i32 @memset(%struct.qeth_hdr*, i32, i32) #1

declare dso_local i32 @qeth_l3_fill_header(%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @qeth_tso_fill_header(%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_fill_af_iucv_hdr(%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_hdr_csum(%struct.qeth_card*, %struct.qeth_hdr*, %struct.sk_buff*) #1

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
