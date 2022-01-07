; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_xmit_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_xmit_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.vxlan_rdst = type { i32, i32, i64, i64 }
%struct.vxlan_dev = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.rtable = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.iphdr = type { i32 }
%struct.flowi = type { i32, i32, i64, i32, i32 }
%struct.vxlan_stats = type { i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no route to %pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"circular route to %pI4\0A\00", align 1
@RTCF_LOCAL = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@RTCF_MULTICAST = common dso_local global i32 0, align 4
@RTAX_HOPLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.net_device*, %struct.vxlan_rdst*, i32)* @vxlan_xmit_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_xmit_one(%struct.sk_buff* %0, %struct.net_device* %1, %struct.vxlan_rdst* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vxlan_rdst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vxlan_dev*, align 8
  %10 = alloca %struct.rtable*, align 8
  %11 = alloca %struct.iphdr*, align 8
  %12 = alloca %struct.flowi, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.vxlan_dev*, align 8
  %22 = alloca %struct.vxlan_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.vxlan_rdst* %2, %struct.vxlan_rdst** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %23)
  store %struct.vxlan_dev* %24, %struct.vxlan_dev** %9, align 8
  store i64 0, i64* %17, align 8
  %25 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %26 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %31 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  br label %37

33:                                               ; preds = %4
  %34 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %35 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i64 [ %32, %29 ], [ %36, %33 ]
  store i64 %38, i64* %15, align 8
  %39 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %40 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %16, align 4
  %42 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %43 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %53 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %54 = call i32 @vxlan_encap_bypass(%struct.sk_buff* %51, %struct.vxlan_dev* %52, %struct.vxlan_dev* %53)
  br label %257

55:                                               ; preds = %47
  br label %239

56:                                               ; preds = %37
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %57)
  store %struct.iphdr* %58, %struct.iphdr** %11, align 8
  %59 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %60 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %19, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @ntohl(i64 %65)
  %67 = call i64 @IN_MULTICAST(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %19, align 4
  br label %70

70:                                               ; preds = %69, %64, %56
  %71 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %72 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @ip_tunnel_get_dsfield(%struct.iphdr* %77, %struct.sk_buff* %78)
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %82 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %85 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i64 @vxlan_src_port(i32 %83, i32 %86, %struct.sk_buff* %87)
  store i64 %88, i64* %14, align 8
  %89 = call i32 @memset(%struct.flowi* %12, i32 0, i32 24)
  %90 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %7, align 8
  %91 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IPPROTO_UDP, align 4
  %95 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 3
  store i32 %94, i32* %95, align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 2
  store i64 %96, i64* %97, align 8
  %98 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %99 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @RT_TOS(i32 %102)
  %104 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load %struct.net_device*, %struct.net_device** %6, align 8
  %106 = call i32 @dev_net(%struct.net_device* %105)
  %107 = call i32 @ip_route_output_key(i32 %106, %struct.rtable** %10, %struct.flowi* %12)
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %80
  %111 = load %struct.net_device*, %struct.net_device** %6, align 8
  %112 = call i32 @netdev_dbg(%struct.net_device* %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %13)
  %113 = load %struct.net_device*, %struct.net_device** %6, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %248

118:                                              ; preds = %80
  %119 = load %struct.rtable*, %struct.rtable** %10, align 8
  %120 = getelementptr inbounds %struct.rtable, %struct.rtable* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.net_device*, %struct.net_device** %122, align 8
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = icmp eq %struct.net_device* %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %118
  %127 = load %struct.net_device*, %struct.net_device** %6, align 8
  %128 = call i32 @netdev_dbg(%struct.net_device* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64* %13)
  %129 = load %struct.net_device*, %struct.net_device** %6, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %245

134:                                              ; preds = %118
  %135 = load %struct.rtable*, %struct.rtable** %10, align 8
  %136 = getelementptr inbounds %struct.rtable, %struct.rtable* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RTCF_LOCAL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %166

141:                                              ; preds = %134
  %142 = load %struct.rtable*, %struct.rtable** %10, align 8
  %143 = getelementptr inbounds %struct.rtable, %struct.rtable* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @RTCF_BROADCAST, align 4
  %146 = load i32, i32* @RTCF_MULTICAST, align 4
  %147 = or i32 %145, %146
  %148 = and i32 %144, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %166, label %150

150:                                              ; preds = %141
  %151 = load %struct.rtable*, %struct.rtable** %10, align 8
  %152 = call i32 @ip_rt_put(%struct.rtable* %151)
  %153 = load %struct.net_device*, %struct.net_device** %6, align 8
  %154 = call i32 @dev_net(%struct.net_device* %153)
  %155 = load i32, i32* %16, align 4
  %156 = load i64, i64* %15, align 8
  %157 = call %struct.vxlan_dev* @vxlan_find_vni(i32 %154, i32 %155, i64 %156)
  store %struct.vxlan_dev* %157, %struct.vxlan_dev** %21, align 8
  %158 = load %struct.vxlan_dev*, %struct.vxlan_dev** %21, align 8
  %159 = icmp ne %struct.vxlan_dev* %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  br label %248

161:                                              ; preds = %150
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %164 = load %struct.vxlan_dev*, %struct.vxlan_dev** %21, align 8
  %165 = call i32 @vxlan_encap_bypass(%struct.sk_buff* %162, %struct.vxlan_dev* %163, %struct.vxlan_dev* %164)
  br label %257

166:                                              ; preds = %141, %134
  %167 = load i32, i32* %18, align 4
  %168 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i32 @ip_tunnel_ecn_encap(i32 %167, %struct.iphdr* %168, %struct.sk_buff* %169)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %180

174:                                              ; preds = %166
  %175 = load %struct.rtable*, %struct.rtable** %10, align 8
  %176 = getelementptr inbounds %struct.rtable, %struct.rtable* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* @RTAX_HOPLIMIT, align 4
  %179 = call i32 @dst_metric(%struct.TYPE_6__* %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %173
  %181 = phi i32 [ %171, %173 ], [ %179, %174 ]
  store i32 %181, i32* %19, align 4
  %182 = load %struct.net_device*, %struct.net_device** %6, align 8
  %183 = call i32 @dev_net(%struct.net_device* %182)
  %184 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %185 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.rtable*, %struct.rtable** %10, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %13, align 8
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i64, i64* %17, align 8
  %195 = load i64, i64* %14, align 8
  %196 = load i64, i64* %15, align 8
  %197 = load i32, i32* %16, align 4
  %198 = shl i32 %197, 8
  %199 = call i32 @htonl(i32 %198)
  %200 = call i32 @vxlan_xmit_skb(i32 %183, i32 %186, %struct.rtable* %187, %struct.sk_buff* %188, i32 %190, i64 %191, i32 %192, i32 %193, i64 %194, i64 %195, i64 %196, i32 %199)
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* %20, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %180
  br label %245

204:                                              ; preds = %180
  %205 = load i32, i32* %20, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %204
  %208 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %209 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call %struct.vxlan_stats* @this_cpu_ptr(i32 %210)
  store %struct.vxlan_stats* %211, %struct.vxlan_stats** %22, align 8
  %212 = load %struct.vxlan_stats*, %struct.vxlan_stats** %22, align 8
  %213 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %212, i32 0, i32 1
  %214 = call i32 @u64_stats_update_begin(i32* %213)
  %215 = load %struct.vxlan_stats*, %struct.vxlan_stats** %22, align 8
  %216 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %20, align 4
  %220 = load %struct.vxlan_stats*, %struct.vxlan_stats** %22, align 8
  %221 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load %struct.vxlan_stats*, %struct.vxlan_stats** %22, align 8
  %225 = getelementptr inbounds %struct.vxlan_stats, %struct.vxlan_stats* %224, i32 0, i32 1
  %226 = call i32 @u64_stats_update_end(i32* %225)
  br label %238

227:                                              ; preds = %204
  %228 = load %struct.net_device*, %struct.net_device** %6, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  %233 = load %struct.net_device*, %struct.net_device** %6, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %227, %207
  br label %257

239:                                              ; preds = %55
  %240 = load %struct.net_device*, %struct.net_device** %6, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %254

245:                                              ; preds = %203, %126
  %246 = load %struct.rtable*, %struct.rtable** %10, align 8
  %247 = call i32 @ip_rt_put(%struct.rtable* %246)
  br label %248

248:                                              ; preds = %245, %160, %110
  %249 = load %struct.net_device*, %struct.net_device** %6, align 8
  %250 = getelementptr inbounds %struct.net_device, %struct.net_device* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %248, %239
  %255 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %256 = call i32 @dev_kfree_skb(%struct.sk_buff* %255)
  br label %257

257:                                              ; preds = %254, %238, %161, %50
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @vxlan_encap_bypass(%struct.sk_buff*, %struct.vxlan_dev*, %struct.vxlan_dev*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @IN_MULTICAST(i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @ip_tunnel_get_dsfield(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i64 @vxlan_src_port(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi*, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @ip_route_output_key(i32, %struct.rtable**, %struct.flowi*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.vxlan_dev* @vxlan_find_vni(i32, i32, i64) #1

declare dso_local i32 @ip_tunnel_ecn_encap(i32, %struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @dst_metric(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @vxlan_xmit_skb(i32, i32, %struct.rtable*, %struct.sk_buff*, i32, i64, i32, i32, i64, i64, i64, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.vxlan_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
