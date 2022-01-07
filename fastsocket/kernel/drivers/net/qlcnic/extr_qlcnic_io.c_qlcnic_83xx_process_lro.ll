; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_lro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i64, i32, %struct.TYPE_3__, i32, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i8*, i32, i64 }
%struct.iphdr = type { i32, i64, i8* }
%struct.ipv6hdr = type { i8* }
%struct.tcphdr = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TCP_TS_HDR_SIZE = common dso_local global i32 0, align 4
@QLCNIC_TCP_HDR_SIZE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, i64, i32*)* @qlcnic_83xx_process_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_83xx_process_lro(%struct.qlcnic_adapter* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.qlcnic_rx_buffer*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.qlcnic_recv_context*, align 8
  %10 = alloca %struct.qlcnic_rx_buffer*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.ipv6hdr*, align 8
  %15 = alloca %struct.tcphdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 6
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %8, align 8
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 5
  %32 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %31, align 8
  store %struct.qlcnic_recv_context* %32, %struct.qlcnic_recv_context** %9, align 8
  store i32 65535, i32* %25, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %4, align 8
  br label %291

42:                                               ; preds = %3
  %43 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %44 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %43, i32 0, i32 0
  %45 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %45, i64 %46
  store %struct.qlcnic_host_rds_ring* %47, %struct.qlcnic_host_rds_ring** %12, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @qlcnic_83xx_hndl(i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %54 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %4, align 8
  br label %291

61:                                               ; preds = %42
  %62 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %63 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %62, i32 0, i32 1
  %64 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %63, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %64, i64 %66
  store %struct.qlcnic_rx_buffer* %67, %struct.qlcnic_rx_buffer** %10, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @qlcnic_83xx_lro_pktln(i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qlcnic_83xx_l2_hdr_off(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qlcnic_83xx_l4_hdr_off(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @qlcnic_83xx_is_psh_bit(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %85 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %12, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %88 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %84, %struct.qlcnic_host_rds_ring* %85, i32 %86, i32 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %11, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %61
  %92 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %92, %struct.qlcnic_rx_buffer** %4, align 8
  br label %291

93:                                               ; preds = %61
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %93
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %98
  store i32 0, i32* %26, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @qlcnic_83xx_is_lb_pkt(i32 %108, i32 1)
  store i32 %109, i32* %20, align 4
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %26, align 4
  %114 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %110, %struct.sk_buff* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %98, %93
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @qlcnic_83xx_is_tstamp(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @QLCNIC_TCP_TS_HDR_SIZE, align 4
  %124 = add nsw i32 %122, %123
  store i32 %124, i32* %23, align 4
  br label %129

125:                                              ; preds = %115
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* @QLCNIC_TCP_HDR_SIZE, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %23, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %23, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @skb_put(%struct.sk_buff* %130, i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @skb_pull(%struct.sk_buff* %135, i32 %136)
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %140 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %138, %struct.sk_buff* %139, i32* %25)
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %129
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %145 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %150 = call i32 @dev_kfree_skb(%struct.sk_buff* %149)
  %151 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %151, %struct.qlcnic_rx_buffer** %4, align 8
  br label %291

152:                                              ; preds = %129
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = load %struct.net_device*, %struct.net_device** %8, align 8
  %155 = call i8* @eth_type_trans(%struct.sk_buff* %153, %struct.net_device* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @ntohs(i8* %160)
  %162 = load i64, i64* @ETH_P_IPV6, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %152
  %165 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %168, %struct.ipv6hdr** %14, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 8
  %173 = inttoptr i64 %172 to %struct.tcphdr*
  store %struct.tcphdr* %173, %struct.tcphdr** %15, align 8
  %174 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %175 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 2
  %178 = load i32, i32* %21, align 4
  %179 = add nsw i32 %177, %178
  store i32 %179, i32* %22, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sext i32 %180 to i64
  %182 = call i8* @htons(i64 %181)
  %183 = load %struct.ipv6hdr*, %struct.ipv6hdr** %14, align 8
  %184 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  br label %226

185:                                              ; preds = %152
  %186 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to %struct.iphdr*
  store %struct.iphdr* %189, %struct.iphdr** %13, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %194 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = shl i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %192, %197
  %199 = inttoptr i64 %198 to %struct.tcphdr*
  store %struct.tcphdr* %199, %struct.tcphdr** %15, align 8
  %200 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %201 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = shl i32 %202, 2
  %204 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %205 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 2
  %208 = add nsw i32 %203, %207
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = call i8* @htons(i64 %212)
  %214 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 2
  store i8* %213, i8** %215, align 8
  %216 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %217 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %216, i32 0, i32 1
  store i64 0, i64* %217, align 8
  %218 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %219 = bitcast %struct.iphdr* %218 to i8*
  %220 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %221 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @ip_fast_csum(i8* %219, i32 %222)
  %224 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %225 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  br label %226

226:                                              ; preds = %185, %164
  %227 = load i32, i32* %16, align 4
  %228 = load %struct.tcphdr*, %struct.tcphdr** %15, align 8
  %229 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %22, align 4
  %233 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %234 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %265

239:                                              ; preds = %226
  %240 = load i32*, i32** %7, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @qlcnic_83xx_get_lro_sts_mss(i32 %242)
  store i32 %243, i32* %24, align 4
  %244 = load i32, i32* %24, align 4
  %245 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %246 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %245)
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  store i32 %244, i32* %247, align 4
  %248 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load i64, i64* @ETH_P_IPV6, align 8
  %252 = call i8* @htons(i64 %251)
  %253 = icmp eq i8* %250, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %239
  %255 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %257 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %256)
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  br label %264

259:                                              ; preds = %239
  %260 = load i32, i32* @SKB_GSO_TCPV4, align 4
  %261 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %262 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %261)
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  br label %264

264:                                              ; preds = %259, %254
  br label %265

265:                                              ; preds = %264, %226
  %266 = load i32, i32* %25, align 4
  %267 = icmp ne i32 %266, 65535
  br i1 %267, label %268, label %275

268:                                              ; preds = %265
  %269 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %270 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %271 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %25, align 4
  %274 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %269, i32 %272, i32 %273)
  br label %278

275:                                              ; preds = %265
  %276 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %277 = call i32 @netif_receive_skb(%struct.sk_buff* %276)
  br label %278

278:                                              ; preds = %275, %268
  %279 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %280 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %286 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, %284
  store i32 %289, i32* %287, align 4
  %290 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %10, align 8
  store %struct.qlcnic_rx_buffer* %290, %struct.qlcnic_rx_buffer** %4, align 8
  br label %291

291:                                              ; preds = %278, %143, %91, %60, %41
  %292 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %4, align 8
  ret %struct.qlcnic_rx_buffer* %292
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_lro_pktln(i32) #1

declare dso_local i32 @qlcnic_83xx_l2_hdr_off(i32) #1

declare dso_local i32 @qlcnic_83xx_l4_hdr_off(i32) #1

declare dso_local i32 @qlcnic_83xx_is_psh_bit(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_is_lb_pkt(i32, i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @qlcnic_83xx_is_tstamp(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @qlcnic_83xx_get_lro_sts_mss(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
