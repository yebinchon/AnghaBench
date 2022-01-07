; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_tx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_5__*, %struct.pch_gbe_hw }
%struct.TYPE_5__ = type { i32 }
%struct.pch_gbe_hw = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, i32, i64, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i64, i32, i64, i64, %struct.sk_buff* }
%struct.sk_buff = type { i64, i64, i64, i32*, i8* }
%struct.pch_gbe_tx_desc = type { i64, i64, i32, i32, i64 }
%struct.iphdr = type { i64, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@PCH_GBE_SHORT_PKT = common dso_local global i64 0, align 8
@PCH_GBE_TXD_CTRL_APAD = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TX DMA map failed\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DSC_INIT16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*, %struct.sk_buff*)* @pch_gbe_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_tx_queue(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca %struct.pch_gbe_tx_ring*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca %struct.pch_gbe_tx_desc*, align 8
  %9 = alloca %struct.pch_gbe_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %4, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 1
  store %struct.pch_gbe_hw* %16, %struct.pch_gbe_hw** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCH_GBE_SHORT_PKT, align 8
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @PCH_GBE_TXD_CTRL_APAD, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CHECKSUM_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCH_GBE_SHORT_PKT, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %166

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHECKSUM_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %166

51:                                               ; preds = %45
  %52 = load i32, i32* @PCH_GBE_TXD_CTRL_APAD, align 4
  %53 = load i32, i32* @PCH_GBE_TXD_CTRL_TCPIP_ACC_OFF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ETH_P_IP, align 4
  %61 = call i64 @htons(i32 %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %165

63:                                               ; preds = %51
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %64)
  store %struct.iphdr* %65, %struct.iphdr** %13, align 8
  %66 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 4
  store i64 0, i64* %67, align 8
  %68 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %69 = bitcast %struct.iphdr* %68 to i32*
  %70 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %71 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ip_fast_csum(i32* %69, i32 %72)
  %74 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %75 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i32 @skb_transport_offset(%struct.sk_buff* %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IPPROTO_TCP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %120

83:                                               ; preds = %63
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 4
  store i8* null, i8** %85, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i8* null, i8** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = zext i32 %94 to i64
  %96 = sub nsw i64 %93, %95
  %97 = call i8* @skb_checksum(%struct.sk_buff* %89, i32 %90, i64 %96, i32 0)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %104 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = load i64, i64* @IPPROTO_TCP, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @csum_tcpudp_magic(i32 %102, i32 %105, i64 %111, i64 %112, i8* %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i8* %116, i8** %119, align 8
  br label %164

120:                                              ; preds = %63
  %121 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %122 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @IPPROTO_UDP, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %120
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 4
  store i8* null, i8** %128, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call %struct.TYPE_7__* @udp_hdr(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i8* null, i8** %131, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = zext i32 %137 to i64
  %139 = sub nsw i64 %136, %138
  %140 = call i8* @skb_checksum(%struct.sk_buff* %132, i32 %133, i64 %139, i32 0)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  %143 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %147 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = sub nsw i64 %151, %153
  %155 = load i64, i64* @IPPROTO_UDP, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @csum_tcpudp_magic(i32 %145, i32 %148, i64 %154, i64 %155, i8* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = call %struct.TYPE_7__* @udp_hdr(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %126, %120
  br label %164

164:                                              ; preds = %163, %83
  br label %165

165:                                              ; preds = %164, %51
  br label %166

166:                                              ; preds = %165, %45, %39
  %167 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %168 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add i32 %170, 1
  %172 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %173 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %171, %174
  %176 = zext i1 %175 to i32
  %177 = call i64 @unlikely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %166
  %180 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %181 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  br label %187

182:                                              ; preds = %166
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %183, 1
  %185 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %186 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %182, %179
  %188 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %189 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %188, i32 0, i32 3
  %190 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %190, i64 %192
  store %struct.pch_gbe_buffer* %193, %struct.pch_gbe_buffer** %9, align 8
  %194 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %195 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %194, i32 0, i32 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %195, align 8
  store %struct.sk_buff* %196, %struct.sk_buff** %10, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %198 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @ETH_HLEN, align 8
  %204 = call i32 @memcpy(i32* %199, i32* %202, i64 %203)
  %205 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @ETH_HLEN, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 0, i32* %209, align 4
  %210 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @ETH_HLEN, align 8
  %214 = add i64 %213, 1
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 0, i32* %215, align 4
  %216 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %220 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @ETH_HLEN, align 8
  %225 = add i64 %224, 2
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 3
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @ETH_HLEN, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @ETH_HLEN, align 8
  %236 = sub i64 %234, %235
  %237 = call i32 @memcpy(i32* %226, i32* %231, i64 %236)
  %238 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %242 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %244 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %243, i32 0, i32 0
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %248 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %251 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @DMA_TO_DEVICE, align 4
  %254 = call i64 @dma_map_single(i32* %246, i32* %249, i64 %252, i32 %253)
  %255 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %256 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %258 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %262 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = call i64 @dma_mapping_error(i32* %260, i64 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %275

266:                                              ; preds = %187
  %267 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %268 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %269 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %268, i32 0, i32 2
  store i64 0, i64* %269, align 8
  %270 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %271 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %270, i32 0, i32 3
  store i64 0, i64* %271, align 8
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %274 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  br label %331

275:                                              ; preds = %187
  %276 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %277 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %276, i32 0, i32 1
  store i32 1, i32* %277, align 8
  %278 = load i64, i64* @jiffies, align 8
  %279 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %280 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %279, i32 0, i32 3
  store i64 %278, i64* %280, align 8
  %281 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %281, i32 %282)
  store %struct.pch_gbe_tx_desc* %283, %struct.pch_gbe_tx_desc** %8, align 8
  %284 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %9, align 8
  %285 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %288 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %287, i32 0, i32 4
  store i64 %286, i64* %288, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %290 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %293 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %292, i32 0, i32 0
  store i64 %291, i64* %293, align 8
  %294 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, 3
  %298 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %299 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %298, i32 0, i32 1
  store i64 %297, i64* %299, align 8
  %300 = load i32, i32* %11, align 4
  %301 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %302 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load i32, i32* @DSC_INIT16, align 4
  %304 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %8, align 8
  %305 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load i32, i32* %12, align 4
  %307 = add i32 %306, 1
  store i32 %307, i32* %12, align 4
  %308 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %309 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %307, %310
  %312 = zext i1 %311 to i32
  %313 = call i64 @unlikely(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %275
  store i32 0, i32* %12, align 4
  br label %316

316:                                              ; preds = %315, %275
  %317 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %5, align 8
  %318 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = load i32, i32* %12, align 4
  %321 = mul i32 32, %320
  %322 = zext i32 %321 to i64
  %323 = add nsw i64 %319, %322
  %324 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %325 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %324, i32 0, i32 0
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = call i32 @iowrite32(i64 %323, i32* %327)
  %329 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %330 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %329)
  br label %331

331:                                              ; preds = %316, %266
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_checksum(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i8* @csum_tcpudp_magic(i32, i32, i64, i64, i8*) #1

declare dso_local %struct.TYPE_7__* @udp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @dma_map_single(i32*, i32*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8, i32) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
