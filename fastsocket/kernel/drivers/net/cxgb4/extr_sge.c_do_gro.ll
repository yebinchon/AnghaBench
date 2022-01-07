; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_do_gro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_do_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_eth_rxq = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.pkt_gl = type { i64 }
%struct.cpl_rx_pkt = type { i32, i32 }
%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.port_info = type { %struct.vlan_group* }
%struct.vlan_group = type { i32 }

@RX_PKT_PAD = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@GRO_HELD = common dso_local global i64 0, align 8
@GRO_MERGED = common dso_local global i64 0, align 8
@GRO_MERGED_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_eth_rxq*, %struct.pkt_gl*, %struct.cpl_rx_pkt*)* @do_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_gro(%struct.sge_eth_rxq* %0, %struct.pkt_gl* %1, %struct.cpl_rx_pkt* %2) #0 {
  %4 = alloca %struct.sge_eth_rxq*, align 8
  %5 = alloca %struct.pkt_gl*, align 8
  %6 = alloca %struct.cpl_rx_pkt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.port_info*, align 8
  %10 = alloca %struct.vlan_group*, align 8
  store %struct.sge_eth_rxq* %0, %struct.sge_eth_rxq** %4, align 8
  store %struct.pkt_gl* %1, %struct.pkt_gl** %5, align 8
  store %struct.cpl_rx_pkt* %2, %struct.cpl_rx_pkt** %6, align 8
  %11 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %12 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call %struct.sk_buff* @napi_get_frags(i32* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %23 = call i32 @t4_pktgl_free(%struct.pkt_gl* %22)
  %24 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %25 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %139

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i32 @skb_shinfo(%struct.sk_buff* %30)
  %32 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %33 = load i64, i64* @RX_PKT_PAD, align 8
  %34 = call i32 @copy_frags(i32 %31, %struct.pkt_gl* %32, i64 %33)
  %35 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %36 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RX_PKT_PAD, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %60 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %61 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @skb_record_rx_queue(%struct.sk_buff* %59, i32 %63)
  %65 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %6, align 8
  %66 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %29
  %71 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %72 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.port_info* @netdev_priv(i32 %74)
  store %struct.port_info* %75, %struct.port_info** %9, align 8
  %76 = load %struct.port_info*, %struct.port_info** %9, align 8
  %77 = getelementptr inbounds %struct.port_info, %struct.port_info* %76, i32 0, i32 0
  %78 = load %struct.vlan_group*, %struct.vlan_group** %77, align 8
  store %struct.vlan_group* %78, %struct.vlan_group** %10, align 8
  %79 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %80 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %85 = call i64 @likely(%struct.vlan_group* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %70
  %88 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %89 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load %struct.vlan_group*, %struct.vlan_group** %10, align 8
  %92 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %6, align 8
  %93 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohs(i32 %94)
  %96 = call i64 @vlan_gro_frags_gr(i32* %90, %struct.vlan_group* %91, i32 %95)
  store i64 %96, i64* %7, align 8
  br label %103

97:                                               ; preds = %70
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %100 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i64 @napi_gro_frags_gr(i32* %101)
  store i64 %102, i64* %7, align 8
  br label %103

103:                                              ; preds = %98, %87
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @GRO_HELD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %109 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %128

113:                                              ; preds = %103
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* @GRO_MERGED, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @GRO_MERGED_FREE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %113
  %122 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %123 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %117
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %130 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  %134 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %135 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %128, %21
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @t4_pktgl_free(%struct.pkt_gl*) #1

declare dso_local i32 @copy_frags(i32, %struct.pkt_gl*, i64) #1

declare dso_local i32 @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i64 @likely(%struct.vlan_group*) #1

declare dso_local i64 @vlan_gro_frags_gr(i32*, %struct.vlan_group*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @napi_gro_frags_gr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
