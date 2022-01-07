; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_rx_eth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_rx_eth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { %struct.sge_qset* }
%struct.sge_qset = type { i32, i32* }
%struct.sge_rspq = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i64 }
%struct.cpl_rx_pkt = type { i64, i64, i32, i32, i32, i64 }
%struct.port_info = type { i32, i64, %struct.TYPE_4__, %struct.vlan_group* }
%struct.TYPE_4__ = type { i32 }
%struct.vlan_group = type { i32 }

@T3_RX_CSUM = common dso_local global i32 0, align 4
@SGE_PSTAT_RX_CSUM_GOOD = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SGE_PSTAT_VLANEX = common dso_local global i64 0, align 8
@VLAN_VID_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_rspq*, %struct.sk_buff*, i32, i32)* @rx_eth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_eth(%struct.adapter* %0, %struct.sge_rspq* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_rspq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpl_rx_pkt*, align 8
  %12 = alloca %struct.sge_qset*, align 8
  %13 = alloca %struct.port_info*, align 8
  %14 = alloca %struct.vlan_group*, align 8
  %15 = alloca i16, align 2
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = inttoptr i64 %21 to %struct.cpl_rx_pkt*
  store %struct.cpl_rx_pkt* %22, %struct.cpl_rx_pkt** %11, align 8
  %23 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %24 = call %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq* %23)
  store %struct.sge_qset* %24, %struct.sge_qset** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 40, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @skb_pull(%struct.sk_buff* %25, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load %struct.adapter*, %struct.adapter** %6, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %36 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @eth_type_trans(%struct.sk_buff* %31, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.port_info* @netdev_priv(i32 %45)
  store %struct.port_info* %46, %struct.port_info** %13, align 8
  %47 = load %struct.port_info*, %struct.port_info** %13, align 8
  %48 = getelementptr inbounds %struct.port_info, %struct.port_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @T3_RX_CSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %5
  %54 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %55 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %60 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @htons(i32 65535)
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %66 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %71 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @SGE_PSTAT_RX_CSUM_GOOD, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %83

80:                                               ; preds = %64, %58, %53, %5
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %69
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %86 = load %struct.adapter*, %struct.adapter** %6, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load %struct.sge_qset*, %struct.sge_qset** %88, align 8
  %90 = load %struct.port_info*, %struct.port_info** %13, align 8
  %91 = getelementptr inbounds %struct.port_info, %struct.port_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %89, i64 %92
  %94 = ptrtoint %struct.sge_qset* %85 to i64
  %95 = ptrtoint %struct.sge_qset* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 16
  %98 = trunc i64 %97 to i32
  %99 = call i32 @skb_record_rx_queue(%struct.sk_buff* %84, i32 %98)
  %100 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %101 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %173

105:                                              ; preds = %83
  %106 = load %struct.port_info*, %struct.port_info** %13, align 8
  %107 = getelementptr inbounds %struct.port_info, %struct.port_info* %106, i32 0, i32 3
  %108 = load %struct.vlan_group*, %struct.vlan_group** %107, align 8
  store %struct.vlan_group* %108, %struct.vlan_group** %14, align 8
  %109 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %110 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @SGE_PSTAT_VLANEX, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.vlan_group*, %struct.vlan_group** %14, align 8
  %117 = call i64 @likely(%struct.vlan_group* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %169

119:                                              ; preds = %105
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %124 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %123, i32 0, i32 0
  %125 = load %struct.vlan_group*, %struct.vlan_group** %14, align 8
  %126 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %127 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call zeroext i16 @ntohs(i32 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %131 = call i32 @vlan_gro_receive(i32* %124, %struct.vlan_group* %125, i16 zeroext %129, %struct.sk_buff* %130)
  br label %168

132:                                              ; preds = %119
  %133 = load %struct.port_info*, %struct.port_info** %13, align 8
  %134 = getelementptr inbounds %struct.port_info, %struct.port_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %132
  %140 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %141 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call zeroext i16 @ntohs(i32 %142)
  %144 = zext i16 %143 to i32
  %145 = load i16, i16* @VLAN_VID_MASK, align 2
  %146 = zext i16 %145 to i32
  %147 = and i32 %144, %146
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* %15, align 2
  %149 = load %struct.vlan_group*, %struct.vlan_group** %14, align 8
  %150 = load i16, i16* %15, align 2
  %151 = call i32 @vlan_group_get_device(%struct.vlan_group* %149, i16 zeroext %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.port_info*, %struct.port_info** %13, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 @cxgb3_process_iscsi_prov_pack(%struct.port_info* %154, %struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %139, %132
  %158 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %159 = load %struct.vlan_group*, %struct.vlan_group** %14, align 8
  %160 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %11, align 8
  %161 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call zeroext i16 @ntohs(i32 %162)
  %164 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %165 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @__vlan_hwaccel_rx(%struct.sk_buff* %158, %struct.vlan_group* %159, i16 zeroext %163, i32 %166)
  br label %168

168:                                              ; preds = %157, %122
  br label %172

169:                                              ; preds = %105
  %170 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %171 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %170)
  br label %172

172:                                              ; preds = %169, %168
  br label %205

173:                                              ; preds = %83
  %174 = load %struct.sge_rspq*, %struct.sge_rspq** %7, align 8
  %175 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %173
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %183 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %182, i32 0, i32 0
  %184 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %185 = call i32 @napi_gro_receive(i32* %183, %struct.sk_buff* %184)
  br label %200

186:                                              ; preds = %178
  %187 = load %struct.port_info*, %struct.port_info** %13, align 8
  %188 = getelementptr inbounds %struct.port_info, %struct.port_info* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @unlikely(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.port_info*, %struct.port_info** %13, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %196 = call i32 @cxgb3_process_iscsi_prov_pack(%struct.port_info* %194, %struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %193, %186
  %198 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %199 = call i32 @netif_receive_skb(%struct.sk_buff* %198)
  br label %200

200:                                              ; preds = %197, %181
  br label %204

201:                                              ; preds = %173
  %202 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %203 = call i32 @netif_rx(%struct.sk_buff* %202)
  br label %204

204:                                              ; preds = %201, %200
  br label %205

205:                                              ; preds = %204, %172
  ret void
}

declare dso_local %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(%struct.vlan_group*) #1

declare dso_local i32 @vlan_gro_receive(i32*, %struct.vlan_group*, i16 zeroext, %struct.sk_buff*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i32 @vlan_group_get_device(%struct.vlan_group*, i16 zeroext) #1

declare dso_local i32 @cxgb3_process_iscsi_prov_pack(%struct.port_info*, %struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_rx(%struct.sk_buff*, %struct.vlan_group*, i16 zeroext, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
