; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, i64, %struct.e1000_tx_ring*, %struct.e1000_hw }
%struct.e1000_tx_ring = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.e1000_hw = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@E1000_MAX_DATA_PER_TXD = common dso_local global i32 0, align 4
@E1000_MAX_TXD_PWR = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"__pskb_pull_tail failed.\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@e1000_82547 = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@E1000_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @e1000_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.e1000_tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %21)
  store %struct.e1000_adapter* %22, %struct.e1000_adapter** %6, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 4
  store %struct.e1000_hw* %24, %struct.e1000_hw** %7, align 8
  %25 = load i32, i32* @E1000_MAX_DATA_PER_TXD, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @E1000_MAX_TXD_PWR, align 4
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_headlen(%struct.sk_buff* %27)
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %29 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %29, i32 0, i32 3
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %30, align 8
  store %struct.e1000_tx_ring* %31, %struct.e1000_tx_ring** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %40)
  %42 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %355

43:                                               ; preds = %2
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %104

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = shl i32 %51, 2
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @min(i32 %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fls(i32 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @skb_transport_offset(%struct.sk_buff* %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @tcp_hdrlen(%struct.sk_buff* %60)
  %62 = add i32 %59, %61
  store i32 %62, i32* %19, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %50
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %101 [
    i32 128, label %75
  ]

75:                                               ; preds = %71
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @skb_tail_pointer(%struct.sk_buff* %76)
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = and i64 %79, 4
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %102

83:                                               ; preds = %75
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @min(i32 4, i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = load i32, i32* %20, align 4
  %90 = call i32 @__pskb_pull_tail(%struct.sk_buff* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* @drv, align 4
  %94 = call i32 @e_err(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %95)
  %97 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %355

98:                                               ; preds = %83
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @skb_headlen(%struct.sk_buff* %99)
  store i32 %100, i32* %13, align 4
  br label %102

101:                                              ; preds = %71
  br label %102

102:                                              ; preds = %101, %98, %82
  br label %103

103:                                              ; preds = %102, %67, %50
  br label %104

104:                                              ; preds = %103, %43
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %116
  %124 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %125 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call i32 @skb_is_gso(%struct.sk_buff* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %132, %128, %123, %116
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %11, align 4
  %138 = call i64 @TXD_USE_COUNT(i32 %136, i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %16, align 4
  %143 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %144 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %135
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %147, %135
  %151 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %152 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @e1000_bus_type_pcix, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* %13, align 4
  %158 = icmp ugt i32 %157, 2015
  br label %159

159:                                              ; preds = %156, %150
  %160 = phi i1 [ false, %150 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %164, %159
  %168 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %169 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %168)
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %14, align 4
  store i32 0, i32* %18, align 4
  br label %172

172:                                              ; preds = %192, %167
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp ult i32 %173, %174
  br i1 %175, label %176, label %195

176:                                              ; preds = %172
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %177)
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i64 @TXD_USE_COUNT(i32 %185, i32 %186)
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %176
  %193 = load i32, i32* %18, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %18, align 4
  br label %172

195:                                              ; preds = %172
  %196 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %197 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %16, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %200, %195
  %205 = load %struct.net_device*, %struct.net_device** %5, align 8
  %206 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 2
  %209 = call i32 @e1000_maybe_stop_tx(%struct.net_device* %205, %struct.e1000_tx_ring* %206, i32 %208)
  %210 = call i64 @unlikely(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %213, i32* %3, align 4
  br label %355

214:                                              ; preds = %204
  %215 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %216 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @e1000_82547, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %223 = call i64 @e1000_82547_fifo_workaround(%struct.e1000_adapter* %221, %struct.sk_buff* %222)
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %214
  %226 = phi i1 [ false, %214 ], [ %224, %220 ]
  %227 = zext i1 %226 to i32
  %228 = call i64 @unlikely(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %225
  %231 = load %struct.net_device*, %struct.net_device** %5, align 8
  %232 = call i32 @netif_stop_queue(%struct.net_device* %231)
  %233 = load i32, i32* @__E1000_DOWN, align 4
  %234 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %235 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %234, i32 0, i32 1
  %236 = call i32 @test_bit(i32 %233, i32* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %230
  %239 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %240 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %239, i32 0, i32 0
  %241 = call i32 @schedule_delayed_work(i32* %240, i32 1)
  br label %242

242:                                              ; preds = %238, %230
  %243 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %243, i32* %3, align 4
  br label %355

244:                                              ; preds = %225
  %245 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %246 = call i32 @vlan_tx_tag_present(%struct.sk_buff* %245)
  %247 = call i64 @unlikely(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %259

249:                                              ; preds = %244
  %250 = load i32, i32* @E1000_TX_FLAGS_VLAN, align 4
  %251 = load i32, i32* %12, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %12, align 4
  %253 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %254 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %253)
  %255 = load i32, i32* @E1000_TX_FLAGS_VLAN_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %12, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %249, %244
  %260 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %261 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %9, align 4
  %263 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %264 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %265 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %266 = call i32 @e1000_tso(%struct.e1000_adapter* %263, %struct.e1000_tx_ring* %264, %struct.sk_buff* %265)
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %17, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %271 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %270)
  %272 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %272, i32* %3, align 4
  br label %355

273:                                              ; preds = %259
  %274 = load i32, i32* %17, align 4
  %275 = call i64 @likely(i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %292

277:                                              ; preds = %273
  %278 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %279 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 128
  %282 = zext i1 %281 to i32
  %283 = call i64 @likely(i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %287 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %286, i32 0, i32 0
  store i32 1, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %277
  %289 = load i32, i32* @E1000_TX_FLAGS_TSO, align 4
  %290 = load i32, i32* %12, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %12, align 4
  br label %304

292:                                              ; preds = %273
  %293 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %294 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %296 = call i32 @e1000_tx_csum(%struct.e1000_adapter* %293, %struct.e1000_tx_ring* %294, %struct.sk_buff* %295)
  %297 = call i64 @likely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %292
  %300 = load i32, i32* @E1000_TX_FLAGS_CSUM, align 4
  %301 = load i32, i32* %12, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %12, align 4
  br label %303

303:                                              ; preds = %299, %292
  br label %304

304:                                              ; preds = %303, %288
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %305, i32 0, i32 3
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* @ETH_P_IP, align 4
  %309 = call i64 @htons(i32 %308)
  %310 = icmp eq i64 %307, %309
  %311 = zext i1 %310 to i32
  %312 = call i64 @likely(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %318

314:                                              ; preds = %304
  %315 = load i32, i32* @E1000_TX_FLAGS_IPV4, align 4
  %316 = load i32, i32* %12, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %12, align 4
  br label %318

318:                                              ; preds = %314, %304
  %319 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %320 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %15, align 4
  %326 = call i32 @e1000_tx_map(%struct.e1000_adapter* %319, %struct.e1000_tx_ring* %320, %struct.sk_buff* %321, i32 %322, i32 %323, i32 %324, i32 %325)
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* %16, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %340

329:                                              ; preds = %318
  %330 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %331 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %332 = load i32, i32* %12, align 4
  %333 = load i32, i32* %16, align 4
  %334 = call i32 @e1000_tx_queue(%struct.e1000_adapter* %330, %struct.e1000_tx_ring* %331, i32 %332, i32 %333)
  %335 = load %struct.net_device*, %struct.net_device** %5, align 8
  %336 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %337 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %338 = add nsw i32 %337, 2
  %339 = call i32 @e1000_maybe_stop_tx(%struct.net_device* %335, %struct.e1000_tx_ring* %336, i32 %338)
  br label %353

340:                                              ; preds = %318
  %341 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %342 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %341)
  %343 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %344 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %343, i32 0, i32 2
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 0
  store i64 0, i64* %349, align 8
  %350 = load i32, i32* %9, align 4
  %351 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %8, align 8
  %352 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 4
  br label %353

353:                                              ; preds = %340, %329
  %354 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %353, %269, %242, %212, %92, %39
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @TXD_USE_COUNT(i32, i32) #1

declare dso_local i32 @e1000_maybe_stop_tx(%struct.net_device*, %struct.e1000_tx_ring*, i32) #1

declare dso_local i64 @e1000_82547_fifo_workaround(%struct.e1000_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @e1000_tso(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @e1000_tx_csum(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @e1000_tx_map(%struct.e1000_adapter*, %struct.e1000_tx_ring*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @e1000_tx_queue(%struct.e1000_adapter*, %struct.e1000_tx_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
