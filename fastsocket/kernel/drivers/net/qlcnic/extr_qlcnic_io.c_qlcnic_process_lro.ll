; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_lro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_process_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_3__, i32, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.iphdr = type { i32, i64, i8* }
%struct.ipv6hdr = type { i8* }
%struct.tcphdr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@STATUS_CKSUM_OK = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLC_TCP_TS_HDR_SIZE = common dso_local global i32 0, align 4
@QLC_TCP_HDR_SIZE = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, i32, i32, i32)* @qlcnic_process_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_process_lro(%struct.qlcnic_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.qlcnic_recv_context*, align 8
  %12 = alloca %struct.qlcnic_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %15 = alloca %struct.iphdr*, align 8
  %16 = alloca %struct.ipv6hdr*, align 8
  %17 = alloca %struct.tcphdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 6
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %10, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 5
  %35 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %34, align 8
  store %struct.qlcnic_recv_context* %35, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %28, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %266

45:                                               ; preds = %4
  %46 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %47 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %46, i32 0, i32 0
  %48 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %48, i64 %50
  store %struct.qlcnic_host_rds_ring* %51, %struct.qlcnic_host_rds_ring** %14, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @qlcnic_get_lro_sts_refhandle(i32 %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %56 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %266

63:                                               ; preds = %45
  %64 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %65 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %64, i32 0, i32 1
  %66 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %65, align 8
  %67 = load i32, i32* %20, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %66, i64 %68
  store %struct.qlcnic_rx_buffer* %69, %struct.qlcnic_rx_buffer** %12, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @qlcnic_get_lro_sts_timestamp(i32 %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @qlcnic_get_lro_sts_length(i32 %72)
  store i32 %73, i32* %24, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @qlcnic_get_lro_sts_l2_hdr_offset(i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @qlcnic_get_lro_sts_l4_hdr_offset(i32 %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @qlcnic_get_lro_sts_push_flag(i32 %78)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @qlcnic_get_lro_sts_seq_number(i32 %80)
  store i32 %81, i32* %29, align 4
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %83 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @STATUS_CKSUM_OK, align 4
  %86 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %82, %struct.qlcnic_host_rds_ring* %83, i32 %84, i32 %85)
  store %struct.sk_buff* %86, %struct.sk_buff** %13, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %88 = icmp ne %struct.sk_buff* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %63
  %90 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %90, %struct.qlcnic_rx_buffer** %5, align 8
  br label %266

91:                                               ; preds = %63
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  store i32 0, i32* %27, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @qlcnic_82xx_is_lb_pkt(i32 %104)
  store i32 %105, i32* %23, align 4
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = load i32, i32* %23, align 4
  %109 = load i32, i32* %27, align 4
  %110 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %106, %struct.sk_buff* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %96, %91
  %112 = load i32, i32* %19, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* @QLC_TCP_TS_HDR_SIZE, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %26, align 4
  br label %122

118:                                              ; preds = %111
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* @QLC_TCP_HDR_SIZE, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %26, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %26, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @skb_put(%struct.sk_buff* %123, i32 %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @skb_pull(%struct.sk_buff* %128, i32 %129)
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %131, %struct.sk_buff* %132, i32* %28)
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %122
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %143 = call i32 @dev_kfree_skb(%struct.sk_buff* %142)
  %144 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %144, %struct.qlcnic_rx_buffer** %5, align 8
  br label %266

145:                                              ; preds = %122
  %146 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %147 = load %struct.net_device*, %struct.net_device** %10, align 8
  %148 = call i32 @eth_type_trans(%struct.sk_buff* %146, %struct.net_device* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @ntohs(i32 %153)
  %155 = load i64, i64* @ETH_P_IPV6, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %145
  %158 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %161, %struct.ipv6hdr** %16, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 8
  %166 = inttoptr i64 %165 to %struct.tcphdr*
  store %struct.tcphdr* %166, %struct.tcphdr** %17, align 8
  %167 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %168 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 2
  %171 = load i32, i32* %24, align 4
  %172 = add nsw i32 %170, %171
  store i32 %172, i32* %25, align 4
  %173 = load i32, i32* %25, align 4
  %174 = call i8* @htons(i32 %173)
  %175 = load %struct.ipv6hdr*, %struct.ipv6hdr** %16, align 8
  %176 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %217

177:                                              ; preds = %145
  %178 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to %struct.iphdr*
  store %struct.iphdr* %181, %struct.iphdr** %15, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %184, %189
  %191 = inttoptr i64 %190 to %struct.tcphdr*
  store %struct.tcphdr* %191, %struct.tcphdr** %17, align 8
  %192 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %193 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 2
  %196 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %197 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 2
  %200 = add nsw i32 %195, %199
  %201 = load i32, i32* %24, align 4
  %202 = add nsw i32 %200, %201
  store i32 %202, i32* %25, align 4
  %203 = load i32, i32* %25, align 4
  %204 = call i8* @htons(i32 %203)
  %205 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %206 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %205, i32 0, i32 2
  store i8* %204, i8** %206, align 8
  %207 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %208 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %207, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %210 = bitcast %struct.iphdr* %209 to i8*
  %211 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @ip_fast_csum(i8* %210, i32 %213)
  %215 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %216 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %177, %157
  %218 = load i32, i32* %18, align 4
  %219 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %220 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %29, align 4
  %222 = call i32 @htonl(i32 %221)
  %223 = load %struct.tcphdr*, %struct.tcphdr** %17, align 8
  %224 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 4
  %225 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  store i32 %227, i32* %25, align 4
  %228 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %229 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %217
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @qlcnic_get_lro_sts_mss(i32 %235)
  %237 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %238 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %237)
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i32 %236, i32* %239, align 4
  br label %240

240:                                              ; preds = %234, %217
  %241 = load i32, i32* %28, align 4
  %242 = icmp ne i32 %241, 65535
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %245 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %246 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %28, align 4
  %249 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %244, i32 %247, i32 %248)
  br label %253

250:                                              ; preds = %240
  %251 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %252 = call i32 @netif_receive_skb(%struct.sk_buff* %251)
  br label %253

253:                                              ; preds = %250, %243
  %254 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %255 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 4
  %259 = load i32, i32* %25, align 4
  %260 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %261 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %263, %259
  store i32 %264, i32* %262, align 8
  %265 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %265, %struct.qlcnic_rx_buffer** %5, align 8
  br label %266

266:                                              ; preds = %253, %136, %89, %62, %44
  %267 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %267
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_refhandle(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_timestamp(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_length(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_l2_hdr_offset(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_l4_hdr_offset(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_push_flag(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_seq_number(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_82xx_is_lb_pkt(i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @qlcnic_get_lro_sts_mss(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
