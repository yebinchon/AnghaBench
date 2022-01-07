; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_eth_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_eth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.adapter = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.sge_eth_txq* }
%struct.sge_eth_txq = type { %struct.TYPE_14__, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_11__*, i32* }
%struct.TYPE_11__ = type { %struct.ulptx_sgl*, %struct.sk_buff* }
%struct.ulptx_sgl = type { i32 }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.fw_eth_tx_pkt_wr = type { i8*, i8*, i8* }
%struct.cpl_tx_pkt_core = type { i8*, i8*, i8*, i8* }
%struct.skb_shared_info = type { i32, i32, i64 }
%struct.cpl_tx_pkt_lso = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_15__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: Tx ring %u full while queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETHTXQ_STOP_THRES = common dso_local global i32 0, align 4
@FW_WR_EQUEQ = common dso_local global i32 0, align 4
@FW_WR_EQUIQ = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@FW_ETH_TX_PKT_WR = common dso_local global i32 0, align 4
@CPL_TX_PKT_LSO = common dso_local global i32 0, align 4
@LSO_FIRST_SLICE = common dso_local global i32 0, align 4
@LSO_LAST_SLICE = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP6 = common dso_local global i32 0, align 4
@TX_CSUM_TCPIP = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@TXPKT_IPCSUM_DIS = common dso_local global i32 0, align 4
@TXPKT_L4CSUM_DIS = common dso_local global i32 0, align 4
@TXPKT_VLAN_VLD = common dso_local global i32 0, align 4
@CPL_TX_PKT_XT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_eth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca %struct.sge_eth_txq*, align 8
  %15 = alloca %struct.port_info*, align 8
  %16 = alloca %struct.fw_eth_tx_pkt_wr*, align 8
  %17 = alloca %struct.cpl_tx_pkt_core*, align 8
  %18 = alloca %struct.skb_shared_info*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.cpl_tx_pkt_lso*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %28 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %19, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ETH_HLEN, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %109, %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

46:                                               ; preds = %2
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call %struct.port_info* @netdev_priv(%struct.net_device* %47)
  store %struct.port_info* %48, %struct.port_info** %15, align 8
  %49 = load %struct.port_info*, %struct.port_info** %15, align 8
  %50 = getelementptr inbounds %struct.port_info, %struct.port_info* %49, i32 0, i32 2
  %51 = load %struct.adapter*, %struct.adapter** %50, align 8
  store %struct.adapter* %51, %struct.adapter** %13, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.adapter*, %struct.adapter** %13, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.port_info*, %struct.port_info** %15, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %57, i64 %63
  store %struct.sge_eth_txq* %64, %struct.sge_eth_txq** %14, align 8
  %65 = load %struct.adapter*, %struct.adapter** %13, align 8
  %66 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %67 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %66, i32 0, i32 0
  %68 = call i32 @reclaim_completed_tx(%struct.adapter* %65, %struct.TYPE_14__* %67, i32 1)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @calc_tx_flits(%struct.sk_buff* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @flits_to_desc(i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %74 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %73, i32 0, i32 0
  %75 = call i32 @txq_avail(%struct.TYPE_14__* %74)
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %46
  %84 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %85 = call i32 @eth_txq_stop(%struct.sge_eth_txq* %84)
  %86 = load %struct.adapter*, %struct.adapter** %13, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.net_device*, %struct.net_device** %5, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

95:                                               ; preds = %46
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = call i64 @is_eth_imm(%struct.sk_buff* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %95
  %100 = load %struct.adapter*, %struct.adapter** %13, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i64 @map_skb(i32 %102, %struct.sk_buff* %103, i32* %32)
  %105 = icmp slt i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %111 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %42

114:                                              ; preds = %99, %95
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @DIV_ROUND_UP(i32 %115, i32 2)
  %117 = call i32 @FW_WR_LEN16(i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @ETHTXQ_STOP_THRES, align 4
  %120 = icmp slt i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %114
  %125 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %126 = call i32 @eth_txq_stop(%struct.sge_eth_txq* %125)
  %127 = load i32, i32* @FW_WR_EQUEQ, align 4
  %128 = load i32, i32* @FW_WR_EQUIQ, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %124, %114
  %133 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %134 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %138 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %136, i64 %140
  %142 = bitcast i32* %141 to i8*
  %143 = bitcast i8* %142 to %struct.fw_eth_tx_pkt_wr*
  store %struct.fw_eth_tx_pkt_wr* %143, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i8* @htonl(i32 %144)
  %146 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %147 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = call i8* @cpu_to_be64(i32 0)
  %149 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %150 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %152 = bitcast %struct.fw_eth_tx_pkt_wr* %151 to i32*
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** %8, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %156)
  store %struct.skb_shared_info* %157, %struct.skb_shared_info** %18, align 8
  %158 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %159 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %265

162:                                              ; preds = %132
  %163 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %164 = bitcast %struct.fw_eth_tx_pkt_wr* %163 to i8*
  %165 = bitcast i8* %164 to %struct.cpl_tx_pkt_lso*
  store %struct.cpl_tx_pkt_lso* %165, %struct.cpl_tx_pkt_lso** %22, align 8
  %166 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %167 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SKB_GSO_TCPV6, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %23, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %174 = call i32 @skb_network_header_len(%struct.sk_buff* %173)
  store i32 %174, i32* %24, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %176 = call i32 @skb_network_offset(%struct.sk_buff* %175)
  %177 = load i32, i32* @ETH_HLEN, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %25, align 4
  %179 = load i32, i32* @FW_ETH_TX_PKT_WR, align 4
  %180 = call i32 @FW_WR_OP(i32 %179)
  %181 = call i32 @FW_WR_IMMDLEN(i32 40)
  %182 = or i32 %180, %181
  %183 = call i8* @htonl(i32 %182)
  %184 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %185 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  %186 = load i32, i32* @CPL_TX_PKT_LSO, align 4
  %187 = call i32 @LSO_OPCODE(i32 %186)
  %188 = load i32, i32* @LSO_FIRST_SLICE, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @LSO_LAST_SLICE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @LSO_IPV6(i32 %192)
  %194 = or i32 %191, %193
  %195 = load i32, i32* %25, align 4
  %196 = sdiv i32 %195, 4
  %197 = call i32 @LSO_ETHHDR_LEN(i32 %196)
  %198 = or i32 %194, %197
  %199 = load i32, i32* %24, align 4
  %200 = sdiv i32 %199, 4
  %201 = call i32 @LSO_IPHDR_LEN(i32 %200)
  %202 = or i32 %198, %201
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = call %struct.TYPE_15__* @tcp_hdr(%struct.sk_buff* %203)
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @LSO_TCPHDR_LEN(i32 %206)
  %208 = or i32 %202, %207
  %209 = call i8* @htonl(i32 %208)
  %210 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %211 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 4
  store i8* %209, i8** %212, align 8
  %213 = call i8* @htons(i32 0)
  %214 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %215 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 3
  store i8* %213, i8** %216, align 8
  %217 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %218 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @htons(i32 %219)
  %221 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %222 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  store i8* %220, i8** %223, align 8
  %224 = call i8* @htonl(i32 0)
  %225 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %226 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  store i8* %224, i8** %227, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @htonl(i32 %230)
  %232 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %233 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  store i8* %231, i8** %234, align 8
  %235 = load %struct.cpl_tx_pkt_lso*, %struct.cpl_tx_pkt_lso** %22, align 8
  %236 = getelementptr inbounds %struct.cpl_tx_pkt_lso, %struct.cpl_tx_pkt_lso* %235, i64 1
  %237 = bitcast %struct.cpl_tx_pkt_lso* %236 to i8*
  %238 = bitcast i8* %237 to %struct.cpl_tx_pkt_core*
  store %struct.cpl_tx_pkt_core* %238, %struct.cpl_tx_pkt_core** %17, align 8
  %239 = load i32, i32* %23, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %162
  %242 = load i32, i32* @TX_CSUM_TCPIP6, align 4
  br label %245

243:                                              ; preds = %162
  %244 = load i32, i32* @TX_CSUM_TCPIP, align 4
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32 [ %242, %241 ], [ %244, %243 ]
  %247 = call i32 @TXPKT_CSUM_TYPE(i32 %246)
  %248 = load i32, i32* %24, align 4
  %249 = call i32 @TXPKT_IPHDR_LEN(i32 %248)
  %250 = or i32 %247, %249
  %251 = load i32, i32* %25, align 4
  %252 = call i32 @TXPKT_ETHHDR_LEN(i32 %251)
  %253 = or i32 %250, %252
  store i32 %253, i32* %7, align 4
  %254 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %255 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  %258 = load %struct.skb_shared_info*, %struct.skb_shared_info** %18, align 8
  %259 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %262 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %263, %260
  store i64 %264, i64* %262, align 8
  br label %310

265:                                              ; preds = %132
  %266 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %267 = call i64 @is_eth_imm(%struct.sk_buff* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %265
  %270 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %271 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = add i64 %273, 32
  br label %276

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %269
  %277 = phi i64 [ %274, %269 ], [ 32, %275 ]
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %26, align 4
  %279 = load i32, i32* @FW_ETH_TX_PKT_WR, align 4
  %280 = call i32 @FW_WR_OP(i32 %279)
  %281 = load i32, i32* %26, align 4
  %282 = call i32 @FW_WR_IMMDLEN(i32 %281)
  %283 = or i32 %280, %282
  %284 = call i8* @htonl(i32 %283)
  %285 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %286 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  %287 = load %struct.fw_eth_tx_pkt_wr*, %struct.fw_eth_tx_pkt_wr** %16, align 8
  %288 = getelementptr inbounds %struct.fw_eth_tx_pkt_wr, %struct.fw_eth_tx_pkt_wr* %287, i64 1
  %289 = bitcast %struct.fw_eth_tx_pkt_wr* %288 to i8*
  %290 = bitcast i8* %289 to %struct.cpl_tx_pkt_core*
  store %struct.cpl_tx_pkt_core* %290, %struct.cpl_tx_pkt_core** %17, align 8
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %305

296:                                              ; preds = %276
  %297 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %298 = call i32 @hwcsum(%struct.sk_buff* %297)
  %299 = load i32, i32* @TXPKT_IPCSUM_DIS, align 4
  %300 = or i32 %298, %299
  store i32 %300, i32* %7, align 4
  %301 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %302 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %302, align 8
  br label %309

305:                                              ; preds = %276
  %306 = load i32, i32* @TXPKT_L4CSUM_DIS, align 4
  %307 = load i32, i32* @TXPKT_IPCSUM_DIS, align 4
  %308 = or i32 %306, %307
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %305, %296
  br label %310

310:                                              ; preds = %309, %245
  %311 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %312 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %326

314:                                              ; preds = %310
  %315 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %316 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 8
  %319 = load i32, i32* @TXPKT_VLAN_VLD, align 4
  %320 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %321 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %320)
  %322 = call i32 @TXPKT_VLAN(i32 %321)
  %323 = or i32 %319, %322
  %324 = load i32, i32* %7, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %7, align 4
  br label %326

326:                                              ; preds = %314, %310
  %327 = load i32, i32* @CPL_TX_PKT_XT, align 4
  %328 = call i32 @TXPKT_OPCODE(i32 %327)
  %329 = load %struct.port_info*, %struct.port_info** %15, align 8
  %330 = getelementptr inbounds %struct.port_info, %struct.port_info* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @TXPKT_INTF(i32 %331)
  %333 = or i32 %328, %332
  %334 = load %struct.adapter*, %struct.adapter** %13, align 8
  %335 = getelementptr inbounds %struct.adapter, %struct.adapter* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @TXPKT_PF(i32 %336)
  %338 = or i32 %333, %337
  %339 = call i8* @htonl(i32 %338)
  %340 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %341 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %340, i32 0, i32 3
  store i8* %339, i8** %341, align 8
  %342 = call i8* @htons(i32 0)
  %343 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %344 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %343, i32 0, i32 2
  store i8* %342, i8** %344, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %346 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i8* @htons(i32 %347)
  %349 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %350 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %349, i32 0, i32 1
  store i8* %348, i8** %350, align 8
  %351 = load i32, i32* %7, align 4
  %352 = call i8* @cpu_to_be64(i32 %351)
  %353 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %354 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %353, i32 0, i32 0
  store i8* %352, i8** %354, align 8
  %355 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %356 = call i64 @is_eth_imm(%struct.sk_buff* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %326
  %359 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %360 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %361 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %360, i32 0, i32 0
  %362 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %363 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %362, i64 1
  %364 = call i32 @inline_tx_skb(%struct.sk_buff* %359, %struct.TYPE_14__* %361, %struct.cpl_tx_pkt_core* %363)
  %365 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %366 = call i32 @dev_kfree_skb(%struct.sk_buff* %365)
  br label %421

367:                                              ; preds = %326
  %368 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %369 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %370 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %369, i32 0, i32 0
  %371 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %372 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %371, i64 1
  %373 = bitcast %struct.cpl_tx_pkt_core* %372 to %struct.ulptx_sgl*
  %374 = load i32*, i32** %8, align 8
  %375 = call i32 @write_sgl(%struct.sk_buff* %368, %struct.TYPE_14__* %370, %struct.ulptx_sgl* %373, i32* %374, i32 0, i32* %32)
  %376 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %377 = call i32 @skb_orphan(%struct.sk_buff* %376)
  %378 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %379 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i32, i32* %12, align 4
  %383 = zext i32 %382 to i64
  %384 = add i64 %381, %383
  %385 = sub i64 %384, 1
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %27, align 4
  %387 = load i32, i32* %27, align 4
  %388 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %389 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp sge i32 %387, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %367
  %394 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %395 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %27, align 4
  %399 = sub nsw i32 %398, %397
  store i32 %399, i32* %27, align 4
  br label %400

400:                                              ; preds = %393, %367
  %401 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %402 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %403 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = load i32, i32* %27, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  store %struct.sk_buff* %401, %struct.sk_buff** %409, align 8
  %410 = load %struct.cpl_tx_pkt_core*, %struct.cpl_tx_pkt_core** %17, align 8
  %411 = getelementptr inbounds %struct.cpl_tx_pkt_core, %struct.cpl_tx_pkt_core* %410, i64 1
  %412 = bitcast %struct.cpl_tx_pkt_core* %411 to %struct.ulptx_sgl*
  %413 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %414 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %415, align 8
  %417 = load i32, i32* %27, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 0
  store %struct.ulptx_sgl* %412, %struct.ulptx_sgl** %420, align 8
  br label %421

421:                                              ; preds = %400, %358
  %422 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %423 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %422, i32 0, i32 0
  %424 = load i32, i32* %12, align 4
  %425 = call i32 @txq_advance(%struct.TYPE_14__* %423, i32 %424)
  %426 = load %struct.adapter*, %struct.adapter** %13, align 8
  %427 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %14, align 8
  %428 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %427, i32 0, i32 0
  %429 = load i32, i32* %12, align 4
  %430 = call i32 @ring_tx_db(%struct.adapter* %426, %struct.TYPE_14__* %428, i32 %429)
  %431 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %431, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %432

432:                                              ; preds = %421, %83, %42
  %433 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %433)
  %434 = load i32, i32* %3, align 4
  ret i32 %434
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #2

declare dso_local i32 @reclaim_completed_tx(%struct.adapter*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @calc_tx_flits(%struct.sk_buff*) #2

declare dso_local i32 @flits_to_desc(i32) #2

declare dso_local i32 @txq_avail(%struct.TYPE_14__*) #2

declare dso_local i32 @eth_txq_stop(%struct.sge_eth_txq*) #2

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

declare dso_local i64 @is_eth_imm(%struct.sk_buff*) #2

declare dso_local i64 @map_skb(i32, %struct.sk_buff*, i32*) #2

declare dso_local i32 @FW_WR_LEN16(i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #2

declare dso_local i8* @htonl(i32) #2

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #2

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #2

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #2

declare dso_local i32 @FW_WR_OP(i32) #2

declare dso_local i32 @FW_WR_IMMDLEN(i32) #2

declare dso_local i32 @LSO_OPCODE(i32) #2

declare dso_local i32 @LSO_IPV6(i32) #2

declare dso_local i32 @LSO_ETHHDR_LEN(i32) #2

declare dso_local i32 @LSO_IPHDR_LEN(i32) #2

declare dso_local i32 @LSO_TCPHDR_LEN(i32) #2

declare dso_local %struct.TYPE_15__* @tcp_hdr(%struct.sk_buff*) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @TXPKT_CSUM_TYPE(i32) #2

declare dso_local i32 @TXPKT_IPHDR_LEN(i32) #2

declare dso_local i32 @TXPKT_ETHHDR_LEN(i32) #2

declare dso_local i32 @hwcsum(%struct.sk_buff*) #2

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #2

declare dso_local i32 @TXPKT_VLAN(i32) #2

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #2

declare dso_local i32 @TXPKT_OPCODE(i32) #2

declare dso_local i32 @TXPKT_INTF(i32) #2

declare dso_local i32 @TXPKT_PF(i32) #2

declare dso_local i32 @inline_tx_skb(%struct.sk_buff*, %struct.TYPE_14__*, %struct.cpl_tx_pkt_core*) #2

declare dso_local i32 @write_sgl(%struct.sk_buff*, %struct.TYPE_14__*, %struct.ulptx_sgl*, i32*, i32, i32*) #2

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #2

declare dso_local i32 @txq_advance(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @ring_tx_db(%struct.adapter*, %struct.TYPE_14__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
