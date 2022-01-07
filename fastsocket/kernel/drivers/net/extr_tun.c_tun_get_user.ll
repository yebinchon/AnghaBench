; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_get_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_get_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.tun_pi = type { i8*, i32, i32 }
%struct.sk_buff = type { i32*, i8*, %struct.TYPE_6__*, i32 }
%struct.virtio_net_hdr = type { i32, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@TUN_NO_PI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@TUN_VNET_HDR = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_F_NEEDS_CSUM = common dso_local global i32 0, align 4
@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@TUN_NOCHECKSUM = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@VIRTIO_NET_HDR_GSO_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"GSO!\0A\00", align 1
@VIRTIO_NET_HDR_GSO_ECN = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_UDP = common dso_local global i32 0, align 4
@SKB_GSO_TCP_ECN = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tun_struct*, %struct.iovec*, i64, i32)* @tun_get_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tun_get_user(%struct.tun_struct* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tun_pi, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.virtio_net_hdr, align 8
  %15 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 1
  %18 = load i32, i32* @ETH_P_IP, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %22 = bitcast %struct.virtio_net_hdr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 56, i1 false)
  store i32 0, i32* %15, align 4
  %23 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %24 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @TUN_NO_PI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  %31 = sub i64 %30, 16
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %400

37:                                               ; preds = %29
  %38 = bitcast %struct.tun_pi* %10 to i8*
  %39 = load %struct.iovec*, %struct.iovec** %7, align 8
  %40 = call i64 @memcpy_fromiovecend(i8* %38, %struct.iovec* %39, i32 0, i32 16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @EFAULT, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %5, align 8
  br label %400

45:                                               ; preds = %37
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 16
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %45, %4
  %51 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %52 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TUN_VNET_HDR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %117

57:                                               ; preds = %50
  %58 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %59 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %12, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i64, i64* @EINVAL, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %5, align 8
  br label %400

68:                                               ; preds = %57
  %69 = bitcast %struct.virtio_net_hdr* %14 to i8*
  %70 = load %struct.iovec*, %struct.iovec** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i64 @memcpy_fromiovecend(i8* %69, %struct.iovec* %70, i32 %71, i32 56)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* @EFAULT, align 8
  %76 = sub i64 0, %75
  store i64 %76, i64* %5, align 8
  br label %400

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %85, %87
  %89 = add i64 %88, 2
  %90 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %95, %97
  %99 = add i64 %98, 2
  %100 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %93, %83, %77
  %102 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = icmp ugt i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i64, i64* @EINVAL, align 8
  %108 = sub i64 0, %107
  store i64 %108, i64* %5, align 8
  br label %400

109:                                              ; preds = %101
  %110 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %111 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %109, %50
  %118 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %119 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TUN_TYPE_MASK, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 132
  br i1 %123, label %124, label %149

124:                                              ; preds = %117
  %125 = load i64, i64* @NET_IP_ALIGN, align 8
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @ETH_HLEN, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %140, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ETH_HLEN, align 8
  %137 = icmp ult i64 %135, %136
  br label %138

138:                                              ; preds = %133, %129
  %139 = phi i1 [ false, %129 ], [ %137, %133 ]
  br label %140

140:                                              ; preds = %138, %124
  %141 = phi i1 [ true, %124 ], [ %139, %138 ]
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i64, i64* @EINVAL, align 8
  %147 = sub i64 0, %146
  store i64 %147, i64* %5, align 8
  br label %400

148:                                              ; preds = %140
  br label %149

149:                                              ; preds = %148, %117
  %150 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call %struct.sk_buff* @tun_alloc_skb(%struct.tun_struct* %150, i64 %151, i64 %152, i64 %154, i32 %155)
  store %struct.sk_buff* %156, %struct.sk_buff** %11, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = call i64 @IS_ERR(%struct.sk_buff* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %149
  %161 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %162 = call i64 @PTR_ERR(%struct.sk_buff* %161)
  %163 = load i64, i64* @EAGAIN, align 8
  %164 = sub i64 0, %163
  %165 = icmp ne i64 %162, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %168 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %167, i32 0, i32 2
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %166, %160
  %175 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %176 = call i64 @PTR_ERR(%struct.sk_buff* %175)
  store i64 %176, i64* %5, align 8
  br label %400

177:                                              ; preds = %149
  %178 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %179 = load %struct.iovec*, %struct.iovec** %7, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i64, i64* %12, align 8
  %182 = call i64 @skb_copy_datagram_from_iovec(%struct.sk_buff* %178, i32 0, %struct.iovec* %179, i32 %180, i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %177
  %185 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %186 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %185, i32 0, i32 2
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %193 = call i32 @kfree_skb(%struct.sk_buff* %192)
  %194 = load i64, i64* @EFAULT, align 8
  %195 = sub i64 0, %194
  store i64 %195, i64* %5, align 8
  br label %400

196:                                              ; preds = %177
  %197 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @VIRTIO_NET_HDR_F_NEEDS_CSUM, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %204 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @skb_partial_csum_set(%struct.sk_buff* %203, i64 %205, i64 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %202
  %211 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %212 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %211, i32 0, i32 2
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %219 = call i32 @kfree_skb(%struct.sk_buff* %218)
  %220 = load i64, i64* @EINVAL, align 8
  %221 = sub i64 0, %220
  store i64 %221, i64* %5, align 8
  br label %400

222:                                              ; preds = %202
  br label %235

223:                                              ; preds = %196
  %224 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %225 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @TUN_NOCHECKSUM, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %223
  %231 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %230, %223
  br label %235

235:                                              ; preds = %234, %222
  %236 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %237 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @TUN_TYPE_MASK, align 4
  %240 = and i32 %238, %239
  switch i32 %240, label %296 [
    i32 131, label %241
    i32 132, label %288
  ]

241:                                              ; preds = %235
  %242 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %243 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @TUN_NO_PI, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %276

248:                                              ; preds = %241
  %249 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 240
  switch i32 %254, label %263 [
    i32 64, label %255
    i32 96, label %259
  ]

255:                                              ; preds = %248
  %256 = load i32, i32* @ETH_P_IP, align 4
  %257 = call i8* @htons(i32 %256)
  %258 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 0
  store i8* %257, i8** %258, align 8
  br label %275

259:                                              ; preds = %248
  %260 = load i32, i32* @ETH_P_IPV6, align 4
  %261 = call i8* @htons(i32 %260)
  %262 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 0
  store i8* %261, i8** %262, align 8
  br label %275

263:                                              ; preds = %248
  %264 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %265 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %264, i32 0, i32 2
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  %271 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %272 = call i32 @kfree_skb(%struct.sk_buff* %271)
  %273 = load i64, i64* @EINVAL, align 8
  %274 = sub i64 0, %273
  store i64 %274, i64* %5, align 8
  br label %400

275:                                              ; preds = %259, %255
  br label %276

276:                                              ; preds = %275, %241
  %277 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %278 = call i32 @skb_reset_mac_header(%struct.sk_buff* %277)
  %279 = getelementptr inbounds %struct.tun_pi, %struct.tun_pi* %10, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 1
  store i8* %280, i8** %282, align 8
  %283 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %284 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %283, i32 0, i32 2
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %287 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %286, i32 0, i32 2
  store %struct.TYPE_6__* %285, %struct.TYPE_6__** %287, align 8
  br label %296

288:                                              ; preds = %235
  %289 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %290 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %291 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %290, i32 0, i32 2
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = call i8* @eth_type_trans(%struct.sk_buff* %289, %struct.TYPE_6__* %292)
  %294 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 1
  store i8* %293, i8** %295, align 8
  br label %296

296:                                              ; preds = %235, %288, %276
  %297 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @VIRTIO_NET_HDR_GSO_NONE, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %381

301:                                              ; preds = %296
  %302 = call i32 @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %303 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 4
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %304, %306
  switch i32 %307, label %323 [
    i32 130, label %308
    i32 129, label %313
    i32 128, label %318
  ]

308:                                              ; preds = %301
  %309 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %310 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %311 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %310)
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  store i32 %309, i32* %312, align 8
  br label %335

313:                                              ; preds = %301
  %314 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %315 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %316 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %315)
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 2
  store i32 %314, i32* %317, align 8
  br label %335

318:                                              ; preds = %301
  %319 = load i32, i32* @SKB_GSO_UDP, align 4
  %320 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %321 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %320)
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 2
  store i32 %319, i32* %322, align 8
  br label %335

323:                                              ; preds = %301
  %324 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %325 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %324, i32 0, i32 2
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %332 = call i32 @kfree_skb(%struct.sk_buff* %331)
  %333 = load i64, i64* @EINVAL, align 8
  %334 = sub i64 0, %333
  store i64 %334, i64* %5, align 8
  br label %400

335:                                              ; preds = %318, %313, %308
  %336 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @VIRTIO_NET_HDR_GSO_ECN, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %335
  %342 = load i32, i32* @SKB_GSO_TCP_ECN, align 4
  %343 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %344 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %343)
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = or i32 %346, %342
  store i32 %347, i32* %345, align 8
  br label %348

348:                                              ; preds = %341, %335
  %349 = getelementptr inbounds %struct.virtio_net_hdr, %struct.virtio_net_hdr* %14, i32 0, i32 5
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %352 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %351)
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  store i64 %350, i64* %353, align 8
  %354 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %355 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %354)
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp eq i64 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %348
  %360 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %361 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %360, i32 0, i32 2
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 4
  %367 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %368 = call i32 @kfree_skb(%struct.sk_buff* %367)
  %369 = load i64, i64* @EINVAL, align 8
  %370 = sub i64 0, %369
  store i64 %370, i64* %5, align 8
  br label %400

371:                                              ; preds = %348
  %372 = load i32, i32* @SKB_GSO_DODGY, align 4
  %373 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %374 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %373)
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %372
  store i32 %377, i32* %375, align 8
  %378 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %379 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %378)
  %380 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i32 0, i32 1
  store i64 0, i64* %380, align 8
  br label %381

381:                                              ; preds = %371, %296
  %382 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %383 = call i32 @netif_rx_ni(%struct.sk_buff* %382)
  %384 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %385 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %384, i32 0, i32 2
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %388, align 8
  %391 = load i64, i64* %12, align 8
  %392 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %393 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %392, i32 0, i32 2
  %394 = load %struct.TYPE_6__*, %struct.TYPE_6__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = add i64 %397, %391
  store i64 %398, i64* %396, align 8
  %399 = load i64, i64* %8, align 8
  store i64 %399, i64* %5, align 8
  br label %400

400:                                              ; preds = %381, %359, %323, %263, %210, %184, %174, %145, %106, %74, %65, %42, %34
  %401 = load i64, i64* %5, align 8
  ret i64 %401
}

declare dso_local i32 @cpu_to_be16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @memcpy_fromiovecend(i8*, %struct.iovec*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @tun_alloc_skb(%struct.tun_struct*, i64, i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i64 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_datagram_from_iovec(%struct.sk_buff*, i32, %struct.iovec*, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_partial_csum_set(%struct.sk_buff*, i64, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
