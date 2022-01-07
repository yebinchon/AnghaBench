; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txq_wi_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad.c_bnad_txq_wi_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.bna_tcb = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.bna_txq_entry = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i8*, i8*, i64, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@BNA_TXQ_WI_CF_INS_PRIO = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_INS_VLAN = common dso_local global i32 0, align 4
@BNAD_RF_CEE_RUNNING = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@tx_skb_mss_too_long = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BNA_TXQ_WI_SEND = common dso_local global i32 0, align 4
@tx_skb_tso_too_short = common dso_local global i32 0, align 4
@BNA_TXQ_WI_SEND_LSO = common dso_local global i32 0, align 4
@tx_skb_tso_prepare = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_IP_CKSUM = common dso_local global i32 0, align 4
@BNA_TXQ_WI_CF_TCP_CKSUM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@tx_skb_non_tso_too_long = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@tcpcsum_offload = common dso_local global i32 0, align 4
@tx_skb_tcp_hdr = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@BNA_TXQ_WI_CF_UDP_CKSUM = common dso_local global i32 0, align 4
@udpcsum_offload = common dso_local global i32 0, align 4
@tx_skb_udp_hdr = common dso_local global i32 0, align 4
@tx_skb_csum_err = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, %struct.bna_tcb*, %struct.sk_buff*, %struct.bna_txq_entry*)* @bnad_txq_wi_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_txq_wi_prepare(%struct.bnad* %0, %struct.bna_tcb* %1, %struct.sk_buff* %2, %struct.bna_txq_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnad*, align 8
  %7 = alloca %struct.bna_tcb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bna_txq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %6, align 8
  store %struct.bna_tcb* %1, %struct.bna_tcb** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.bna_txq_entry* %3, %struct.bna_txq_entry** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @vlan_tx_tag_get(%struct.sk_buff* %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @BNA_TXQ_WI_CF_INS_PRIO, align 4
  %22 = load i32, i32* @BNA_TXQ_WI_CF_INS_VLAN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i32, i32* @BNAD_RF_CEE_RUNNING, align 4
  %28 = load %struct.bnad*, %struct.bnad** %6, align 8
  %29 = getelementptr inbounds %struct.bnad, %struct.bnad* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.bna_tcb*, %struct.bna_tcb** %7, align 8
  %34 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 7
  %37 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 8191
  %41 = or i32 %38, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @BNA_TXQ_WI_CF_INS_PRIO, align 4
  %43 = load i32, i32* @BNA_TXQ_WI_CF_INS_VLAN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %32, %26
  %48 = load i32, i32* %12, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %51 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  store i8* %49, i8** %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i64 @skb_is_gso(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %150

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.bnad*, %struct.bnad** %6, align 8
  %64 = getelementptr inbounds %struct.bnad, %struct.bnad* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %62, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %57
  %73 = load %struct.bnad*, %struct.bnad** %6, align 8
  %74 = load i32, i32* @tx_skb_mss_too_long, align 4
  %75 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %73, i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %302

78:                                               ; preds = %57
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i64 @skb_transport_offset(%struct.sk_buff* %81)
  %83 = add nsw i64 %80, %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @tcp_hdrlen(%struct.sk_buff* %84)
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %78
  %96 = load i32, i32* @BNA_TXQ_WI_SEND, align 4
  %97 = call i64 @__constant_htons(i32 %96)
  %98 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %99 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 4
  store i64 %97, i64* %101, align 8
  %102 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %103 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store i8* null, i8** %105, align 8
  %106 = load %struct.bnad*, %struct.bnad** %6, align 8
  %107 = load i32, i32* @tx_skb_tso_too_short, align 4
  %108 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %106, i32 %107)
  br label %122

109:                                              ; preds = %78
  %110 = load i32, i32* @BNA_TXQ_WI_SEND_LSO, align 4
  %111 = call i64 @__constant_htons(i32 %110)
  %112 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %113 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  store i64 %111, i64* %115, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i8* @htons(i32 %116)
  %118 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %119 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i8* %117, i8** %121, align 8
  br label %122

122:                                              ; preds = %109, %95
  %123 = load %struct.bnad*, %struct.bnad** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = call i64 @bnad_tso_prepare(%struct.bnad* %123, %struct.sk_buff* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.bnad*, %struct.bnad** %6, align 8
  %129 = load i32, i32* @tx_skb_tso_prepare, align 4
  %130 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %128, i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %5, align 4
  br label %302

133:                                              ; preds = %122
  %134 = load i32, i32* @BNA_TXQ_WI_CF_IP_CKSUM, align 4
  %135 = load i32, i32* @BNA_TXQ_WI_CF_TCP_CKSUM, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @tcp_hdrlen(%struct.sk_buff* %139)
  %141 = ashr i32 %140, 2
  %142 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %143 = call i64 @skb_transport_offset(%struct.sk_buff* %142)
  %144 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 %141, i64 %143)
  %145 = call i8* @htons(i32 %144)
  %146 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %147 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  store i8* %145, i8** %149, align 8
  br label %287

150:                                              ; preds = %47
  %151 = load i32, i32* @BNA_TXQ_WI_SEND, align 4
  %152 = call i64 @__constant_htons(i32 %151)
  %153 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %154 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 4
  store i64 %152, i64* %156, align 8
  %157 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %158 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  store i8* null, i8** %160, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.bnad*, %struct.bnad** %6, align 8
  %165 = getelementptr inbounds %struct.bnad, %struct.bnad* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @ETH_HLEN, align 8
  %171 = add nsw i64 %169, %170
  %172 = icmp sgt i64 %163, %171
  %173 = zext i1 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %150
  %177 = load %struct.bnad*, %struct.bnad** %6, align 8
  %178 = load i32, i32* @tx_skb_non_tso_too_long, align 4
  %179 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %177, i32 %178)
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  br label %302

182:                                              ; preds = %150
  %183 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %184 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %281

188:                                              ; preds = %182
  store i64 0, i64* %13, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @ETH_P_IP, align 4
  %193 = call i64 @__constant_htons(i32 %192)
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %188
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %196)
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %13, align 8
  br label %200

200:                                              ; preds = %195, %188
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* @IPPROTO_TCP, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %238

204:                                              ; preds = %200
  %205 = load i32, i32* @BNA_TXQ_WI_CF_TCP_CKSUM, align 4
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %10, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = call i64 @skb_transport_offset(%struct.sk_buff* %208)
  %210 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 0, i64 %209)
  %211 = call i8* @htons(i32 %210)
  %212 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %213 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  store i8* %211, i8** %215, align 8
  %216 = load %struct.bnad*, %struct.bnad** %6, align 8
  %217 = load i32, i32* @tcpcsum_offload, align 4
  %218 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %216, i32 %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %220 = call i64 @skb_headlen(%struct.sk_buff* %219)
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = call i64 @skb_transport_offset(%struct.sk_buff* %221)
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = call i32 @tcp_hdrlen(%struct.sk_buff* %223)
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %222, %225
  %227 = icmp slt i64 %220, %226
  %228 = zext i1 %227 to i32
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %204
  %232 = load %struct.bnad*, %struct.bnad** %6, align 8
  %233 = load i32, i32* @tx_skb_tcp_hdr, align 4
  %234 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %232, i32 %233)
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %5, align 4
  br label %302

237:                                              ; preds = %204
  br label %280

238:                                              ; preds = %200
  %239 = load i64, i64* %13, align 8
  %240 = load i64, i64* @IPPROTO_UDP, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %273

242:                                              ; preds = %238
  %243 = load i32, i32* @BNA_TXQ_WI_CF_UDP_CKSUM, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %247 = call i64 @skb_transport_offset(%struct.sk_buff* %246)
  %248 = call i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32 0, i64 %247)
  %249 = call i8* @htons(i32 %248)
  %250 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %251 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  store i8* %249, i8** %253, align 8
  %254 = load %struct.bnad*, %struct.bnad** %6, align 8
  %255 = load i32, i32* @udpcsum_offload, align 4
  %256 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %254, i32 %255)
  %257 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %258 = call i64 @skb_headlen(%struct.sk_buff* %257)
  %259 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %260 = call i64 @skb_transport_offset(%struct.sk_buff* %259)
  %261 = add i64 %260, 4
  %262 = icmp ult i64 %258, %261
  %263 = zext i1 %262 to i32
  %264 = call i64 @unlikely(i32 %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %242
  %267 = load %struct.bnad*, %struct.bnad** %6, align 8
  %268 = load i32, i32* @tx_skb_udp_hdr, align 4
  %269 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %267, i32 %268)
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %5, align 4
  br label %302

272:                                              ; preds = %242
  br label %279

273:                                              ; preds = %238
  %274 = load %struct.bnad*, %struct.bnad** %6, align 8
  %275 = load i32, i32* @tx_skb_csum_err, align 4
  %276 = call i32 @BNAD_UPDATE_CTR(%struct.bnad* %274, i32 %275)
  %277 = load i32, i32* @EINVAL, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %5, align 4
  br label %302

279:                                              ; preds = %272
  br label %280

280:                                              ; preds = %279, %237
  br label %286

281:                                              ; preds = %182
  %282 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %283 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  store i8* null, i8** %285, align 8
  br label %286

286:                                              ; preds = %281, %280
  br label %287

287:                                              ; preds = %286, %133
  %288 = load i32, i32* %10, align 4
  %289 = call i8* @htons(i32 %288)
  %290 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %291 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i8* %289, i8** %293, align 8
  %294 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %295 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @htonl(i64 %296)
  %298 = load %struct.bna_txq_entry*, %struct.bna_txq_entry** %9, align 8
  %299 = getelementptr inbounds %struct.bna_txq_entry, %struct.bna_txq_entry* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  store i32 %297, i32* %301, align 8
  store i32 0, i32* %5, align 4
  br label %302

302:                                              ; preds = %287, %273, %266, %231, %176, %127, %72
  %303 = load i32, i32* %5, align 4
  ret i32 %303
}

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNAD_UPDATE_CTR(%struct.bnad*, i32) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local i64 @bnad_tso_prepare(%struct.bnad*, %struct.sk_buff*) #1

declare dso_local i32 @BNA_TXQ_WI_L4_HDR_N_OFFSET(i32, i64) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
