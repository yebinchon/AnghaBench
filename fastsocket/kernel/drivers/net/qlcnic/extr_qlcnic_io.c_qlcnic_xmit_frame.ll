; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_io.c_qlcnic_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_5__, i64, i32, %struct.pci_dev*, i32, i32, %struct.qlcnic_host_tx_ring* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.qlcnic_host_tx_ring = type { i64, i64, %struct.qlcnic_cmd_buffer*, %struct.cmd_desc_type0* }
%struct.qlcnic_cmd_buffer = type { i32, %struct.qlcnic_skb_frag*, %struct.sk_buff* }
%struct.qlcnic_skb_frag = type { i32, i32 }
%struct.cmd_desc_type0 = type { i8*, i8*, i8*, i8*, i32* }
%struct.ethhdr = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@QLCNIC_MACSPOOF = common dso_local global i32 0, align 4
@QLCNIC_MAX_FRAGS_PER_TX = common dso_local global i32 0, align 4
@TX_STOP_THRESH = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %8 = alloca %struct.qlcnic_cmd_buffer*, align 8
  %9 = alloca %struct.qlcnic_skb_frag*, align 8
  %10 = alloca %struct.cmd_desc_type0*, align 8
  %11 = alloca %struct.cmd_desc_type0*, align 8
  %12 = alloca %struct.pci_dev*, align 8
  %13 = alloca %struct.ethhdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %20)
  store %struct.qlcnic_adapter* %21, %struct.qlcnic_adapter** %6, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 7
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %23, align 8
  store %struct.qlcnic_host_tx_ring* %24, %struct.qlcnic_host_tx_ring** %7, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %26 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 6
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netif_stop_queue(%struct.net_device* %34)
  %36 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %36, i32* %3, align 4
  br label %327

37:                                               ; preds = %2
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @QLCNIC_MACSPOOF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.ethhdr*
  store %struct.ethhdr* %48, %struct.ethhdr** %13, align 8
  %49 = load %struct.ethhdr*, %struct.ethhdr** %13, align 8
  %50 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @compare_ether_addr(i32 %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %318

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @skb_is_gso(%struct.sk_buff* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @QLCNIC_MAX_FRAGS_PER_TX, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @QLCNIC_MAX_FRAGS_PER_TX, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %73

96:                                               ; preds = %73
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load i32, i32* %17, align 4
  %99 = call i32 @__pskb_pull_tail(%struct.sk_buff* %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %318

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 1, %106
  store i32 %107, i32* %16, align 4
  br label %108

108:                                              ; preds = %102, %68, %59
  %109 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %110 = call i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %109)
  %111 = load i64, i64* @TX_STOP_THRESH, align 8
  %112 = icmp sle i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i64 @unlikely(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %108
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = call i32 @netif_stop_queue(%struct.net_device* %117)
  %119 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %120 = call i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring* %119)
  %121 = load i64, i64* @TX_STOP_THRESH, align 8
  %122 = icmp sgt i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = call i32 @netif_start_queue(%struct.net_device* %124)
  br label %133

126:                                              ; preds = %116
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %132, i32* %3, align 4
  br label %327

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %108
  %135 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %136 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %18, align 8
  %138 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %139 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %138, i32 0, i32 2
  %140 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %139, align 8
  %141 = load i64, i64* %18, align 8
  %142 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %140, i64 %141
  store %struct.qlcnic_cmd_buffer* %142, %struct.qlcnic_cmd_buffer** %8, align 8
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %143, i32 0, i32 4
  %145 = load %struct.pci_dev*, %struct.pci_dev** %144, align 8
  store %struct.pci_dev* %145, %struct.pci_dev** %12, align 8
  %146 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %147 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %146, i32 0, i32 3
  %148 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %147, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %148, i64 %149
  store %struct.cmd_desc_type0* %150, %struct.cmd_desc_type0** %11, align 8
  %151 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %152 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %151, i32 0, i32 3
  %153 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %152, align 8
  %154 = load i64, i64* %18, align 8
  %155 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %153, i64 %154
  store %struct.cmd_desc_type0* %155, %struct.cmd_desc_type0** %10, align 8
  %156 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %157 = bitcast %struct.cmd_desc_type0* %156 to i32*
  %158 = call i32 @qlcnic_clear_cmddesc(i32* %157)
  %159 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %162 = call i64 @qlcnic_map_tx_skb(%struct.pci_dev* %159, %struct.sk_buff* %160, %struct.qlcnic_cmd_buffer* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %134
  %165 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %166 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %318

170:                                              ; preds = %134
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %173 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %172, i32 0, i32 2
  store %struct.sk_buff* %171, %struct.sk_buff** %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %176 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @qlcnic_set_tx_frags_len(%struct.cmd_desc_type0* %177, i32 %178, i64 %181)
  %183 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %185 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @qlcnic_set_tx_port(%struct.cmd_desc_type0* %183, i32 %186)
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %266, %170
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %269

192:                                              ; preds = %188
  %193 = load i32, i32* %14, align 4
  %194 = srem i32 %193, 4
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %192
  %198 = load i32, i32* %14, align 4
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %197
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* %19, align 8
  %203 = call i8* @get_next_index(i64 %201, i64 %202)
  %204 = ptrtoint i8* %203 to i64
  store i64 %204, i64* %18, align 8
  %205 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %206 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %205, i32 0, i32 3
  %207 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %206, align 8
  %208 = load i64, i64* %18, align 8
  %209 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %207, i64 %208
  store %struct.cmd_desc_type0* %209, %struct.cmd_desc_type0** %10, align 8
  %210 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %211 = bitcast %struct.cmd_desc_type0* %210 to i32*
  %212 = call i32 @qlcnic_clear_cmddesc(i32* %211)
  %213 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %214 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %213, i32 0, i32 2
  %215 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %214, align 8
  %216 = load i64, i64* %18, align 8
  %217 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %215, i64 %216
  %218 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %217, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %218, align 8
  br label %219

219:                                              ; preds = %200, %197, %192
  %220 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %221 = getelementptr inbounds %struct.qlcnic_cmd_buffer, %struct.qlcnic_cmd_buffer* %220, i32 0, i32 1
  %222 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %221, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %222, i64 %224
  store %struct.qlcnic_skb_frag* %225, %struct.qlcnic_skb_frag** %9, align 8
  %226 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %227 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @cpu_to_le16(i32 %228)
  %230 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %231 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  %236 = load i32, i32* %15, align 4
  switch i32 %236, label %265 [
    i32 0, label %237
    i32 1, label %244
    i32 2, label %251
    i32 3, label %258
  ]

237:                                              ; preds = %219
  %238 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %239 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i8* @cpu_to_le64(i32 %240)
  %242 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %243 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  br label %265

244:                                              ; preds = %219
  %245 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %246 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @cpu_to_le64(i32 %247)
  %249 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %250 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %249, i32 0, i32 2
  store i8* %248, i8** %250, align 8
  br label %265

251:                                              ; preds = %219
  %252 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %253 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i8* @cpu_to_le64(i32 %254)
  %256 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %257 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  br label %265

258:                                              ; preds = %219
  %259 = load %struct.qlcnic_skb_frag*, %struct.qlcnic_skb_frag** %9, align 8
  %260 = getelementptr inbounds %struct.qlcnic_skb_frag, %struct.qlcnic_skb_frag* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @cpu_to_le64(i32 %261)
  %263 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %10, align 8
  %264 = getelementptr inbounds %struct.cmd_desc_type0, %struct.cmd_desc_type0* %263, i32 0, i32 0
  store i8* %262, i8** %264, align 8
  br label %265

265:                                              ; preds = %219, %258, %251, %244, %237
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %188

269:                                              ; preds = %188
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* %19, align 8
  %272 = call i8* @get_next_index(i64 %270, i64 %271)
  %273 = ptrtoint i8* %272 to i64
  %274 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %275 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %274, i32 0, i32 1
  store i64 %273, i64* %275, align 8
  %276 = call i32 (...) @smp_mb()
  %277 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %278 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = call i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter* %277, %struct.cmd_desc_type0* %278, %struct.sk_buff* %279)
  %281 = call i64 @unlikely(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %269
  br label %313

284:                                              ; preds = %269
  %285 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %286 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %291 = load %struct.cmd_desc_type0*, %struct.cmd_desc_type0** %11, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %293 = call i32 @qlcnic_send_filter(%struct.qlcnic_adapter* %290, %struct.cmd_desc_type0* %291, %struct.sk_buff* %292)
  br label %294

294:                                              ; preds = %289, %284
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %299 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %297
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 4
  %305 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %306 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  %310 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %7, align 8
  %311 = call i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring* %310)
  %312 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %312, i32* %3, align 4
  br label %327

313:                                              ; preds = %283
  %314 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %316 = load %struct.qlcnic_cmd_buffer*, %struct.qlcnic_cmd_buffer** %8, align 8
  %317 = call i32 @qlcnic_unmap_buffers(%struct.pci_dev* %314, %struct.sk_buff* %315, %struct.qlcnic_cmd_buffer* %316)
  br label %318

318:                                              ; preds = %313, %164, %101, %57
  %319 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %320 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 4
  %324 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %325 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %324)
  %326 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %326, i32* %3, align 4
  br label %327

327:                                              ; preds = %318, %294, %126, %33
  %328 = load i32, i32* %3, align 4
  ret i32 %328
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qlcnic_tx_avail(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @qlcnic_clear_cmddesc(i32*) #1

declare dso_local i64 @qlcnic_map_tx_skb(%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*) #1

declare dso_local i32 @qlcnic_set_tx_frags_len(%struct.cmd_desc_type0*, i32, i64) #1

declare dso_local i32 @qlcnic_set_tx_port(%struct.cmd_desc_type0*, i32) #1

declare dso_local i8* @get_next_index(i64, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @qlcnic_tx_pkt(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*) #1

declare dso_local i32 @qlcnic_send_filter(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, %struct.sk_buff*) #1

declare dso_local i32 @qlcnic_update_cmd_producer(%struct.qlcnic_host_tx_ring*) #1

declare dso_local i32 @qlcnic_unmap_buffers(%struct.pci_dev*, %struct.sk_buff*, %struct.qlcnic_cmd_buffer*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
