; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_get_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macvtap_queue = type { i32, i32, i32, i32 }
%struct.msghdr = type { i64 }
%struct.iovec = type { i32 }
%struct.sk_buff = type { i32 }
%struct.macvlan_dev = type { i32 }
%struct.virtio_net_hdr = type { i32, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@IFF_VNET_HDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@SOCK_ZEROCOPY = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@GOODCOPY_LEN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.macvtap_queue*, %struct.msghdr*, %struct.iovec*, i64, i64, i32)* @macvtap_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @macvtap_get_user(%struct.macvtap_queue* %0, %struct.msghdr* %1, %struct.iovec* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.macvtap_queue*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.macvlan_dev*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.virtio_net_hdr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.macvtap_queue* %0, %struct.macvtap_queue** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store %struct.iovec* %2, %struct.iovec** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i64, i64* %11, align 8
  store i64 %22, i64* %16, align 8
  %23 = bitcast %struct.virtio_net_hdr* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %25 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IFF_VNET_HDR, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %6
  %31 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %32 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %19, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %16, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %16, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %250

42:                                               ; preds = %30
  %43 = bitcast %struct.virtio_net_hdr* %18 to i8*
  %44 = load %struct.iovec*, %struct.iovec** %10, align 8
  %45 = call i32 @memcpy_fromiovecend(i8* %43, %struct.iovec* %44, i32 0, i32 40)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %250

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %57, %59
  %61 = add i64 %60, 2
  %62 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %67, %69
  %71 = add i64 %70, 2
  %72 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %65, %55, %49
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %17, align 4
  %76 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %250

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %6
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %17, align 4
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* @ETH_HLEN, align 8
  %87 = icmp ult i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %250

92:                                               ; preds = %82
  %93 = load i32, i32* @EMSGSIZE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %17, align 4
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* @UIO_MAXIOV, align 8
  %97 = icmp ugt i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %250

102:                                              ; preds = %92
  %103 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %104 = icmp ne %struct.msghdr* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %107 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %112 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %111, i32 0, i32 3
  %113 = load i32, i32* @SOCK_ZEROCOPY, align 4
  %114 = call i64 @sock_flag(i32* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %21, align 4
  br label %117

117:                                              ; preds = %116, %110, %105, %102
  %118 = load i32, i32* %21, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %155

120:                                              ; preds = %117
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %123 = icmp ugt i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load %struct.iovec*, %struct.iovec** %10, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %128 = sub i64 %126, %127
  %129 = call i32 @iov_length(%struct.iovec* %125, i64 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 0, i32* %20, align 4
  br label %138

134:                                              ; preds = %124
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %134, %133
  br label %139

139:                                              ; preds = %138, %120
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ult i64 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %20, align 4
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, i32* %20, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* @GOODCOPY_LEN, align 4
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %152, %149
  br label %158

155:                                              ; preds = %117
  %156 = load i64, i64* %16, align 8
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %155, %154
  %159 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %160 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %159, i32 0, i32 3
  %161 = load i32, i32* @NET_IP_ALIGN, align 4
  %162 = load i32, i32* %20, align 4
  %163 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %18, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %13, align 4
  %167 = call %struct.sk_buff* @macvtap_alloc_skb(i32* %160, i32 %161, i32 %162, i32 %165, i32 %166, i32* %17)
  store %struct.sk_buff* %167, %struct.sk_buff** %14, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %169 = icmp ne %struct.sk_buff* %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %158
  br label %250

171:                                              ; preds = %158
  %172 = load i32, i32* %21, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %176 = load %struct.iovec*, %struct.iovec** %10, align 8
  %177 = load i32, i32* %19, align 4
  %178 = load i64, i64* %12, align 8
  %179 = call i32 @zerocopy_sg_from_iovec(%struct.sk_buff* %175, %struct.iovec* %176, i32 %177, i64 %178)
  store i32 %179, i32* %17, align 4
  br label %186

180:                                              ; preds = %171
  %181 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %182 = load %struct.iovec*, %struct.iovec** %10, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i64, i64* %16, align 8
  %185 = call i32 @skb_copy_datagram_from_iovec(%struct.sk_buff* %181, i32 0, %struct.iovec* %182, i32 %183, i64 %184)
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %180, %174
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %247

190:                                              ; preds = %186
  %191 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %192 = load i64, i64* @ETH_HLEN, align 8
  %193 = call i32 @skb_set_network_header(%struct.sk_buff* %191, i64 %192)
  %194 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %195 = call i32 @skb_reset_mac_header(%struct.sk_buff* %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %197 = call %struct.TYPE_8__* @eth_hdr(%struct.sk_buff* %196)
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %19, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %190
  %205 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %206 = call i32 @macvtap_skb_from_vnet_hdr(%struct.sk_buff* %205, %struct.virtio_net_hdr* %18)
  store i32 %206, i32* %17, align 4
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %247

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %190
  %212 = call i32 (...) @rcu_read_lock()
  %213 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %214 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call %struct.macvlan_dev* @rcu_dereference(i32 %215)
  store %struct.macvlan_dev* %216, %struct.macvlan_dev** %15, align 8
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %211
  %220 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %221 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %224 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %223)
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i64 %222, i64* %225, align 8
  %226 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %227 = call %struct.TYPE_5__* @skb_tx(%struct.sk_buff* %226)
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32 1, i32* %228, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %230 = call %struct.TYPE_5__* @skb_tx(%struct.sk_buff* %229)
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 1
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %219, %211
  %233 = load %struct.macvlan_dev*, %struct.macvlan_dev** %15, align 8
  %234 = icmp ne %struct.macvlan_dev* %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %237 = load %struct.macvlan_dev*, %struct.macvlan_dev** %15, align 8
  %238 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @macvlan_start_xmit(%struct.sk_buff* %236, i32 %239)
  br label %244

241:                                              ; preds = %232
  %242 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %243 = call i32 @kfree_skb(%struct.sk_buff* %242)
  br label %244

244:                                              ; preds = %241, %235
  %245 = call i32 (...) @rcu_read_unlock()
  %246 = load i64, i64* %11, align 8
  store i64 %246, i64* %7, align 8
  br label %270

247:                                              ; preds = %209, %189
  %248 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %249 = call i32 @kfree_skb(%struct.sk_buff* %248)
  br label %250

250:                                              ; preds = %247, %170, %101, %91, %80, %48, %41
  %251 = call i32 (...) @rcu_read_lock()
  %252 = load %struct.macvtap_queue*, %struct.macvtap_queue** %8, align 8
  %253 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = call %struct.macvlan_dev* @rcu_dereference(i32 %254)
  store %struct.macvlan_dev* %255, %struct.macvlan_dev** %15, align 8
  %256 = load %struct.macvlan_dev*, %struct.macvlan_dev** %15, align 8
  %257 = icmp ne %struct.macvlan_dev* %256, null
  br i1 %257, label %258, label %266

258:                                              ; preds = %250
  %259 = load %struct.macvlan_dev*, %struct.macvlan_dev** %15, align 8
  %260 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call %struct.TYPE_7__* @netdev_get_tx_queue(i32 %261, i32 0)
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %258, %250
  %267 = call i32 (...) @rcu_read_unlock()
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  store i64 %269, i64* %7, align 8
  br label %270

270:                                              ; preds = %266, %244
  %271 = load i64, i64* %7, align 8
  ret i64 %271
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy_fromiovecend(i8*, %struct.iovec*, i32, i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @sock_flag(i32*, i32) #2

declare dso_local i32 @iov_length(%struct.iovec*, i64) #2

declare dso_local %struct.sk_buff* @macvtap_alloc_skb(i32*, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @zerocopy_sg_from_iovec(%struct.sk_buff*, %struct.iovec*, i32, i64) #2

declare dso_local i32 @skb_copy_datagram_from_iovec(%struct.sk_buff*, i32, %struct.iovec*, i32, i64) #2

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #2

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_8__* @eth_hdr(%struct.sk_buff*) #2

declare dso_local i32 @macvtap_skb_from_vnet_hdr(%struct.sk_buff*, %struct.virtio_net_hdr*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.macvlan_dev* @rcu_dereference(i32) #2

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_5__* @skb_tx(%struct.sk_buff*) #2

declare dso_local i32 @macvlan_start_xmit(%struct.sk_buff*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.TYPE_7__* @netdev_get_tx_queue(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
