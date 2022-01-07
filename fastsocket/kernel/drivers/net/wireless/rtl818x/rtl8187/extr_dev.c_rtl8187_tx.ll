; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_dev.c_rtl8187_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.urb**, i32, %struct.TYPE_5__ }
%struct.urb = type { i32, %struct.rtl8187_priv* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.rtl8187_tx_hdr = type { i8*, i8*, i64, i8* }
%struct.rtl8187b_tx_hdr = type { i32, i8*, i8*, i8* }
%struct.ieee80211_rate = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_NO_ENC = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_MOREFRAG = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_RTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@RTL818X_TX_DESC_FLAG_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@__const.rtl8187_tx.epmap = private unnamed_addr constant [4 x i32] [i32 6, i32 7, i32 5, i32 4], align 16
@IEEE80211_FCTL_FTYPE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@rtl8187_tx_cb = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @rtl8187_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtl8187_priv*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtl8187_tx_hdr*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.rtl8187b_tx_hdr*, align 8
  %20 = alloca %struct.ieee80211_rate*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 1
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %22, align 8
  store %struct.rtl8187_priv* %23, %struct.rtl8187_priv** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %8, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %29, %struct.ieee80211_hdr** %9, align 8
  store i8* null, i8** %13, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %30)
  store %struct.urb* %31, %struct.urb** %12, align 8
  %32 = load %struct.urb*, %struct.urb** %12, align 8
  %33 = icmp ne %struct.urb* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %300

37:                                               ; preds = %3
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @RTL818X_TX_DESC_FLAG_NO_ENC, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = bitcast %struct.ieee80211_hw* %44 to %struct.urb*
  %46 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %47 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb* %45, %struct.ieee80211_tx_info* %46)
  %48 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @ieee80211_has_morefrags(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32, i32* @RTL818X_TX_DESC_FLAG_MOREFRAG, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %37
  %63 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %62
  %74 = load i32, i32* @RTL818X_TX_DESC_FLAG_RTS, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %78 = bitcast %struct.ieee80211_hw* %77 to %struct.urb*
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %80 = call %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb* %78, %struct.ieee80211_tx_info* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 19
  %84 = load i32, i32* %14, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %87 = bitcast %struct.ieee80211_hw* %86 to %struct.urb*
  %88 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %89 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %95 = call i8* @ieee80211_rts_duration(%struct.urb* %87, i32 %90, i32 %93, %struct.ieee80211_tx_info* %94)
  store i8* %95, i8** %13, align 8
  br label %121

96:                                               ; preds = %62
  %97 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %96
  %108 = load i32, i32* @RTL818X_TX_DESC_FLAG_CTS, align 4
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %112 = bitcast %struct.ieee80211_hw* %111 to %struct.urb*
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %114 = call %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb* %112, %struct.ieee80211_tx_info* %113)
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 19
  %118 = load i32, i32* %14, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %107, %96
  br label %121

121:                                              ; preds = %120, %73
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %121
  %129 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %130 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %137 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 16
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %128
  %141 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %142 = call i32 @cpu_to_le16(i32 %141)
  %143 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %148 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @cpu_to_le16(i32 %149)
  %151 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %152 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %140, %121
  %156 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %157 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %187, label %160

160:                                              ; preds = %155
  %161 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %162 = call i64 @skb_push(%struct.sk_buff* %161, i32 32)
  %163 = inttoptr i64 %162 to %struct.rtl8187_tx_hdr*
  store %struct.rtl8187_tx_hdr* %163, %struct.rtl8187_tx_hdr** %16, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i8* @cpu_to_le32(i32 %164)
  %166 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %167 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %166, i32 0, i32 3
  store i8* %165, i8** %167, align 8
  %168 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %169 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %168, i32 0, i32 2
  store i64 0, i64* %169, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %172 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %174 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = shl i32 %180, 8
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %184 = getelementptr inbounds %struct.rtl8187_tx_hdr, %struct.rtl8187_tx_hdr* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.rtl8187_tx_hdr*, %struct.rtl8187_tx_hdr** %16, align 8
  %186 = bitcast %struct.rtl8187_tx_hdr* %185 to i8*
  store i8* %186, i8** %11, align 8
  store i32 2, i32* %10, align 4
  br label %250

187:                                              ; preds = %155
  %188 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %188, i8* align 16 bitcast ([4 x i32]* @__const.rtl8187_tx.epmap to i8*), i64 16, i1 false)
  %189 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %190 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le16_to_cpu(i32 %191)
  store i32 %192, i32* %18, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %194 = call i64 @skb_push(%struct.sk_buff* %193, i32 32)
  %195 = inttoptr i64 %194 to %struct.rtl8187b_tx_hdr*
  store %struct.rtl8187b_tx_hdr* %195, %struct.rtl8187b_tx_hdr** %19, align 8
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %197 = bitcast %struct.ieee80211_hw* %196 to %struct.urb*
  %198 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %199 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb* %197, %struct.ieee80211_tx_info* %198)
  store %struct.ieee80211_rate* %199, %struct.ieee80211_rate** %20, align 8
  %200 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %201 = call i32 @memset(%struct.rtl8187b_tx_hdr* %200, i32 0, i32 32)
  %202 = load i32, i32* %14, align 4
  %203 = call i8* @cpu_to_le32(i32 %202)
  %204 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %205 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %204, i32 0, i32 3
  store i8* %203, i8** %205, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %208 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %207, i32 0, i32 2
  store i8* %206, i8** %208, align 8
  %209 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %210 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, 1
  %217 = shl i32 %216, 8
  %218 = call i8* @cpu_to_le32(i32 %217)
  %219 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %220 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %219, i32 0, i32 1
  store i8* %218, i8** %220, align 8
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %222 = bitcast %struct.ieee80211_hw* %221 to %struct.urb*
  %223 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %224 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %227 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %20, align 8
  %233 = call i32 @ieee80211_generic_frame_duration(%struct.urb* %222, i32 %225, i32 %228, i32 %231, %struct.ieee80211_rate* %232)
  %234 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %235 = getelementptr inbounds %struct.rtl8187b_tx_hdr, %struct.rtl8187b_tx_hdr* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = load %struct.rtl8187b_tx_hdr*, %struct.rtl8187b_tx_hdr** %19, align 8
  %237 = bitcast %struct.rtl8187b_tx_hdr* %236 to i8*
  store i8* %237, i8** %11, align 8
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* @IEEE80211_FCTL_FTYPE, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %187
  store i32 12, i32* %10, align 4
  br label %249

244:                                              ; preds = %187
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %245)
  %247 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %244, %243
  br label %250

250:                                              ; preds = %249, %160
  %251 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %252 = bitcast %struct.ieee80211_hw* %251 to %struct.urb*
  %253 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %254 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %253, i32 0, i32 1
  %255 = load %struct.urb**, %struct.urb*** %254, align 8
  %256 = getelementptr inbounds %struct.urb*, %struct.urb** %255, i64 0
  store %struct.urb* %252, %struct.urb** %256, align 8
  %257 = load %struct.urb*, %struct.urb** %12, align 8
  %258 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %259 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %258, i32 0, i32 1
  %260 = load %struct.urb**, %struct.urb*** %259, align 8
  %261 = getelementptr inbounds %struct.urb*, %struct.urb** %260, i64 1
  store %struct.urb* %257, %struct.urb** %261, align 8
  %262 = load %struct.urb*, %struct.urb** %12, align 8
  %263 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %264 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %267 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @usb_sndbulkpipe(i32 %268, i32 %269)
  %271 = load i8*, i8** %11, align 8
  %272 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %273 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @rtl8187_tx_cb, align 4
  %276 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %277 = call i32 @usb_fill_bulk_urb(%struct.urb* %262, i32 %265, i32 %270, i8* %271, i32 %274, i32 %275, %struct.sk_buff* %276)
  %278 = load i32, i32* @URB_ZERO_PACKET, align 4
  %279 = load %struct.urb*, %struct.urb** %12, align 8
  %280 = getelementptr inbounds %struct.urb, %struct.urb* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  %283 = load %struct.urb*, %struct.urb** %12, align 8
  %284 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %7, align 8
  %285 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %284, i32 0, i32 1
  %286 = call i32 @usb_anchor_urb(%struct.urb* %283, i32* %285)
  %287 = load %struct.urb*, %struct.urb** %12, align 8
  %288 = load i32, i32* @GFP_ATOMIC, align 4
  %289 = call i32 @usb_submit_urb(%struct.urb* %287, i32 %288)
  store i32 %289, i32* %15, align 4
  %290 = load i32, i32* %15, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %250
  %293 = load %struct.urb*, %struct.urb** %12, align 8
  %294 = call i32 @usb_unanchor_urb(%struct.urb* %293)
  %295 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %296 = call i32 @kfree_skb(%struct.sk_buff* %295)
  br label %297

297:                                              ; preds = %292, %250
  %298 = load %struct.urb*, %struct.urb** %12, align 8
  %299 = call i32 @usb_free_urb(%struct.urb* %298)
  br label %300

300:                                              ; preds = %297, %34
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.urb*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local %struct.TYPE_6__* @ieee80211_get_rts_cts_rate(%struct.urb*, %struct.ieee80211_tx_info*) #1

declare dso_local i8* @ieee80211_rts_duration(%struct.urb*, i32, i32, %struct.ieee80211_tx_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.rtl8187b_tx_hdr*, i32, i32) #1

declare dso_local i32 @ieee80211_generic_frame_duration(%struct.urb*, i32, i32, i32, %struct.ieee80211_rate*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
