; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, i32 }
%struct.ixgbe_ring = type { i64, i32, %struct.TYPE_8__*, %struct.ixgbe_tx_buffer*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.ixgbe_tx_buffer = type { i32, i32, %struct.sk_buff*, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vlan_hdr = type { i64, i32 }
%struct.vlan_ethhdr = type { i32 }
%struct.TYPE_10__ = type { i16, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@IXGBE_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__IXGBE_TX_FDIR_INIT_DONE = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_CC = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_TSTAMP = common dso_local global i32 0, align 4
@NETIF_F_FCOE_CRC = common dso_local global i32 0, align 4
@NETIF_F_FSO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_xmit_frame_ring(%struct.sk_buff* %0, %struct.ixgbe_adapter* %1, %struct.ixgbe_ring* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_ring*, align 8
  %8 = alloca %struct.ixgbe_tx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vlan_hdr*, align 8
  %16 = alloca %struct.vlan_hdr, align 8
  %17 = alloca %struct.vlan_ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ixgbe_adapter* %1, %struct.ixgbe_adapter** %6, align 8
  store %struct.ixgbe_ring* %2, %struct.ixgbe_ring** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  %20 = call i64 @TXD_USE_COUNT(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i16 0, i16* %11, align 2
  br label %24

24:                                               ; preds = %46, %3
  %25 = load i16, i16* %11, align 2
  %26 = zext i16 %25 to i32
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i16, i16* %11, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @TXD_USE_COUNT(i32 %42)
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %33
  %47 = load i16, i16* %11, align 2
  %48 = add i16 %47, 1
  store i16 %48, i16* %11, align 2
  br label %24

49:                                               ; preds = %24
  %50 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add nsw i64 %51, 3
  %53 = call i64 @ixgbe_maybe_stop_tx(%struct.ixgbe_ring* %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %57 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %61, i32* %4, align 4
  br label %234

62:                                               ; preds = %49
  %63 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %64 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %63, i32 0, i32 3
  %65 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %64, align 8
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %67 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %65, i64 %68
  store %struct.ixgbe_tx_buffer* %69, %struct.ixgbe_tx_buffer** %8, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %72 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %71, i32 0, i32 2
  store %struct.sk_buff* %70, %struct.sk_buff** %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %77 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %79 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %62
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %84)
  %86 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  br label %121

93:                                               ; preds = %62
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* @ETH_P_8021Q, align 4
  %96 = call i64 @__constant_htons(i32 %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = load i32, i32* @ETH_HLEN, align 4
  %101 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %99, i32 %100, i32 16, %struct.vlan_hdr* %16)
  store %struct.vlan_hdr* %101, %struct.vlan_hdr** %15, align 8
  %102 = load %struct.vlan_hdr*, %struct.vlan_hdr** %15, align 8
  %103 = icmp ne %struct.vlan_hdr* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %226

105:                                              ; preds = %98
  %106 = load %struct.vlan_hdr*, %struct.vlan_hdr** %15, align 8
  %107 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %13, align 8
  %109 = load %struct.vlan_hdr*, %struct.vlan_hdr** %15, align 8
  %110 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ntohs(i32 %111)
  %113 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %105, %93
  br label %121

121:                                              ; preds = %120, %83
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @skb_tx_timestamp(%struct.sk_buff* %122)
  %124 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %125 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IXGBE_FLAG_DCB_ENABLED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %186

130:                                              ; preds = %121
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %133 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %130
  %138 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %186

143:                                              ; preds = %137, %130
  %144 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_PRIO_MASK, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %10, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %10, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, 7
  %152 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_PRIO_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %10, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @IXGBE_TX_FLAGS_SW_VLAN, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %143
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = call i64 @skb_header_cloned(%struct.sk_buff* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call i64 @pskb_expand_head(%struct.sk_buff* %165, i32 0, i32 0, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %226

170:                                              ; preds = %164, %160
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %174, %struct.vlan_ethhdr** %17, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %177 = ashr i32 %175, %176
  %178 = call i32 @htons(i32 %177)
  %179 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %17, align 8
  %180 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  br label %185

181:                                              ; preds = %143
  %182 = load i32, i32* @IXGBE_TX_FLAGS_HW_VLAN, align 4
  %183 = load i32, i32* %10, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %181, %170
  br label %186

186:                                              ; preds = %185, %137, %121
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %189 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i64, i64* %13, align 8
  %191 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %192 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %191, i32 0, i32 3
  store i64 %190, i64* %192, align 8
  %193 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %194 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %195 = call i32 @ixgbe_tso(%struct.ixgbe_ring* %193, %struct.ixgbe_tx_buffer* %194, i32* %14)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  br label %226

199:                                              ; preds = %186
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %204 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %205 = call i32 @ixgbe_tx_csum(%struct.ixgbe_ring* %203, %struct.ixgbe_tx_buffer* %204)
  br label %206

206:                                              ; preds = %202, %199
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* @__IXGBE_TX_FDIR_INIT_DONE, align 4
  %209 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %210 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %209, i32 0, i32 1
  %211 = call i64 @test_bit(i32 %208, i32* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %215 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %216 = call i32 @ixgbe_atr(%struct.ixgbe_ring* %214, %struct.ixgbe_tx_buffer* %215)
  br label %217

217:                                              ; preds = %213, %207
  %218 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %219 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @ixgbe_tx_map(%struct.ixgbe_ring* %218, %struct.ixgbe_tx_buffer* %219, i32 %220)
  %222 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %7, align 8
  %223 = load i64, i64* @DESC_NEEDED, align 8
  %224 = call i64 @ixgbe_maybe_stop_tx(%struct.ixgbe_ring* %222, i64 %223)
  %225 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %225, i32* %4, align 4
  br label %234

226:                                              ; preds = %198, %169, %104
  %227 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %228 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %227, i32 0, i32 2
  %229 = load %struct.sk_buff*, %struct.sk_buff** %228, align 8
  %230 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %229)
  %231 = load %struct.ixgbe_tx_buffer*, %struct.ixgbe_tx_buffer** %8, align 8
  %232 = getelementptr inbounds %struct.ixgbe_tx_buffer, %struct.ixgbe_tx_buffer* %231, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %232, align 8
  %233 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %226, %217, %55
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @ixgbe_maybe_stop_tx(%struct.ixgbe_ring*, i64) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @__constant_htons(i32) #1

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ixgbe_tso(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*, i32*) #1

declare dso_local i32 @ixgbe_tx_csum(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_atr(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*) #1

declare dso_local i32 @ixgbe_tx_map(%struct.ixgbe_ring*, %struct.ixgbe_tx_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
