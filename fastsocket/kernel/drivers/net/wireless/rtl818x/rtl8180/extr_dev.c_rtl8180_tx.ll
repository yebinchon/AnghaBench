; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8180/extr_dev.c_rtl8180_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_9__*, i32, i64, i32, i32, %struct.rtl8180_tx_ring* }
%struct.TYPE_9__ = type { i32 }
%struct.rtl8180_tx_ring = type { i32, i32, i32, %struct.rtl8180_tx_desc* }
%struct.rtl8180_tx_desc = type { i32, i8*, i32, i8*, i8*, i32, i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_OWN = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_FS = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_LS = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_DMA = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_NO_ENC = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_RTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtl8180_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8180_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.rtl8180_priv*, align 8
  %10 = alloca %struct.rtl8180_tx_ring*, align 8
  %11 = alloca %struct.rtl8180_tx_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %21)
  store %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_info** %7, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %8, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %28, align 8
  store %struct.rtl8180_priv* %29, %struct.rtl8180_priv** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %33 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %32, i32 0, i32 6
  %34 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %34, i64 %36
  store %struct.rtl8180_tx_ring* %37, %struct.rtl8180_tx_ring** %10, align 8
  %38 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %39 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %48 = call i32 @pci_map_single(i32 %40, i64 %43, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @RTL818X_TX_DESC_FLAG_OWN, align 4
  %50 = load i32, i32* @RTL818X_TX_DESC_FLAG_FS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RTL818X_TX_DESC_FLAG_LS, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %56 = call %struct.TYPE_10__* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %54, %struct.ieee80211_tx_info* %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 24
  %60 = or i32 %53, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %60, %63
  store i32 %64, i32* %16, align 4
  %65 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %66 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %3
  %70 = load i32, i32* @RTL818X_TX_DESC_FLAG_DMA, align 4
  %71 = load i32, i32* @RTL818X_TX_DESC_FLAG_NO_ENC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %69, %3
  %76 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %75
  %88 = load i32, i32* @RTL818X_TX_DESC_FLAG_RTS, align 4
  %89 = load i32, i32* %16, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %16, align 4
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %92 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %93 = call %struct.TYPE_11__* @ieee80211_get_rts_cts_rate(%struct.ieee80211_hw* %91, %struct.ieee80211_tx_info* %92)
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 19
  %97 = load i32, i32* %16, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %16, align 4
  br label %117

99:                                               ; preds = %75
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32, i32* @RTL818X_TX_DESC_FLAG_CTS, align 4
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %16, align 4
  %108 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %110 = call %struct.TYPE_11__* @ieee80211_get_rts_cts_rate(%struct.ieee80211_hw* %108, %struct.ieee80211_tx_info* %109)
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 19
  %114 = load i32, i32* %16, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %16, align 4
  br label %116

116:                                              ; preds = %104, %99
  br label %117

117:                                              ; preds = %116, %87
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %124 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %125 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %131 = call i32 @ieee80211_rts_duration(%struct.ieee80211_hw* %123, i32 %126, i32 %129, %struct.ieee80211_tx_info* %130)
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %122, %117
  %133 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %134 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %170, label %137

137:                                              ; preds = %132
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 4
  %142 = mul nsw i32 16, %141
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %144 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %145 = call %struct.TYPE_10__* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %143, %struct.ieee80211_tx_info* %144)
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, 2
  %149 = sdiv i32 %148, 10
  %150 = call i32 @DIV_ROUND_UP(i32 %142, i32 %149)
  store i32 %150, i32* %18, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 4
  %155 = mul nsw i32 16, %154
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %157 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %158 = call %struct.TYPE_10__* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %156, %struct.ieee80211_tx_info* %157)
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 2
  %162 = sdiv i32 %161, 10
  %163 = srem i32 %155, %162
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = icmp ule i32 %164, 6
  br i1 %165, label %166, label %169

166:                                              ; preds = %137
  %167 = load i32, i32* %18, align 4
  %168 = or i32 %167, 32768
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %166, %137
  br label %170

170:                                              ; preds = %169, %132
  %171 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %172 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %171, i32 0, i32 2
  %173 = load i64, i64* %12, align 8
  %174 = call i32 @spin_lock_irqsave(i32* %172, i64 %173)
  %175 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %176 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %208

181:                                              ; preds = %170
  %182 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %183 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %181
  %189 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %190 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 16
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %188, %181
  %194 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %195 = call i32 @cpu_to_le16(i32 %194)
  %196 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %197 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %201 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @cpu_to_le16(i32 %202)
  %204 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %205 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %193, %170
  %209 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %210 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %213 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %212, i32 0, i32 2
  %214 = call i32 @skb_queue_len(i32* %213)
  %215 = add nsw i32 %211, %214
  %216 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %217 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = srem i32 %215, %218
  store i32 %219, i32* %13, align 4
  %220 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %221 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %220, i32 0, i32 3
  %222 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %222, i64 %224
  store %struct.rtl8180_tx_desc* %225, %struct.rtl8180_tx_desc** %11, align 8
  %226 = load i32, i32* %19, align 4
  %227 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %228 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %227, i32 0, i32 6
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %18, align 4
  %230 = call i32 @cpu_to_le16(i32 %229)
  %231 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %232 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* %15, align 4
  %234 = call i8* @cpu_to_le32(i32 %233)
  %235 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %236 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %235, i32 0, i32 4
  store i8* %234, i8** %236, align 8
  %237 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i8* @cpu_to_le32(i32 %239)
  %241 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %242 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %241, i32 0, i32 3
  store i8* %240, i8** %242, align 8
  %243 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %244 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %208
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %253 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %254 = call %struct.TYPE_12__* @ieee80211_get_alt_retry_rate(%struct.ieee80211_hw* %252, %struct.ieee80211_tx_info* %253, i32 0)
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = shl i32 %256, 4
  br label %259

258:                                              ; preds = %208
  br label %259

259:                                              ; preds = %258, %251
  %260 = phi i32 [ %257, %251 ], [ 0, %258 ]
  %261 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %262 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %264 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %271 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* %16, align 4
  %273 = call i8* @cpu_to_le32(i32 %272)
  %274 = load %struct.rtl8180_tx_desc*, %struct.rtl8180_tx_desc** %11, align 8
  %275 = getelementptr inbounds %struct.rtl8180_tx_desc, %struct.rtl8180_tx_desc* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  %276 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %277 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %276, i32 0, i32 2
  %278 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %279 = call i32 @__skb_queue_tail(i32* %277, %struct.sk_buff* %278)
  %280 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %281 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.rtl8180_tx_ring*, %struct.rtl8180_tx_ring** %10, align 8
  %284 = getelementptr inbounds %struct.rtl8180_tx_ring, %struct.rtl8180_tx_ring* %283, i32 0, i32 2
  %285 = call i32 @skb_queue_len(i32* %284)
  %286 = sub nsw i32 %282, %285
  %287 = icmp slt i32 %286, 2
  br i1 %287, label %288, label %292

288:                                              ; preds = %259
  %289 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %290 = load i32, i32* %14, align 4
  %291 = call i32 @ieee80211_stop_queue(%struct.ieee80211_hw* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %259
  %293 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %294 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %293, i32 0, i32 2
  %295 = load i64, i64* %12, align 8
  %296 = call i32 @spin_unlock_irqrestore(i32* %294, i64 %295)
  %297 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %298 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %9, align 8
  %299 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %298, i32 0, i32 1
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %14, align 4
  %303 = add i32 %302, 4
  %304 = shl i32 1, %303
  %305 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %297, i32* %301, i32 %304)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local %struct.TYPE_11__* @ieee80211_get_rts_cts_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_rts_duration(%struct.ieee80211_hw*, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_12__* @ieee80211_get_alt_retry_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
