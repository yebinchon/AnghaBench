; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.igb_ring = type { i64, %struct.igb_tx_buffer*, i32 }
%struct.igb_tx_buffer = type { i32 }
%union.skb_shared_tx = type { i32 }
%struct.igb_adapter = type { i32, %struct.TYPE_7__, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i16, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@IGB_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_TSTAMP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@IGB_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@DESC_NEEDED = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_xmit_frame_ring(%struct.sk_buff* %0, %struct.igb_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %union.skb_shared_tx*, align 8
  %7 = alloca %struct.igb_tx_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca %struct.igb_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %union.skb_shared_tx* @skb_tx(%struct.sk_buff* %15)
  store %union.skb_shared_tx* %16, %union.skb_shared_tx** %6, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_headlen(%struct.sk_buff* %17)
  %19 = call i64 @TXD_USE_COUNT(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @vlan_get_protocol(%struct.sk_buff* %20)
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i32 @get_order(i32 32768)
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @IGB_MAX_DATA_PER_TXD, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  store i16 0, i16* %13, align 2
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i16, i16* %13, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i16, i16* %13, align 2
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @TXD_USE_COUNT(i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i16, i16* %13, align 2
  %52 = add i16 %51, 1
  store i16 %52, i16* %13, align 2
  br label %28

53:                                               ; preds = %28
  br label %62

54:                                               ; preds = %2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i16, i16* %57, align 8
  %59 = zext i16 %58 to i64
  %60 = load i64, i64* %10, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %54, %53
  %63 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 3
  %66 = call i64 @igb_maybe_stop_tx(%struct.igb_ring* %63, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %69, i32* %3, align 4
  br label %195

70:                                               ; preds = %62
  %71 = load %union.skb_shared_tx*, %union.skb_shared_tx** %6, align 8
  %72 = bitcast %union.skb_shared_tx* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %78 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.igb_adapter* @netdev_priv(i32 %79)
  store %struct.igb_adapter* %80, %struct.igb_adapter** %14, align 8
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %76
  %86 = load %union.skb_shared_tx*, %union.skb_shared_tx** %6, align 8
  %87 = bitcast %union.skb_shared_tx* %86 to i32*
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @IGB_TX_FLAGS_TSTAMP, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call i64 @skb_get(%struct.sk_buff* %91)
  %93 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %94 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* @jiffies, align 4
  %96 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %97 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %99 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @e1000_82576, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %85
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %107 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %106, i32 0, i32 0
  %108 = call i32 @schedule_work(i32* %107)
  br label %109

109:                                              ; preds = %105, %85
  br label %110

110:                                              ; preds = %109, %76
  br label %111

111:                                              ; preds = %110, %70
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i32, i32* @IGB_TX_FLAGS_VLAN, align 4
  %117 = load i32, i32* %9, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %119)
  %121 = load i32, i32* @IGB_TX_FLAGS_VLAN_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %115, %111
  %126 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %127 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %126, i32 0, i32 1
  %128 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %127, align 8
  %129 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %130 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %128, i64 %131
  store %struct.igb_tx_buffer* %132, %struct.igb_tx_buffer** %7, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = call i32 @skb_tx_timestamp(%struct.sk_buff* %133)
  %135 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i64, i64* %11, align 8
  %139 = call i32 @igb_tso(%struct.igb_ring* %135, %struct.sk_buff* %136, i32 %137, i64 %138, i32* %12)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %191

143:                                              ; preds = %125
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %143
  %147 = load i32, i32* @IGB_TX_FLAGS_TSO, align 4
  %148 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %9, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %9, align 4
  %152 = load i64, i64* %11, align 8
  %153 = load i32, i32* @ETH_P_IP, align 4
  %154 = call i64 @htons(i32 %153)
  %155 = icmp eq i64 %152, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load i32, i32* @IGB_TX_FLAGS_IPV4, align 4
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %156, %146
  br label %179

161:                                              ; preds = %143
  %162 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load i64, i64* %11, align 8
  %166 = call i64 @igb_tx_csum(%struct.igb_ring* %162, %struct.sk_buff* %163, i32 %164, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %161
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* @IGB_TX_FLAGS_CSUM, align 4
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %178

178:                                              ; preds = %174, %168, %161
  br label %179

179:                                              ; preds = %178, %160
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %7, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @igb_tx_map(%struct.igb_ring* %181, %struct.sk_buff* %182, %struct.igb_tx_buffer* %183, i32 %184, i32 %185)
  %187 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %188 = load i64, i64* @DESC_NEEDED, align 8
  %189 = call i64 @igb_maybe_stop_tx(%struct.igb_ring* %187, i64 %188)
  %190 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %195

191:                                              ; preds = %142
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %192)
  %194 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %191, %180, %68
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %union.skb_shared_tx* @skb_tx(%struct.sk_buff*) #1

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @igb_maybe_stop_tx(%struct.igb_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.igb_adapter* @netdev_priv(i32) #1

declare dso_local i64 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @igb_tso(%struct.igb_ring*, %struct.sk_buff*, i32, i64, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @igb_tx_csum(%struct.igb_ring*, %struct.sk_buff*, i32, i64) #1

declare dso_local i32 @igb_tx_map(%struct.igb_ring*, %struct.sk_buff*, %struct.igb_tx_buffer*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
