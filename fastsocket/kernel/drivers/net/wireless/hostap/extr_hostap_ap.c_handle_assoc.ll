; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__*, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32, %struct.sta_info** }
%struct.sta_info = type { i32, i32, i32, i32, i32*, i8*, i8* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_MGMT_HDR_LEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"%s: handle_assoc - too short payload (len=%d, reassoc=%d) from %pM\0A\00", align 1
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"trying to associate before authentication\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i64 0, align 8
@WLAN_EID_SSID = common dso_local global i8 0, align 1
@MAX_SSID_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SSID overflow\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"not our SSID\00", align 1
@WLAN_STATUS_ASSOC_DENIED_UNSPEC = common dso_local global i64 0, align 8
@WLAN_EID_SUPP_RATES = common dso_local global i8 0, align 1
@WLAN_SUPP_RATES_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"SUPP_RATES len error\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s: assoc from %pM with extra data (%d bytes) [\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"<%02x>\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"frame underflow\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"OK, old AID\00", align 1
@MAX_AID_TABLE_SIZE = common dso_local global i32 0, align 4
@WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"no room for more AIDs\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"OK, new AID\00", align 1
@WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH = common dso_local global i64 0, align 8
@WLAN_CAPABILITY_ESS = common dso_local global i64 0, align 8
@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_STYPE_REASSOC_RESP = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ASSOC_RESP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*, i32)* @handle_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_assoc(%struct.TYPE_4__* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hostap_80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca [12 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sta_info*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %10, align 8
  %33 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  store i64 %33, i64* %17, align 8
  store %struct.sta_info* null, %struct.sta_info** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %21, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %14, align 4
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 10, i32 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %4
  %50 = load i32, i32* @DEBUG_AP, align 4
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %50, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %58)
  store i32 1, i32* %23, align 4
  br label %558

60:                                               ; preds = %4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.sta_info* @ap_get_sta(%struct.TYPE_5__* %68, i32 %71)
  store %struct.sta_info* %72, %struct.sta_info** %18, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %74 = icmp eq %struct.sta_info* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %60
  %76 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @WLAN_STA_AUTH, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75, %60
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = call i32 @spin_unlock_bh(i32* %86)
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  store i32 1, i32* %19, align 4
  %88 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %88, i64* %17, align 8
  store %struct.sta_info* null, %struct.sta_info** %18, align 8
  br label %359

89:                                               ; preds = %75
  %90 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 2
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock_bh(i32* %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %16, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i8* @__le16_to_cpu(i8 zeroext %106)
  %108 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %16, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %16, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, 2
  store i32 %113, i32* %15, align 4
  %114 = load i8*, i8** %16, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i8* @__le16_to_cpu(i8 zeroext %115)
  %117 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 5
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %16, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, 2
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %89
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* @ETH_ALEN, align 4
  %128 = call i32 @memcpy(i32* %37, i8* %126, i32 %127)
  %129 = load i8*, i8** %16, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %16, align 8
  %131 = load i8*, i8** %16, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** %16, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %16, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %135, 6
  store i32 %136, i32* %15, align 4
  br label %140

137:                                              ; preds = %89
  %138 = load i32, i32* @ETH_ALEN, align 4
  %139 = call i32 @memset(i32* %37, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %137, %125
  %141 = load i32, i32* %15, align 4
  %142 = icmp sge i32 %141, 2
  br i1 %142, label %143, label %281

143:                                              ; preds = %140
  %144 = load i8*, i8** %16, align 8
  store i8* %144, i8** %25, align 8
  %145 = load i8*, i8** %25, align 8
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8, i8* @WLAN_EID_SSID, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %197

151:                                              ; preds = %143
  %152 = load i8*, i8** %25, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %25, align 8
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %15, align 4
  %156 = load i8*, i8** %25, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  store i32 %158, i32* %24, align 4
  %159 = load i8*, i8** %25, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %25, align 8
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ugt i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %151
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* @MAX_SSID_LEN, align 4
  %169 = icmp ugt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166, %151
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  %171 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %171, i64* %17, align 8
  br label %359

172:                                              ; preds = %166
  %173 = load i32, i32* %24, align 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @strlen(i32 %176)
  %178 = icmp ne i32 %173, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %172
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i8*, i8** %25, align 8
  %184 = load i32, i32* %24, align 4
  %185 = call i64 @memcmp(i32 %182, i8* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179, %172
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  %188 = load i64, i64* @WLAN_STATUS_ASSOC_DENIED_UNSPEC, align 8
  store i64 %188, i64* %17, align 8
  br label %359

189:                                              ; preds = %179
  %190 = load i32, i32* %24, align 4
  %191 = load i8*, i8** %25, align 8
  %192 = zext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %25, align 8
  %194 = load i32, i32* %24, align 4
  %195 = load i32, i32* %15, align 4
  %196 = sub i32 %195, %194
  store i32 %196, i32* %15, align 4
  br label %197

197:                                              ; preds = %189, %143
  %198 = load i32, i32* %15, align 4
  %199 = icmp sge i32 %198, 2
  br i1 %199, label %200, label %251

200:                                              ; preds = %197
  %201 = load i8*, i8** %25, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = load i8, i8* @WLAN_EID_SUPP_RATES, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %203, %205
  br i1 %206, label %207, label %251

207:                                              ; preds = %200
  %208 = load i8*, i8** %25, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %25, align 8
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %15, align 4
  %212 = load i8*, i8** %25, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  store i32 %214, i32* %24, align 4
  %215 = load i8*, i8** %25, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %25, align 8
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %15, align 4
  %219 = load i32, i32* %24, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp ugt i32 %219, %220
  br i1 %221, label %229, label %222

222:                                              ; preds = %207
  %223 = load i32, i32* %24, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* @WLAN_SUPP_RATES_MAX, align 4
  %228 = icmp ugt i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225, %222, %207
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %20, align 8
  %230 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %230, i64* %17, align 8
  br label %359

231:                                              ; preds = %225
  %232 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %233 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @memset(i32* %234, i32 0, i32 8)
  %236 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %237 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i8*, i8** %25, align 8
  %240 = load i32, i32* %24, align 4
  %241 = call i32 @memcpy(i32* %238, i8* %239, i32 %240)
  %242 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %243 = call i32 @prism2_check_tx_rates(%struct.sta_info* %242)
  %244 = load i32, i32* %24, align 4
  %245 = load i8*, i8** %25, align 8
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  store i8* %247, i8** %25, align 8
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* %15, align 4
  %250 = sub i32 %249, %248
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %231, %200, %197
  %252 = load i32, i32* %15, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %280

254:                                              ; preds = %251
  %255 = load i32, i32* @DEBUG_AP, align 4
  %256 = load %struct.net_device*, %struct.net_device** %9, align 8
  %257 = getelementptr inbounds %struct.net_device, %struct.net_device* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %260 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %15, align 4
  %263 = call i32 (i32, i8*, i32, i32, ...) @PDEBUG(i32 %255, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %258, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %267, %254
  %265 = load i32, i32* %15, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = load i32, i32* @DEBUG_AP, align 4
  %269 = load i8*, i8** %25, align 8
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %268, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %271)
  %273 = load i8*, i8** %25, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %25, align 8
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %15, align 4
  br label %264

277:                                              ; preds = %264
  %278 = load i32, i32* @DEBUG_AP, align 4
  %279 = call i32 (i32, i8*, ...) @PDEBUG2(i32 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %251
  br label %283

281:                                              ; preds = %140
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  %282 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %282, i64* %17, align 8
  br label %359

283:                                              ; preds = %280
  %284 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %285 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %283
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %20, align 8
  br label %358

289:                                              ; preds = %283
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 1
  %294 = call i32 @spin_lock_bh(i32* %293)
  %295 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %296 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %295, i32 0, i32 1
  store i32 1, i32* %296, align 4
  br label %297

297:                                              ; preds = %319, %289
  %298 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %299 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %302 = icmp sle i32 %300, %301
  br i1 %302, label %303, label %324

303:                                              ; preds = %297
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 2
  %308 = load %struct.sta_info**, %struct.sta_info*** %307, align 8
  %309 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %310 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %308, i64 %313
  %315 = load %struct.sta_info*, %struct.sta_info** %314, align 8
  %316 = icmp eq %struct.sta_info* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %303
  br label %324

318:                                              ; preds = %303
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %321 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 4
  br label %297

324:                                              ; preds = %317, %297
  %325 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %326 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @MAX_AID_TABLE_SIZE, align 4
  %329 = icmp sgt i32 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %324
  %331 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %332 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %331, i32 0, i32 1
  store i32 0, i32* %332, align 4
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 1
  %337 = call i32 @spin_unlock_bh(i32* %336)
  %338 = load i64, i64* @WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA, align 8
  store i64 %338, i64* %17, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8** %20, align 8
  br label %357

339:                                              ; preds = %324
  %340 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 2
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 2
  %345 = load %struct.sta_info**, %struct.sta_info*** %344, align 8
  %346 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %347 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.sta_info*, %struct.sta_info** %345, i64 %350
  store %struct.sta_info* %340, %struct.sta_info** %351, align 8
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 2
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 1
  %356 = call i32 @spin_unlock_bh(i32* %355)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8** %20, align 8
  br label %357

357:                                              ; preds = %339, %330
  br label %358

358:                                              ; preds = %357, %288
  br label %359

359:                                              ; preds = %358, %281, %229, %187, %170, %82
  %360 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  store i8* %360, i8** %16, align 8
  %361 = load i32, i32* %19, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %359
  %364 = load i64, i64* @WLAN_REASON_STA_REQ_ASSOC_WITHOUT_AUTH, align 8
  %365 = call zeroext i8 @cpu_to_le16(i64 %364)
  %366 = load i8*, i8** %16, align 8
  store i8 %365, i8* %366, align 1
  %367 = load i8*, i8** %16, align 8
  %368 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %368, i8** %16, align 8
  br label %499

369:                                              ; preds = %359
  %370 = load i64, i64* @WLAN_CAPABILITY_ESS, align 8
  %371 = call zeroext i8 @cpu_to_le16(i64 %370)
  %372 = load i8*, i8** %16, align 8
  store i8 %371, i8* %372, align 1
  %373 = load i8*, i8** %16, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %16, align 8
  %375 = load i64, i64* %17, align 8
  %376 = call zeroext i8 @cpu_to_le16(i64 %375)
  %377 = load i8*, i8** %16, align 8
  store i8 %376, i8* %377, align 1
  %378 = load i8*, i8** %16, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %16, align 8
  %380 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %381 = icmp ne %struct.sta_info* %380, null
  br i1 %381, label %382, label %391

382:                                              ; preds = %369
  %383 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %384 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %382
  %388 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %389 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  br label %392

391:                                              ; preds = %382, %369
  br label %392

392:                                              ; preds = %391, %387
  %393 = phi i32 [ %390, %387 ], [ 0, %391 ]
  %394 = sext i32 %393 to i64
  %395 = call i64 @BIT(i32 14)
  %396 = or i64 %394, %395
  %397 = call i64 @BIT(i32 15)
  %398 = or i64 %396, %397
  %399 = call zeroext i8 @cpu_to_le16(i64 %398)
  %400 = load i8*, i8** %16, align 8
  store i8 %399, i8* %400, align 1
  %401 = load i8*, i8** %16, align 8
  %402 = getelementptr inbounds i8, i8* %401, i32 1
  store i8* %402, i8** %16, align 8
  %403 = load i8*, i8** %16, align 8
  store i8* %403, i8** %12, align 8
  %404 = load i8, i8* @WLAN_EID_SUPP_RATES, align 1
  %405 = load i8*, i8** %12, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %12, align 8
  store i8 %404, i8* %405, align 1
  %407 = load i8*, i8** %12, align 8
  store i8* %407, i8** %13, align 8
  %408 = load i8*, i8** %12, align 8
  %409 = getelementptr inbounds i8, i8* %408, i32 1
  store i8* %409, i8** %12, align 8
  store i8 0, i8* %408, align 1
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @WLAN_RATE_1M, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %392
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @WLAN_RATE_1M, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 130, i32 2
  %425 = trunc i32 %424 to i8
  %426 = load i8*, i8** %12, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %12, align 8
  store i8 %425, i8* %426, align 1
  %428 = load i8*, i8** %13, align 8
  %429 = load i8, i8* %428, align 1
  %430 = add i8 %429, 1
  store i8 %430, i8* %428, align 1
  br label %431

431:                                              ; preds = %416, %392
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @WLAN_RATE_2M, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %453

438:                                              ; preds = %431
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @WLAN_RATE_2M, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i64
  %446 = select i1 %444, i32 132, i32 4
  %447 = trunc i32 %446 to i8
  %448 = load i8*, i8** %12, align 8
  %449 = getelementptr inbounds i8, i8* %448, i32 1
  store i8* %449, i8** %12, align 8
  store i8 %447, i8* %448, align 1
  %450 = load i8*, i8** %13, align 8
  %451 = load i8, i8* %450, align 1
  %452 = add i8 %451, 1
  store i8 %452, i8* %450, align 1
  br label %453

453:                                              ; preds = %438, %431
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = load i32, i32* @WLAN_RATE_5M5, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %475

460:                                              ; preds = %453
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 1
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @WLAN_RATE_5M5, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  %467 = zext i1 %466 to i64
  %468 = select i1 %466, i32 139, i32 11
  %469 = trunc i32 %468 to i8
  %470 = load i8*, i8** %12, align 8
  %471 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %471, i8** %12, align 8
  store i8 %469, i8* %470, align 1
  %472 = load i8*, i8** %13, align 8
  %473 = load i8, i8* %472, align 1
  %474 = add i8 %473, 1
  store i8 %474, i8* %472, align 1
  br label %475

475:                                              ; preds = %460, %453
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @WLAN_RATE_11M, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %497

482:                                              ; preds = %475
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @WLAN_RATE_11M, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i32 150, i32 22
  %491 = trunc i32 %490 to i8
  %492 = load i8*, i8** %12, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %12, align 8
  store i8 %491, i8* %492, align 1
  %494 = load i8*, i8** %13, align 8
  %495 = load i8, i8* %494, align 1
  %496 = add i8 %495, 1
  store i8 %496, i8* %494, align 1
  br label %497

497:                                              ; preds = %482, %475
  %498 = load i8*, i8** %12, align 8
  store i8* %498, i8** %16, align 8
  br label %499

499:                                              ; preds = %497, %363
  %500 = load %struct.net_device*, %struct.net_device** %9, align 8
  %501 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %502 = load i32, i32* %19, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %499
  %505 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  br label %515

506:                                              ; preds = %499
  %507 = load i32, i32* %8, align 4
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %506
  %510 = load i32, i32* @IEEE80211_STYPE_REASSOC_RESP, align 4
  br label %513

511:                                              ; preds = %506
  %512 = load i32, i32* @IEEE80211_STYPE_ASSOC_RESP, align 4
  br label %513

513:                                              ; preds = %511, %509
  %514 = phi i32 [ %510, %509 ], [ %512, %511 ]
  br label %515

515:                                              ; preds = %513, %504
  %516 = phi i32 [ %505, %504 ], [ %514, %513 ]
  %517 = or i32 %501, %516
  %518 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %519 = load i8*, i8** %16, align 8
  %520 = bitcast i8* %519 to i32*
  %521 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %522 = bitcast i8* %521 to i32*
  %523 = ptrtoint i32* %520 to i64
  %524 = ptrtoint i32* %522 to i64
  %525 = sub i64 %523, %524
  %526 = sdiv exact i64 %525, 4
  %527 = trunc i64 %526 to i32
  %528 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %529 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* %19, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %534

533:                                              ; preds = %515
  br label %540

534:                                              ; preds = %515
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 2
  %537 = load %struct.TYPE_5__*, %struct.TYPE_5__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  br label %540

540:                                              ; preds = %534, %533
  %541 = phi i32 [ 0, %533 ], [ %539, %534 ]
  %542 = call i32 @prism2_send_mgmt(%struct.net_device* %500, i32 %517, i8* %518, i32 %527, i32 %530, i32 %541)
  %543 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %544 = icmp ne %struct.sta_info* %543, null
  br i1 %544, label %545, label %557

545:                                              ; preds = %540
  %546 = load i64, i64* %17, align 8
  %547 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %548 = icmp eq i64 %546, %547
  br i1 %548, label %549, label %553

549:                                              ; preds = %545
  %550 = load i32, i32* @jiffies, align 4
  %551 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %552 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %551, i32 0, i32 3
  store i32 %550, i32* %552, align 4
  br label %553

553:                                              ; preds = %549, %545
  %554 = load %struct.sta_info*, %struct.sta_info** %18, align 8
  %555 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %554, i32 0, i32 2
  %556 = call i32 @atomic_dec(i32* %555)
  br label %557

557:                                              ; preds = %553, %540
  store i32 0, i32* %23, align 4
  br label %558

558:                                              ; preds = %557, %49
  %559 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %559)
  %560 = load i32, i32* %23, align 4
  switch i32 %560, label %562 [
    i32 0, label %561
    i32 1, label %561
  ]

561:                                              ; preds = %558, %558
  ret void

562:                                              ; preds = %558
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i8* @__le16_to_cpu(i8 zeroext) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @prism2_check_tx_rates(%struct.sta_info*) #2

declare dso_local i32 @PDEBUG2(i32, i8*, ...) #2

declare dso_local zeroext i8 @cpu_to_le16(i64) #2

declare dso_local i64 @BIT(i32) #2

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @atomic_dec(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
