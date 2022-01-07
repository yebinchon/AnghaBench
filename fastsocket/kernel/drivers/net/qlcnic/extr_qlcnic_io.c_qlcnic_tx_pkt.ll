; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, %struct.TYPE_7__, %struct.qlcnic_host_tx_ring* }
%struct.TYPE_7__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i64, i32, %struct.TYPE_6__*, %struct.cmd_desc_type0* }
%struct.TYPE_6__ = type { i32* }
%struct.cmd_desc_type0 = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32*, i64, i8* }
%struct.vlan_ethhdr = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ETH_P_8021Q = common dso_local global i64 0, align 8
@FLAGS_VLAN_TAGGED = common dso_local global i64 0, align 8
@FLAGS_VLAN_OOB = common dso_local global i64 0, align 8
@QLCNIC_TAGGING_ENABLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TX_ETHER_PKT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@TX_TCP_LSO6 = common dso_local global i32 0, align 4
@TX_TCP_LSO = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TX_TCP_PKT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@TX_UDP_PKT = common dso_local global i32 0, align 4
@TX_TCPV6_PKT = common dso_local global i32 0, align 4
@TX_UDPV6_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*)* @qlcnic_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter* %0, %struct.cmd_desc_type0* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.cmd_desc_type0*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cmd_desc_type0*, align 8
  %18 = alloca %struct.vlan_ethhdr*, align 8
  %19 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.cmd_desc_type0* %1, %struct.cmd_desc_type0** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 3
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %23, align 8
  store %struct.qlcnic_host_tx_ring* %24, %struct.qlcnic_host_tx_ring** %19, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @ntohs(i8* %27)
  store i64 %28, i64* %20, align 8
  %29 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %30 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %21, align 8
  %32 = load i64, i64* %20, align 8
  %33 = load i64, i64* @ETH_P_8021Q, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %39, %struct.vlan_ethhdr** %18, align 8
  %40 = load i64, i64* @FLAGS_VLAN_TAGGED, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %42 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @ntohs(i8* %43)
  store i64 %44, i64* %12, align 8
  %45 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %46 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @ntohs(i8* %47)
  store i64 %48, i64* %20, align 8
  br label %58

49:                                               ; preds = %3
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* @FLAGS_VLAN_OOB, align 8
  store i64 %54, i64* %11, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i64 @vlan_tx_tag_get(%struct.sk_buff* %55)
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @unlikely(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %338

77:                                               ; preds = %67, %64
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @QLCNIC_TAGGING_ENABLED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %94

88:                                               ; preds = %80, %77
  %89 = load i64, i64* @FLAGS_VLAN_OOB, align 8
  store i64 %89, i64* %11, align 8
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %88, %58
  br label %94

94:                                               ; preds = %93, %87
  %95 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @qlcnic_set_tx_vlan_tci(%struct.cmd_desc_type0* %95, i64 %96)
  %98 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0* %98, i64 %99, i32 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @BIT_0, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %94
  %110 = load i32, i32* @BIT_0, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %11, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %11, align 8
  %114 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %115 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %114, i32 0, i32 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @ETH_ALEN, align 4
  %120 = call i32 @memcpy(i32* %115, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %109, %94
  %122 = load i32, i32* @TX_ETHER_PKT, align 4
  store i32 %122, i32* %9, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = call i64 @skb_is_gso(%struct.sk_buff* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %268

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = call i32 @skb_transport_offset(%struct.sk_buff* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = call i32 @tcp_hdrlen(%struct.sk_buff* %129)
  %131 = add nsw i32 %128, %130
  store i32 %131, i32* %10, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cpu_to_le16(i32 %135)
  %137 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %138 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %141 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* @ETH_P_IPV6, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %126
  %146 = load i32, i32* @TX_TCP_LSO6, align 4
  br label %149

147:                                              ; preds = %126
  %148 = load i32, i32* @TX_TCP_LSO, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  store i32 %150, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 2, i32* %14, align 4
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* @FLAGS_VLAN_OOB, align 8
  %153 = and i64 %151, %152
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %217

155:                                              ; preds = %149
  %156 = load i32, i32* @VLAN_HLEN, align 4
  %157 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %158 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* @VLAN_HLEN, align 4
  %162 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %163 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @VLAN_HLEN, align 4
  %165 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %166 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  %167 = load i64, i64* @FLAGS_VLAN_TAGGED, align 8
  %168 = load i64, i64* %11, align 8
  %169 = or i64 %168, %167
  store i64 %169, i64* %11, align 8
  %170 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %171 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %170, i32 0, i32 3
  %172 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %171, align 8
  %173 = load i64, i64* %21, align 8
  %174 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %172, i64 %173
  store %struct.cmd_desc_type0* %174, %struct.cmd_desc_type0** %17, align 8
  %175 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %176 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %175, i32 0, i32 2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i64, i64* %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  store i32* null, i32** %180, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sub nsw i32 20, %181
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @VLAN_HLEN, align 4
  %185 = add nsw i32 %183, %184
  %186 = call i32 @min(i32 %182, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %17, align 8
  %188 = bitcast %struct.cmd_desc_type0* %187 to i8*
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  %190 = bitcast i8* %189 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %190, %struct.vlan_ethhdr** %18, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %193 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %191, %struct.vlan_ethhdr* %192, i32 12)
  %194 = load i64, i64* @ETH_P_8021Q, align 8
  %195 = call i8* @htons(i64 %194)
  %196 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %197 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %12, align 8
  %199 = call i8* @htons(i64 %198)
  %200 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %201 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %203 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %18, align 8
  %204 = bitcast %struct.vlan_ethhdr* %203 to i8*
  %205 = getelementptr inbounds i8, i8* %204, i64 16
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %206, 16
  %208 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %202, i32 12, i8* %205, i32 %207)
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @VLAN_HLEN, align 4
  %211 = sub nsw i32 %209, %210
  store i32 %211, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %212 = load i64, i64* %21, align 8
  %213 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %214 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i64 @get_next_index(i64 %212, i32 %215)
  store i64 %216, i64* %21, align 8
  br label %217

217:                                              ; preds = %155, %149
  br label %218

218:                                              ; preds = %222, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %258

222:                                              ; preds = %218
  %223 = load i32, i32* %14, align 4
  %224 = sub nsw i32 20, %223
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %16, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %226, %227
  %229 = call i32 @min(i32 %225, i32 %228)
  store i32 %229, i32* %15, align 4
  %230 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %231 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %230, i32 0, i32 3
  %232 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %231, align 8
  %233 = load i64, i64* %21, align 8
  %234 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %232, i64 %233
  store %struct.cmd_desc_type0* %234, %struct.cmd_desc_type0** %17, align 8
  %235 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %236 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %235, i32 0, i32 2
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = load i64, i64* %21, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  store i32* null, i32** %240, align 8
  %241 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %17, align 8
  %244 = bitcast %struct.cmd_desc_type0* %243 to i8*
  %245 = load i32, i32* %14, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i32, i32* %15, align 4
  %249 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %241, i32 %242, i8* %247, i32 %248)
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* %13, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %253 = load i64, i64* %21, align 8
  %254 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %255 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @get_next_index(i64 %253, i32 %256)
  store i64 %257, i64* %21, align 8
  br label %218

258:                                              ; preds = %218
  %259 = load i64, i64* %21, align 8
  %260 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %19, align 8
  %261 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = call i32 (...) @smp_mb()
  %263 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %264 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %321

268:                                              ; preds = %121
  %269 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %270 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %320

274:                                              ; preds = %268
  %275 = load i64, i64* %20, align 8
  %276 = load i64, i64* @ETH_P_IP, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %296

278:                                              ; preds = %274
  %279 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %280 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %279)
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @IPPROTO_TCP, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = load i32, i32* @TX_TCP_PKT, align 4
  store i32 %287, i32* %9, align 4
  br label %295

288:                                              ; preds = %278
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @IPPROTO_UDP, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = load i32, i32* @TX_UDP_PKT, align 4
  store i32 %293, i32* %9, align 4
  br label %294

294:                                              ; preds = %292, %288
  br label %295

295:                                              ; preds = %294, %286
  br label %319

296:                                              ; preds = %274
  %297 = load i64, i64* %20, align 8
  %298 = load i64, i64* @ETH_P_IPV6, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %318

300:                                              ; preds = %296
  %301 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %302 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %301)
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %8, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @IPPROTO_TCP, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %300
  %309 = load i32, i32* @TX_TCPV6_PKT, align 4
  store i32 %309, i32* %9, align 4
  br label %317

310:                                              ; preds = %300
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @IPPROTO_UDP, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %310
  %315 = load i32, i32* @TX_UDPV6_PKT, align 4
  store i32 %315, i32* %9, align 4
  br label %316

316:                                              ; preds = %314, %310
  br label %317

317:                                              ; preds = %316, %308
  br label %318

318:                                              ; preds = %317, %296
  br label %319

319:                                              ; preds = %318, %295
  br label %320

320:                                              ; preds = %319, %268
  br label %321

321:                                              ; preds = %320, %258
  %322 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %323 = call i32 @skb_transport_offset(%struct.sk_buff* %322)
  %324 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %325 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %329 = call i32 @skb_network_offset(%struct.sk_buff* %328)
  %330 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %331 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, %329
  store i32 %333, i32* %331, align 4
  %334 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %6, align 8
  %335 = load i64, i64* %11, align 8
  %336 = load i32, i32* %9, align 4
  %337 = call i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0* %334, i64 %335, i32 %336)
  store i32 0, i32* %4, align 4
  br label %338

338:                                              ; preds = %321, %74
  %339 = load i32, i32* %4, align 4
  ret i32 %339
}

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i64 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qlcnic_set_tx_vlan_tci(%struct.cmd_desc_type0*, i64) #1

declare dso_local i32 @qlcnic_set_tx_flags_opcode(%struct.cmd_desc_type0*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, %struct.vlan_ethhdr*, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i64 @get_next_index(i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
