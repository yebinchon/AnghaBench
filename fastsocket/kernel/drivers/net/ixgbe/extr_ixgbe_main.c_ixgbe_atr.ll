; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_atr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i64, i64, i32, %struct.ixgbe_q_vector* }
%struct.ixgbe_q_vector = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, i32 }
%union.ixgbe_atr_hash_dword = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.anon = type { i8* }
%struct.tcphdr = type { i32, i32, i32, i64 }
%struct.ipv6hdr = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.iphdr = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@__const.ixgbe_atr.input = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@__const.ixgbe_atr.common = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_TCPV4 = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_TCPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*)* @ixgbe_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_atr(%struct.ixgbe_ring* %0, %struct.ixgbe_tx_buffer* %1) #0 {
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.ixgbe_tx_buffer*, align 8
  %5 = alloca %struct.ixgbe_q_vector*, align 8
  %6 = alloca %union.ixgbe_atr_hash_dword, align 4
  %7 = alloca %union.ixgbe_atr_hash_dword, align 4
  %8 = alloca %union.anon, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  store %struct.ixgbe_tx_buffer* %1, %struct.ixgbe_tx_buffer** %4, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 3
  %13 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %12, align 8
  store %struct.ixgbe_q_vector* %13, %struct.ixgbe_q_vector** %5, align 8
  %14 = bitcast %union.ixgbe_atr_hash_dword* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.ixgbe_atr.input to i8*), i64 8, i1 false)
  %15 = bitcast %union.ixgbe_atr_hash_dword* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.ixgbe_atr.common to i8*), i64 8, i1 false)
  %16 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %5, align 8
  %17 = icmp ne %struct.ixgbe_q_vector* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %248

19:                                               ; preds = %2
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %248

25:                                               ; preds = %19
  %26 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @skb_network_header(i32 %32)
  %34 = bitcast %union.anon* %8 to i8**
  store i8* %33, i8** %34, align 8
  %35 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_P_IPV6, align 4
  %39 = call i32 @__constant_htons(i32 %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %25
  %42 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %42, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IPPROTO_TCP, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %41, %25
  %49 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETH_P_IP, align 4
  %53 = call i32 @__constant_htons(i32 %52)
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = bitcast %union.anon* %8 to %struct.iphdr**
  %57 = load %struct.iphdr*, %struct.iphdr** %56, align 8
  %58 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPPROTO_TCP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %48
  br label %248

63:                                               ; preds = %55, %41
  %64 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.tcphdr* @tcp_hdr(i32 %66)
  store %struct.tcphdr* %67, %struct.tcphdr** %9, align 8
  %68 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %69 = icmp ne %struct.tcphdr* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %72 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %63
  br label %248

76:                                               ; preds = %70
  %77 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %78 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %76
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %248

90:                                               ; preds = %81, %76
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %94 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = call i32 @htons(i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_7__*
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %106 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %90
  %111 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %112 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ETH_P_8021Q, align 4
  %115 = call i32 @__constant_htons(i32 %114)
  %116 = xor i32 %113, %115
  %117 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %133

121:                                              ; preds = %90
  %122 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %123 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %126 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  %129 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %121, %110
  %134 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %135 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = bitcast %union.ixgbe_atr_hash_dword* %7 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %139, %136
  store i32 %140, i32* %138, align 4
  %141 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %4, align 8
  %142 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ETH_P_IP, align 4
  %145 = call i32 @__constant_htons(i32 %144)
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %133
  %148 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV4, align 4
  %149 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_7__*
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = bitcast %union.anon* %8 to %struct.iphdr**
  %152 = load %struct.iphdr*, %struct.iphdr** %151, align 8
  %153 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = bitcast %union.anon* %8 to %struct.iphdr**
  %156 = load %struct.iphdr*, %struct.iphdr** %155, align 8
  %157 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = xor i32 %154, %158
  %160 = bitcast %union.ixgbe_atr_hash_dword* %7 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %233

163:                                              ; preds = %133
  %164 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV6, align 4
  %165 = bitcast %union.ixgbe_atr_hash_dword* %6 to %struct.TYPE_7__*
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %168 = load %struct.ipv6hdr*, %struct.ipv6hdr** %167, align 8
  %169 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %175 = load %struct.ipv6hdr*, %struct.ipv6hdr** %174, align 8
  %176 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %173, %180
  %182 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %183 = load %struct.ipv6hdr*, %struct.ipv6hdr** %182, align 8
  %184 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %181, %188
  %190 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %191 = load %struct.ipv6hdr*, %struct.ipv6hdr** %190, align 8
  %192 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = xor i32 %189, %196
  %198 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %199 = load %struct.ipv6hdr*, %struct.ipv6hdr** %198, align 8
  %200 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = xor i32 %197, %204
  %206 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %207 = load %struct.ipv6hdr*, %struct.ipv6hdr** %206, align 8
  %208 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = xor i32 %205, %212
  %214 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %215 = load %struct.ipv6hdr*, %struct.ipv6hdr** %214, align 8
  %216 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = xor i32 %213, %220
  %222 = bitcast %union.anon* %8 to %struct.ipv6hdr**
  %223 = load %struct.ipv6hdr*, %struct.ipv6hdr** %222, align 8
  %224 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = xor i32 %221, %228
  %230 = bitcast %union.ixgbe_atr_hash_dword* %7 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = xor i32 %231, %229
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %163, %147
  %234 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %5, align 8
  %235 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %234, i32 0, i32 0
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %239 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %6, i32 0, i32 0
  %242 = bitcast %struct.TYPE_7__* %241 to i64*
  %243 = load i64, i64* %242, align 4
  %244 = getelementptr inbounds %union.ixgbe_atr_hash_dword, %union.ixgbe_atr_hash_dword* %7, i32 0, i32 0
  %245 = bitcast %struct.TYPE_7__* %244 to i64*
  %246 = load i64, i64* %245, align 4
  %247 = call i32 @ixgbe_fdir_add_signature_filter_82599(i32* %237, i64 %243, i64 %246, i32 %240)
  br label %248

248:                                              ; preds = %233, %89, %75, %62, %24, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @skb_network_header(i32) #2

declare dso_local i32 @__constant_htons(i32) #2

declare dso_local %struct.tcphdr* @tcp_hdr(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @ixgbe_fdir_add_signature_filter_82599(i32*, i64, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
