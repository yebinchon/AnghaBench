; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_authen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_handle_authen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.ap_data*, %struct.TYPE_10__, %struct.net_device* }
%struct.ap_data = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.lib80211_crypt_data** }
%struct.lib80211_crypt_data = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.sk_buff = type { i32*, i32 }
%struct.hostap_80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i8*, i32 }
%struct.sta_info = type { i32, i32, i32, %struct.TYPE_9__, i64, i64, i32, %struct.lib80211_crypt_data* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }

@WLAN_AUTH_CHALLENGE_LEN = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IEEE80211_MGMT_HDR_LEN = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"%s: handle_authen - too short payload (len=%d) from %pM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"authentication denied\00", align 1
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@PRISM2_AUTH_OPEN = common dso_local global i32 0, align 4
@PRISM2_AUTH_SHARED_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unsupported algorithm\00", align 1
@WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG = common dso_local global i32 0, align 4
@WLAN_EID_CHALLENGE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid challenge len\00", align 1
@WLAN_STATUS_CHALLENGE_FAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"challenge underflow\00", align 1
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"%s: no beacons received for a while, assuming AP %pM is now STA\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"AP trying to authenticate?\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"unknown authentication transaction number\00", align 1
@WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"new STA\00", align 1
@MAX_STA_COUNT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"no more room for new STAs\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ap_add_sta failed\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"authOK\00", align 1
@WLAN_STA_AUTH = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c"challenge response incorrect\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"challenge OK - authOK\00", align 1
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_AUTH = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [68 x i8] c"%s: %pM auth (alg=%d trans#=%d stat=%d len=%d fc=%04x) ==> %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.sk_buff*, %struct.hostap_80211_rx_status*)* @handle_authen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_authen(%struct.TYPE_11__* %0, %struct.sk_buff* %1, %struct.hostap_80211_rx_status* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hostap_80211_rx_status*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ap_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.sta_info*, align 8
  %22 = alloca %struct.lib80211_crypt_data*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.hostap_80211_rx_status* %2, %struct.hostap_80211_rx_status** %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %34, %struct.ieee80211_hdr** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.ap_data*, %struct.ap_data** %36, align 8
  store %struct.ap_data* %37, %struct.ap_data** %10, align 8
  %38 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %39 = add nsw i32 8, %38
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %11, align 8
  %42 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %43 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %43, i32* %20, align 4
  store %struct.sta_info* null, %struct.sta_info** %21, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @hostap_80211_get_hdrlen(i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %65

55:                                               ; preds = %3
  %56 = load i32, i32* @DEBUG_AP, align 4
  %57 = load %struct.net_device*, %struct.net_device** %7, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i8* %63)
  store i32 1, i32* %24, align 4
  br label %514

65:                                               ; preds = %3
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.ap_data*, %struct.ap_data** %67, align 8
  %69 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %68, i32 0, i32 3
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.ap_data*, %struct.ap_data** %72, align 8
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %73, i8* %76)
  store %struct.sta_info* %77, %struct.sta_info** %21, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %79 = icmp ne %struct.sta_info* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %65
  %81 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 1
  %83 = call i32 @atomic_inc(i32* %82)
  br label %84

84:                                               ; preds = %80, %65
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.ap_data*, %struct.ap_data** %86, align 8
  %88 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %87, i32 0, i32 3
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %91 = icmp ne %struct.sta_info* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 7
  %95 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %94, align 8
  %96 = icmp ne %struct.lib80211_crypt_data* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %99 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %98, i32 0, i32 7
  %100 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %99, align 8
  store %struct.lib80211_crypt_data* %100, %struct.lib80211_crypt_data** %22, align 8
  br label %127

101:                                              ; preds = %92, %84
  store i32 0, i32* %25, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 3
  %108 = icmp uge i64 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add i64 %113, 3
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 6
  store i32 %117, i32* %25, align 4
  br label %118

118:                                              ; preds = %109, %101
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %121, align 8
  %123 = load i32, i32* %25, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %122, i64 %124
  %126 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %125, align 8
  store %struct.lib80211_crypt_data* %126, %struct.lib80211_crypt_data** %22, align 8
  br label %127

127:                                              ; preds = %118, %97
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @IEEE80211_MGMT_HDR_LEN, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %19, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @__le16_to_cpu(i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %19, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @__le16_to_cpu(i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %19, align 8
  %144 = load i32*, i32** %19, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @__le16_to_cpu(i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32*, i32** %19, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %19, align 8
  %149 = load %struct.net_device*, %struct.net_device** %7, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %153 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* @ETH_ALEN, align 4
  %156 = call i64 @memcmp(i32* %151, i8* %154, i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %127
  %159 = load %struct.ap_data*, %struct.ap_data** %10, align 8
  %160 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %159, i32 0, i32 2
  %161 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %162 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @ap_control_mac_deny(i32* %160, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158, %127
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %167 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %167, i32* %20, align 4
  br label %408

168:                                              ; preds = %158
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PRISM2_AUTH_OPEN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, 129
  br i1 %177, label %191, label %178

178:                                              ; preds = %175, %168
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @PRISM2_AUTH_SHARED_KEY, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %22, align 8
  %187 = icmp ne %struct.lib80211_crypt_data* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = icmp eq i32 %189, 128
  br i1 %190, label %191, label %192

191:                                              ; preds = %188, %175
  br label %194

192:                                              ; preds = %188, %185, %178
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  %193 = load i32, i32* @WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG, align 4
  store i32 %193, i32* %20, align 4
  br label %408

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp sge i32 %195, 8
  br i1 %196, label %197, label %225

197:                                              ; preds = %194
  %198 = load i32*, i32** %19, align 8
  %199 = bitcast i32* %198 to i64*
  store i64* %199, i64** %26, align 8
  %200 = load i64*, i64** %26, align 8
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @WLAN_EID_CHALLENGE, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %197
  %205 = load i64*, i64** %26, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %209 = sext i32 %208 to i64
  %210 = icmp ne i64 %207, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %204
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %212 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %212, i32* %20, align 4
  br label %408

213:                                              ; preds = %204
  %214 = load i32, i32* %14, align 4
  %215 = sub nsw i32 %214, 8
  %216 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  %219 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %219, i32* %20, align 4
  br label %408

220:                                              ; preds = %213
  %221 = load i64*, i64** %26, align 8
  %222 = getelementptr inbounds i64, i64* %221, i64 2
  %223 = bitcast i64* %222 to i8*
  store i8* %223, i8** %13, align 8
  br label %224

224:                                              ; preds = %220, %197
  br label %225

225:                                              ; preds = %224, %194
  %226 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %227 = icmp ne %struct.sta_info* %226, null
  br i1 %227, label %228, label %271

228:                                              ; preds = %225
  %229 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %230 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %271

233:                                              ; preds = %228
  %234 = load i32, i32* @jiffies, align 4
  %235 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %236 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %241 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = mul nsw i32 10, %242
  %244 = load i32, i32* @HZ, align 4
  %245 = mul nsw i32 %243, %244
  %246 = sdiv i32 %245, 1024
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %239, %247
  %249 = call i64 @time_after(i32 %234, i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %233
  %252 = load i32, i32* @DEBUG_AP, align 4
  %253 = load %struct.net_device*, %struct.net_device** %7, align 8
  %254 = getelementptr inbounds %struct.net_device, %struct.net_device* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %257 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %252, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %255, i32 %258)
  %260 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %261 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %260, i32 0, i32 5
  store i64 0, i64* %261, align 8
  %262 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %263 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %262, i32 0, i32 4
  store i64 0, i64* %263, align 8
  %264 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %265 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  store i32* null, i32** %267, align 8
  br label %270

268:                                              ; preds = %233
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8** %23, align 8
  %269 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %269, i32* %20, align 4
  br label %408

270:                                              ; preds = %251
  br label %271

271:                                              ; preds = %270, %228, %225
  %272 = load i32, i32* %16, align 4
  %273 = icmp eq i32 %272, 129
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %17, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %296, label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %16, align 4
  %279 = icmp eq i32 %278, 128
  br i1 %279, label %280, label %297

280:                                              ; preds = %277
  %281 = load i32, i32* %17, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %296, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %17, align 4
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %286, label %297

286:                                              ; preds = %283
  %287 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %288 = icmp ne %struct.sta_info* %287, null
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %291 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = icmp ne i32* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %289, %280, %274
  br label %299

297:                                              ; preds = %289, %286, %283, %277
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8** %23, align 8
  %298 = load i32, i32* @WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION, align 4
  store i32 %298, i32* %20, align 4
  br label %408

299:                                              ; preds = %296
  %300 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %301 = icmp eq %struct.sta_info* %300, null
  br i1 %301, label %302, label %325

302:                                              ; preds = %299
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %23, align 8
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 1
  %305 = load %struct.ap_data*, %struct.ap_data** %304, align 8
  %306 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @MAX_STA_COUNT, align 8
  %309 = icmp sge i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %302
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %23, align 8
  %311 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %311, i32* %20, align 4
  br label %408

312:                                              ; preds = %302
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  %315 = load %struct.ap_data*, %struct.ap_data** %314, align 8
  %316 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %317 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = call %struct.sta_info* @ap_add_sta(%struct.ap_data* %315, i8* %318)
  store %struct.sta_info* %319, %struct.sta_info** %21, align 8
  %320 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %321 = icmp eq %struct.sta_info* %320, null
  br i1 %321, label %322, label %324

322:                                              ; preds = %312
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %23, align 8
  %323 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %323, i32* %20, align 4
  br label %408

324:                                              ; preds = %312
  br label %325

325:                                              ; preds = %324, %299
  %326 = load i32, i32* %16, align 4
  switch i32 %326, label %407 [
    i32 129, label %327
    i32 128, label %333
  ]

327:                                              ; preds = %325
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %23, align 8
  %328 = load i64, i64* @WLAN_STA_AUTH, align 8
  %329 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %330 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %329, i32 0, i32 4
  %331 = load i64, i64* %330, align 8
  %332 = or i64 %331, %328
  store i64 %332, i64* %330, align 8
  br label %407

333:                                              ; preds = %325
  %334 = load i32, i32* %17, align 4
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %362

336:                                              ; preds = %333
  %337 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %338 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = icmp eq i32* %341, null
  br i1 %342, label %343, label %361

343:                                              ; preds = %336
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  %346 = load %struct.ap_data*, %struct.ap_data** %345, align 8
  %347 = call i32* @ap_auth_make_challenge(%struct.ap_data* %346)
  %348 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %349 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 0
  store i32* %347, i32** %351, align 8
  %352 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %353 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %352, i32 0, i32 3
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = icmp eq i32* %356, null
  br i1 %357, label %358, label %360

358:                                              ; preds = %343
  %359 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %359, i32* %20, align 4
  br label %408

360:                                              ; preds = %343
  br label %361

361:                                              ; preds = %360, %336
  br label %406

362:                                              ; preds = %333
  %363 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %364 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = icmp eq i32* %367, null
  br i1 %368, label %388, label %369

369:                                              ; preds = %362
  %370 = load i8*, i8** %13, align 8
  %371 = icmp eq i8* %370, null
  br i1 %371, label %388, label %372

372:                                              ; preds = %369
  %373 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %374 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i8*, i8** %13, align 8
  %379 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %380 = call i64 @memcmp(i32* %377, i8* %378, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %372
  %383 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %384 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @ieee80211_has_protected(i32 %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %390, label %388

388:                                              ; preds = %382, %372, %369, %362
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8** %23, align 8
  %389 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %389, i32* %20, align 4
  br label %408

390:                                              ; preds = %382
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8** %23, align 8
  %391 = load i64, i64* @WLAN_STA_AUTH, align 8
  %392 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %393 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = or i64 %394, %391
  store i64 %395, i64* %393, align 8
  %396 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %397 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = load i32*, i32** %399, align 8
  %401 = call i32 @kfree(i32* %400)
  %402 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %403 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  store i32* null, i32** %405, align 8
  br label %406

406:                                              ; preds = %390, %361
  br label %407

407:                                              ; preds = %325, %406, %327
  br label %408

408:                                              ; preds = %407, %388, %358, %322, %310, %297, %268, %218, %211, %192, %166
  %409 = bitcast i8* %42 to i32*
  store i32* %409, i32** %19, align 8
  %410 = load i32, i32* %16, align 4
  %411 = call i32 @cpu_to_le16(i32 %410)
  %412 = load i32*, i32** %19, align 8
  store i32 %411, i32* %412, align 4
  %413 = load i32*, i32** %19, align 8
  %414 = getelementptr inbounds i32, i32* %413, i32 1
  store i32* %414, i32** %19, align 8
  %415 = load i32, i32* %17, align 4
  %416 = add nsw i32 %415, 1
  %417 = call i32 @cpu_to_le16(i32 %416)
  %418 = load i32*, i32** %19, align 8
  store i32 %417, i32* %418, align 4
  %419 = load i32*, i32** %19, align 8
  %420 = getelementptr inbounds i32, i32* %419, i32 1
  store i32* %420, i32** %19, align 8
  %421 = load i32, i32* %20, align 4
  %422 = call i32 @cpu_to_le16(i32 %421)
  %423 = load i32*, i32** %19, align 8
  store i32 %422, i32* %423, align 4
  %424 = load i32*, i32** %19, align 8
  %425 = getelementptr inbounds i32, i32* %424, i32 1
  store i32* %425, i32** %19, align 8
  store i32 6, i32* %15, align 4
  %426 = load i32, i32* %20, align 4
  %427 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %469

429:                                              ; preds = %408
  %430 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %431 = icmp ne %struct.sta_info* %430, null
  br i1 %431, label %432, label %469

432:                                              ; preds = %429
  %433 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %434 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %433, i32 0, i32 3
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %469

439:                                              ; preds = %432
  %440 = load i32, i32* %16, align 4
  %441 = icmp eq i32 %440, 128
  br i1 %441, label %442, label %469

442:                                              ; preds = %439
  %443 = load i32, i32* %17, align 4
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %469

445:                                              ; preds = %442
  %446 = load i32*, i32** %19, align 8
  %447 = bitcast i32* %446 to i64*
  store i64* %447, i64** %27, align 8
  %448 = load i64, i64* @WLAN_EID_CHALLENGE, align 8
  %449 = load i64*, i64** %27, align 8
  %450 = getelementptr inbounds i64, i64* %449, i32 1
  store i64* %450, i64** %27, align 8
  store i64 %448, i64* %449, align 8
  %451 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %452 = sext i32 %451 to i64
  %453 = load i64*, i64** %27, align 8
  %454 = getelementptr inbounds i64, i64* %453, i32 1
  store i64* %454, i64** %27, align 8
  store i64 %452, i64* %453, align 8
  %455 = load i32*, i32** %19, align 8
  %456 = getelementptr inbounds i32, i32* %455, i32 1
  store i32* %456, i32** %19, align 8
  %457 = load i32*, i32** %19, align 8
  %458 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %459 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %460, i32 0, i32 0
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %464 = call i32 @memcpy(i32* %457, i32* %462, i32 %463)
  %465 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %466 = add nsw i32 2, %465
  %467 = load i32, i32* %15, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %15, align 4
  br label %469

469:                                              ; preds = %445, %442, %439, %432, %429, %408
  %470 = load %struct.net_device*, %struct.net_device** %7, align 8
  %471 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %472 = load i32, i32* @IEEE80211_STYPE_AUTH, align 4
  %473 = or i32 %471, %472
  %474 = load i32, i32* %15, align 4
  %475 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %476 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %475, i32 0, i32 0
  %477 = load i8*, i8** %476, align 8
  %478 = load %struct.ap_data*, %struct.ap_data** %10, align 8
  %479 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @prism2_send_mgmt(%struct.net_device* %470, i32 %473, i8* %42, i32 %474, i8* %477, i32 %480)
  %482 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %483 = icmp ne %struct.sta_info* %482, null
  br i1 %483, label %484, label %491

484:                                              ; preds = %469
  %485 = load i32, i32* @jiffies, align 4
  %486 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %487 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %486, i32 0, i32 2
  store i32 %485, i32* %487, align 8
  %488 = load %struct.sta_info*, %struct.sta_info** %21, align 8
  %489 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %488, i32 0, i32 1
  %490 = call i32 @atomic_dec(i32* %489)
  br label %491

491:                                              ; preds = %484, %469
  %492 = load i32, i32* %20, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %513

494:                                              ; preds = %491
  %495 = load i32, i32* @DEBUG_AP, align 4
  %496 = load %struct.net_device*, %struct.net_device** %7, align 8
  %497 = getelementptr inbounds %struct.net_device, %struct.net_device* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %500 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %499, i32 0, i32 0
  %501 = load i8*, i8** %500, align 8
  %502 = load i32, i32* %16, align 4
  %503 = load i32, i32* %17, align 4
  %504 = load i32, i32* %18, align 4
  %505 = load i32, i32* %14, align 4
  %506 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %507 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = call i32 @le16_to_cpu(i32 %508)
  %510 = load i32, i32* %20, align 4
  %511 = load i8*, i8** %23, align 8
  %512 = call i32 (i32, i8*, i32, ...) @PDEBUG(i32 %495, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0), i32 %498, i8* %501, i32 %502, i32 %503, i32 %504, i32 %505, i32 %509, i32 %510, i8* %511)
  br label %513

513:                                              ; preds = %494, %491
  store i32 0, i32* %24, align 4
  br label %514

514:                                              ; preds = %513, %55
  %515 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %515)
  %516 = load i32, i32* %24, align 4
  switch i32 %516, label %518 [
    i32 0, label %517
    i32 1, label %517
  ]

517:                                              ; preds = %514, %514
  ret void

518:                                              ; preds = %514
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hostap_80211_get_hdrlen(i32) #2

declare dso_local i32 @PDEBUG(i32, i8*, i32, ...) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i8*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @__le16_to_cpu(i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i64 @ap_control_mac_deny(i32*, i8*) #2

declare dso_local i64 @time_after(i32, i64) #2

declare dso_local %struct.sta_info* @ap_add_sta(%struct.ap_data*, i8*) #2

declare dso_local i32* @ap_auth_make_challenge(%struct.ap_data*) #2

declare dso_local i32 @ieee80211_has_protected(i32) #2

declare dso_local i32 @kfree(i32*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @prism2_send_mgmt(%struct.net_device*, i32, i8*, i32, i8*, i32) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @le16_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
