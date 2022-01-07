; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_t1_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i64, i64, i32 }
%struct.net_device = type { i64, i64, i64, i32, %struct.adapter* }
%struct.adapter = type { i32, i64, %struct.sge* }
%struct.sge = type { %struct.sk_buff**, i32* }
%struct.sge_port_stats = type { i32, i32, i32, i32 }
%struct.cpl_tx_pkt = type { i32, i32, i64, i32, i8*, i32 }
%struct.cpl_tx_pkt_lso = type { i32, i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i8* }

@ETH_P_CPL5 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CPL_ETH_II = common dso_local global i32 0, align 4
@CPL_ETH_II_VLAN = common dso_local global i32 0, align 4
@CPL_TX_PKT_LSO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: packet size %d hdr %d mtu%d\0A\00", align 1
@UDP_CSUM_CAPABLE = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: unable to do udp checksum\0A\00", align 1
@ETH_P_ARP = common dso_local global i32 0, align 4
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@CPL_TX_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t1_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge*, align 8
  %8 = alloca %struct.sge_port_stats*, align 8
  %9 = alloca %struct.cpl_tx_pkt*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cpl_tx_pkt_lso*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 4
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %6, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  %19 = load %struct.sge*, %struct.sge** %18, align 8
  store %struct.sge* %19, %struct.sge** %7, align 8
  %20 = load %struct.sge*, %struct.sge** %7, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (...) @smp_processor_id()
  %29 = call %struct.sge_port_stats* @per_cpu_ptr(i32 %27, i32 %28)
  store %struct.sge_port_stats* %29, %struct.sge_port_stats** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @ETH_P_CPL5, align 4
  %35 = call i8* @htons(i32 %34)
  %36 = icmp eq i8* %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %282

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i64 @skb_headroom(%struct.sk_buff* %39)
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ETH_HLEN, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp slt i64 %40, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %51, i32 48)
  store %struct.sk_buff* %52, %struct.sk_buff** %4, align 8
  %53 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %54 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %305

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %38
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %125

70:                                               ; preds = %64
  %71 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %72 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call i64 @skb_network_offset(%struct.sk_buff* %75)
  %77 = load i64, i64* @ETH_HLEN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @CPL_ETH_II, align 4
  br label %83

81:                                               ; preds = %70
  %82 = load i32, i32* @CPL_ETH_II_VLAN, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %12, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i64 @skb_push(%struct.sk_buff* %85, i32 48)
  %87 = inttoptr i64 %86 to %struct.cpl_tx_pkt_lso*
  store %struct.cpl_tx_pkt_lso* %87, %struct.cpl_tx_pkt_lso** %13, align 8
  %88 = load i32, i32* @CPL_TX_PKT_LSO, align 4
  %89 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %90 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %92 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %94 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %100 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %106 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @MK_ETH_TYPE_MSS(i32 %107, i64 %111)
  %113 = call i8* @htons(i32 %112)
  %114 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %115 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, 48
  %120 = call i32 @htonl(i64 %119)
  %121 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %122 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %13, align 8
  %124 = bitcast %struct.cpl_tx_pkt_lso* %123 to %struct.cpl_tx_pkt*
  store %struct.cpl_tx_pkt* %124, %struct.cpl_tx_pkt** %9, align 8
  br label %274

125:                                              ; preds = %64
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ETH_HLEN, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %144, label %131

131:                                              ; preds = %125
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %5, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i64 @eth_hdr_len(i32 %140)
  %142 = add nsw i64 %137, %141
  %143 = icmp sgt i64 %134, %142
  br label %144

144:                                              ; preds = %131, %125
  %145 = phi i1 [ true, %125 ], [ %143, %131 ]
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %144
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @eth_hdr_len(i32 %158)
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %152, i64 %155, i64 %159, i64 %162)
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %164)
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %305

167:                                              ; preds = %144
  %168 = load %struct.adapter*, %struct.adapter** %6, align 8
  %169 = getelementptr inbounds %struct.adapter, %struct.adapter* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @UDP_CSUM_CAPABLE, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %201, label %174

174:                                              ; preds = %167
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %174
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = call %struct.TYPE_7__* @ip_hdr(%struct.sk_buff* %181)
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @IPPROTO_UDP, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %180
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = call i32 @skb_checksum_help(%struct.sk_buff* %188)
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.net_device*, %struct.net_device** %5, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %198 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %197)
  %199 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %199, i32* %3, align 4
  br label %305

200:                                              ; preds = %187
  br label %201

201:                                              ; preds = %200, %180, %174, %167
  %202 = load %struct.adapter*, %struct.adapter** %6, align 8
  %203 = getelementptr inbounds %struct.adapter, %struct.adapter* %202, i32 0, i32 2
  %204 = load %struct.sge*, %struct.sge** %203, align 8
  %205 = getelementptr inbounds %struct.sge, %struct.sge* %204, i32 0, i32 0
  %206 = load %struct.sk_buff**, %struct.sk_buff*** %205, align 8
  %207 = load %struct.net_device*, %struct.net_device** %5, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %206, i64 %209
  %211 = load %struct.sk_buff*, %struct.sk_buff** %210, align 8
  %212 = icmp ne %struct.sk_buff* %211, null
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %246

217:                                              ; preds = %201
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i32, i32* @ETH_P_ARP, align 4
  %222 = call i8* @htons(i32 %221)
  %223 = icmp eq i8* %220, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %217
  %225 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %226 = call %struct.TYPE_8__* @arp_hdr(%struct.sk_buff* %225)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* @ARPOP_REQUEST, align 4
  %230 = call i8* @htons(i32 %229)
  %231 = icmp eq i8* %228, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %224
  %233 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %234 = load %struct.adapter*, %struct.adapter** %6, align 8
  %235 = getelementptr inbounds %struct.adapter, %struct.adapter* %234, i32 0, i32 2
  %236 = load %struct.sge*, %struct.sge** %235, align 8
  %237 = getelementptr inbounds %struct.sge, %struct.sge* %236, i32 0, i32 0
  %238 = load %struct.sk_buff**, %struct.sk_buff*** %237, align 8
  %239 = load %struct.net_device*, %struct.net_device** %5, align 8
  %240 = getelementptr inbounds %struct.net_device, %struct.net_device* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %238, i64 %241
  store %struct.sk_buff* %233, %struct.sk_buff** %242, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %243)
  store %struct.sk_buff* %244, %struct.sk_buff** %4, align 8
  br label %245

245:                                              ; preds = %232, %224, %217
  br label %246

246:                                              ; preds = %245, %201
  %247 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %248 = call i64 @__skb_push(%struct.sk_buff* %247, i32 40)
  %249 = inttoptr i64 %248 to %struct.cpl_tx_pkt*
  store %struct.cpl_tx_pkt* %249, %struct.cpl_tx_pkt** %9, align 8
  %250 = load i32, i32* @CPL_TX_PKT, align 4
  %251 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %252 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  %253 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %254 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %253, i32 0, i32 0
  store i32 1, i32* %254, align 8
  %255 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %256 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 0, i32 1
  %262 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %263 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %262, i32 0, i32 1
  store i32 %261, i32* %263, align 4
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load %struct.sge_port_stats*, %struct.sge_port_stats** %8, align 8
  %271 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %246, %83
  %275 = load %struct.net_device*, %struct.net_device** %5, align 8
  %276 = getelementptr inbounds %struct.net_device, %struct.net_device* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %279 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %278, i32 0, i32 2
  store i64 %277, i64* %279, align 8
  %280 = load %struct.cpl_tx_pkt*, %struct.cpl_tx_pkt** %9, align 8
  %281 = getelementptr inbounds %struct.cpl_tx_pkt, %struct.cpl_tx_pkt* %280, i32 0, i32 3
  store i32 0, i32* %281, align 8
  br label %282

282:                                              ; preds = %274, %37
  %283 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %284 = load %struct.adapter*, %struct.adapter** %6, align 8
  %285 = load %struct.net_device*, %struct.net_device** %5, align 8
  %286 = call i32 @t1_sge_tx(%struct.sk_buff* %283, %struct.adapter* %284, i32 0, %struct.net_device* %285)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @NETDEV_TX_OK, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %294

290:                                              ; preds = %282
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %293 = icmp ne %struct.sk_buff* %291, %292
  br label %294

294:                                              ; preds = %290, %282
  %295 = phi i1 [ false, %282 ], [ %293, %290 ]
  %296 = zext i1 %295 to i32
  %297 = call i64 @unlikely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %294
  %300 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %301 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %300)
  %302 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %302, i32* %11, align 4
  br label %303

303:                                              ; preds = %299, %294
  %304 = load i32, i32* %11, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %303, %192, %149, %61
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local %struct.sge_port_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_7__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @MK_ETH_TYPE_MSS(i32, i64) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @eth_hdr_len(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @arp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i64 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @t1_sge_tx(%struct.sk_buff*, %struct.adapter*, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
