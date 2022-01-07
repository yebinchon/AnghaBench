; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sge_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sge_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32*, %struct.TYPE_4__, i64, %struct.adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.freelQ = type { i32 }
%struct.sk_buff = type { i64*, i64, i32 }
%struct.cpl_rx_pkt = type { i64, i32, i32, i64 }
%struct.sge_port_stats = type { i32, i32 }

@RX_CSUM_ENABLED = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.freelQ*, i32)* @sge_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_rx(%struct.sge* %0, %struct.freelQ* %1, i32 %2) #0 {
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.freelQ*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cpl_rx_pkt*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca %struct.sge_port_stats*, align 8
  store %struct.sge* %0, %struct.sge** %4, align 8
  store %struct.freelQ* %1, %struct.freelQ** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sge*, %struct.sge** %4, align 8
  %12 = getelementptr inbounds %struct.sge, %struct.sge* %11, i32 0, i32 3
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %9, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.freelQ*, %struct.freelQ** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.sge*, %struct.sge** %4, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call %struct.sk_buff* @get_packet(i32 %16, %struct.freelQ* %17, i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.sge*, %struct.sge** %4, align 8
  %33 = getelementptr inbounds %struct.sge, %struct.sge* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  br label %157

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = bitcast i64* %40 to %struct.cpl_rx_pkt*
  store %struct.cpl_rx_pkt* %41, %struct.cpl_rx_pkt** %8, align 8
  %42 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %43 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.adapter*, %struct.adapter** %9, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %157

53:                                               ; preds = %37
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @__skb_pull(%struct.sk_buff* %54, i32 24)
  %56 = load %struct.sge*, %struct.sge** %4, align 8
  %57 = getelementptr inbounds %struct.sge, %struct.sge* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %60 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (...) @smp_processor_id()
  %65 = call %struct.sge_port_stats* @per_cpu_ptr(i32 %63, i32 %64)
  store %struct.sge_port_stats* %65, %struct.sge_port_stats** %10, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.adapter*, %struct.adapter** %9, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %71 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @eth_type_trans(%struct.sk_buff* %66, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.adapter*, %struct.adapter** %9, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RX_CSUM_ENABLED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %53
  %86 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %87 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 65535
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @ETH_P_IP, align 4
  %95 = call i64 @htons(i32 %94)
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %90
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 9
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPPROTO_TCP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 9
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @IPPROTO_UDP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %105, %97
  %114 = load %struct.sge_port_stats*, %struct.sge_port_stats** %10, align 8
  %115 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %125

121:                                              ; preds = %105, %90, %85, %53
  %122 = load i32, i32* @CHECKSUM_NONE, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.adapter*, %struct.adapter** %9, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %132 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br label %135

135:                                              ; preds = %130, %125
  %136 = phi i1 [ false, %125 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %135
  %141 = load %struct.sge_port_stats*, %struct.sge_port_stats** %10, align 8
  %142 = getelementptr inbounds %struct.sge_port_stats, %struct.sge_port_stats* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load %struct.adapter*, %struct.adapter** %9, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cpl_rx_pkt*, %struct.cpl_rx_pkt** %8, align 8
  %150 = getelementptr inbounds %struct.cpl_rx_pkt, %struct.cpl_rx_pkt* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ntohs(i32 %151)
  %153 = call i32 @vlan_hwaccel_receive_skb(%struct.sk_buff* %145, i32 %148, i32 %152)
  br label %157

154:                                              ; preds = %135
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = call i32 @netif_receive_skb(%struct.sk_buff* %155)
  br label %157

157:                                              ; preds = %31, %50, %154, %140
  ret void
}

declare dso_local %struct.sk_buff* @get_packet(i32, %struct.freelQ*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sge_port_stats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @vlan_hwaccel_receive_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
