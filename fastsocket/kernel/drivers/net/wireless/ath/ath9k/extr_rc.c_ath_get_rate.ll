; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_get_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.ath_softc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.ath_rate_priv = type { %struct.ath_rate_table* }
%struct.ath_rate_table = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i64, i64, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_LDPC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@WLAN_RC_PHY_HT_40_SS = common dso_local global i32 0, align 4
@WLAN_RC_PHY_HT_20_SS = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@ATH_TXMAXTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @ath_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.ath_softc*, align 8
  %10 = alloca %struct.ath_rate_priv*, align 8
  %11 = alloca %struct.ath_rate_table*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_tx_rate*, align 8
  %15 = alloca %struct.ieee80211_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.ath_softc*
  store %struct.ath_softc* %24, %struct.ath_softc** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.ath_rate_priv*
  store %struct.ath_rate_priv* %26, %struct.ath_rate_priv** %10, align 8
  %27 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %27, i32 0, i32 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %30)
  store %struct.ieee80211_tx_info* %31, %struct.ieee80211_tx_info** %13, align 8
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %34, align 8
  store %struct.ieee80211_tx_rate* %35, %struct.ieee80211_tx_rate** %14, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %39, %struct.ieee80211_hdr** %15, align 8
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %46 = call i64 @rate_control_send_low(%struct.ieee80211_sta* %43, i8* %44, %struct.ieee80211_tx_rate_control* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %272

49:                                               ; preds = %4
  store i32 4, i32* %17, align 4
  %50 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %10, align 8
  %51 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %50, i32 0, i32 0
  %52 = load %struct.ath_rate_table*, %struct.ath_rate_table** %51, align 8
  store %struct.ath_rate_table* %52, %struct.ath_rate_table** %11, align 8
  %53 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %10, align 8
  %54 = call i32 @ath_rc_get_highest_rix(%struct.ath_rate_priv* %53, i32* %20)
  store i32 %54, i32* %19, align 4
  %55 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %56 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = call i64 @conf_is_ht(%struct.TYPE_14__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %49
  %62 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i32, i32* @IEEE80211_TX_CTL_LDPC, align 4
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %61, %49
  %76 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = call i64 @conf_is_ht(%struct.TYPE_14__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load i32, i32* @IEEE80211_TX_CTL_STBC_SHIFT, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %94 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %90, %82, %75
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %102 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %103 = load i32, i32* %18, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %18, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %102, i64 %105
  %107 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @ath_rc_rate_set_series(%struct.ath_rate_table* %101, %struct.ieee80211_tx_rate* %106, %struct.ieee80211_tx_rate_control* %107, i32 1, i32 %108, i32 0)
  %110 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %10, align 8
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv* %110, i32 %111, i32* %19)
  %113 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %114 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %18, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %114, i64 %117
  %119 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @ath_rc_rate_set_series(%struct.ath_rate_table* %113, %struct.ieee80211_tx_rate* %118, %struct.ieee80211_tx_rate_control* %119, i32 %120, i32 %121, i32 0)
  %123 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %124 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %125 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %139

128:                                              ; preds = %97
  %129 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %130 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %130, i64 %133
  %135 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @ath_rc_rate_set_series(%struct.ath_rate_table* %129, %struct.ieee80211_tx_rate* %134, %struct.ieee80211_tx_rate_control* %135, i32 %136, i32 %137, i32 0)
  br label %139

139:                                              ; preds = %128, %100
  br label %140

140:                                              ; preds = %161, %139
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %164

143:                                              ; preds = %140
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, 1
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 8, i32* %17, align 4
  br label %148

148:                                              ; preds = %147, %143
  %149 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %10, align 8
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv* %149, i32 %150, i32* %19)
  %152 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %153 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %153, i64 %155
  %157 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @ath_rc_rate_set_series(%struct.ath_rate_table* %152, %struct.ieee80211_tx_rate* %156, %struct.ieee80211_tx_rate_control* %157, i32 %158, i32 %159, i32 1)
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %18, align 4
  br label %140

164:                                              ; preds = %140
  %165 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %166 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %232

176:                                              ; preds = %164
  %177 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %178 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = call i64 @conf_is_ht(%struct.TYPE_14__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %232

183:                                              ; preds = %176
  %184 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %185 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %184, i32 0, i32 0
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = load i32, i32* %19, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %21, align 4
  %192 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %193 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %22, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %231

202:                                              ; preds = %183
  %203 = load i32, i32* %21, align 4
  %204 = icmp eq i32 %203, 2
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* @WLAN_RC_PHY_HT_40_SS, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %216, label %209

209:                                              ; preds = %205, %202
  %210 = load i32, i32* %21, align 4
  %211 = icmp eq i32 %210, 3
  br i1 %211, label %212, label %231

212:                                              ; preds = %209
  %213 = load i32, i32* %22, align 4
  %214 = load i32, i32* @WLAN_RC_PHY_HT_20_SS, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212, %205
  %217 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %218 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %217, i64 2
  %219 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %222 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %221, i64 3
  %223 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %222, i32 0, i32 1
  store i64 %220, i64* %223, align 8
  %224 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %225 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %224, i64 2
  %226 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %229 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %228, i64 3
  %230 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %229, i32 0, i32 2
  store i32 %227, i32* %230, align 8
  br label %231

231:                                              ; preds = %216, %212, %209, %183
  br label %232

232:                                              ; preds = %231, %176, %164
  %233 = load i32, i32* %16, align 4
  %234 = call i64 @ieee80211_has_morefrags(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %244, label %236

236:                                              ; preds = %232
  %237 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %15, align 8
  %238 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @le16_to_cpu(i32 %239)
  %241 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %267

244:                                              ; preds = %236, %232
  %245 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %246 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %245, i64 3
  %247 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %246, i32 0, i32 0
  store i64 0, i64* %247, align 8
  %248 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %249 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %248, i64 2
  %250 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %249, i32 0, i32 0
  store i64 0, i64* %250, align 8
  %251 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %252 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %251, i64 1
  %253 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %252, i32 0, i32 0
  store i64 0, i64* %253, align 8
  %254 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %255 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %254, i64 3
  %256 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %255, i32 0, i32 1
  store i64 0, i64* %256, align 8
  %257 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %258 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %257, i64 2
  %259 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %258, i32 0, i32 1
  store i64 0, i64* %259, align 8
  %260 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %261 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %260, i64 1
  %262 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %261, i32 0, i32 1
  store i64 0, i64* %262, align 8
  %263 = load i64, i64* @ATH_TXMAXTRY, align 8
  %264 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %14, align 8
  %265 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %264, i64 0
  %266 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %265, i32 0, i32 0
  store i64 %263, i64* %266, align 8
  br label %267

267:                                              ; preds = %244, %236
  %268 = load %struct.ath_softc*, %struct.ath_softc** %9, align 8
  %269 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  %270 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %271 = call i32 @ath_rc_rate_set_rtscts(%struct.ath_softc* %268, %struct.ath_rate_table* %269, %struct.ieee80211_tx_info* %270)
  br label %272

272:                                              ; preds = %267, %48
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @rate_control_send_low(%struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*) #1

declare dso_local i32 @ath_rc_get_highest_rix(%struct.ath_rate_priv*, i32*) #1

declare dso_local i64 @conf_is_ht(%struct.TYPE_14__*) #1

declare dso_local i32 @ath_rc_rate_set_series(%struct.ath_rate_table*, %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate_control*, i32, i32, i32) #1

declare dso_local i32 @ath_rc_get_lower_rix(%struct.ath_rate_priv*, i32, i32*) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath_rc_rate_set_rtscts(%struct.ath_softc*, %struct.ath_rate_table*, %struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
