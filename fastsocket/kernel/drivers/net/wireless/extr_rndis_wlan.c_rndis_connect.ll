; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_connect_params = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.ieee80211_channel* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.rndis_wlan_private = type { i32, %struct.usbnet* }
%struct.usbnet = type { i32 }
%struct.ndis_80211_ssid = type { i32, i32 }

@RNDIS_WLAN_ALG_NONE = common dso_local global i32 0, align 4
@RNDIS_WLAN_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unsupported pairwise cipher\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid keymgmt\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"cfg80211.connect('%.32s':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\0A\00", align 1
@NDIS_80211_INFRA_INFRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"connect: set_infra_mode failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"connect: set_auth_mode failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"connect: set_encr_mode failed, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"connect: set_channel failed, %d\0A\00", align 1
@RNDIS_WLAN_ALG_WEP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"connect: add_wep_key failed, %d (%d, %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"connect: set_bssid failed, %d\0A\00", align 1
@NDIS_802_11_LENGTH_SSID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"connect: set_essid failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_connect_params*)* @rndis_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_connect(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_connect_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_connect_params*, align 8
  %8 = alloca %struct.rndis_wlan_private*, align 8
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.ndis_80211_ssid, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_connect_params* %2, %struct.cfg80211_connect_params** %7, align 8
  %19 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %20 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %19)
  store %struct.rndis_wlan_private* %20, %struct.rndis_wlan_private** %8, align 8
  %21 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %22 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %21, i32 0, i32 1
  %23 = load %struct.usbnet*, %struct.usbnet** %22, align 8
  store %struct.usbnet* %23, %struct.usbnet** %9, align 8
  %24 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %24, i32 0, i32 9
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %25, align 8
  store %struct.ieee80211_channel* %26, %struct.ieee80211_channel** %10, align 8
  %27 = load i32, i32* @RNDIS_WLAN_ALG_NONE, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @RNDIS_WLAN_ALG_NONE, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @RNDIS_WLAN_KEY_MGMT_NONE, align 4
  store i32 %29, i32* %14, align 4
  store i32 -1, i32* %18, align 4
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %31 = icmp ne %struct.ieee80211_channel* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ieee80211_frequency_to_channel(i32 %35)
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rndis_cipher_to_alg(i32 %41)
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %62, %37
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %46 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %52 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rndis_cipher_to_alg(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %16, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %67 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @RNDIS_WLAN_ALG_NONE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netdev_err(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ENOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %335

82:                                               ; preds = %71, %65
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %86 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %84, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %92 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rndis_akm_suite_to_key_mgmt(i32 %98)
  %100 = load i32, i32* %14, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %83

105:                                              ; preds = %83
  %106 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %107 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* @RNDIS_WLAN_KEY_MGMT_NONE, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @netdev_err(i32 %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @ENOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %4, align 4
  br label %335

122:                                              ; preds = %111, %105
  %123 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %124 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %127 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %130 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %18, align 4
  %133 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %134 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %137 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %141 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %125, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131, i32 %132, i32 %135, i32 %139, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %148 = call i64 @is_associated(%struct.usbnet* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %122
  %151 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %152 = call i32 @disassociate(%struct.usbnet* %151, i32 0)
  br label %153

153:                                              ; preds = %150, %122
  %154 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %155 = load i32, i32* @NDIS_80211_INFRA_INFRA, align 4
  %156 = call i32 @set_infra_mode(%struct.usbnet* %154, i32 %155)
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %161 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %331

165:                                              ; preds = %153
  %166 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %167 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %168 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %172 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @set_auth_mode(%struct.usbnet* %166, i32 %170, i32 %173, i32 %174)
  store i32 %175, i32* %17, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %165
  %179 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %180 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %17, align 4
  %183 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %181, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %182)
  br label %331

184:                                              ; preds = %165
  %185 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %186 = call i32 @set_priv_filter(%struct.usbnet* %185)
  %187 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @set_encr_mode(%struct.usbnet* %187, i32 %188, i32 %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %184
  %194 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %195 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %331

199:                                              ; preds = %184
  %200 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %201 = icmp ne %struct.ieee80211_channel* %200, null
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @set_channel(%struct.usbnet* %203, i32 %204)
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %17, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %210 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %211, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %212)
  br label %331

214:                                              ; preds = %202
  br label %215

215:                                              ; preds = %214, %199
  %216 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %217 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %259

220:                                              ; preds = %215
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %12, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @RNDIS_WLAN_ALG_WEP, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %259

227:                                              ; preds = %220
  %228 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %229 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %232 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %234 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %235 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %238 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %241 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @add_wep_key(%struct.usbnet* %233, i32 %236, i32 %239, i32 %242)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %227
  %247 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %248 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %252 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %255 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %249, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %250, i32 %253, i32 %256)
  br label %331

258:                                              ; preds = %227
  br label %259

259:                                              ; preds = %258, %220, %215
  %260 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %261 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %291

264:                                              ; preds = %259
  %265 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %266 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @is_zero_ether_addr(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %291, label %270

270:                                              ; preds = %264
  %271 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %272 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @is_broadcast_ether_addr(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %270
  %277 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %278 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %279 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @set_bssid(%struct.usbnet* %277, i32 %280)
  store i32 %281, i32* %17, align 4
  %282 = load i32, i32* %17, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %276
  %285 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %286 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %17, align 4
  %289 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %287, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %288)
  br label %331

290:                                              ; preds = %276
  br label %294

291:                                              ; preds = %270, %264, %259
  %292 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %293 = call i32 @clear_bssid(%struct.usbnet* %292)
  br label %294

294:                                              ; preds = %291, %290
  %295 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %296 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  store i32 %297, i32* %15, align 4
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* @NDIS_802_11_LENGTH_SSID, align 4
  %300 = icmp sgt i32 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = load i32, i32* @NDIS_802_11_LENGTH_SSID, align 4
  store i32 %302, i32* %15, align 4
  br label %303

303:                                              ; preds = %301, %294
  %304 = call i32 @memset(%struct.ndis_80211_ssid* %11, i32 0, i32 8)
  %305 = load i32, i32* %15, align 4
  %306 = call i32 @cpu_to_le32(i32 %305)
  %307 = getelementptr inbounds %struct.ndis_80211_ssid, %struct.ndis_80211_ssid* %11, i32 0, i32 1
  store i32 %306, i32* %307, align 4
  %308 = getelementptr inbounds %struct.ndis_80211_ssid, %struct.ndis_80211_ssid* %11, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.cfg80211_connect_params*, %struct.cfg80211_connect_params** %7, align 8
  %311 = getelementptr inbounds %struct.cfg80211_connect_params, %struct.cfg80211_connect_params* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %15, align 4
  %314 = call i32 @memcpy(i32 %309, i32 %312, i32 %313)
  %315 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %316 = call i32 @usbnet_pause_rx(%struct.usbnet* %315)
  %317 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %318 = call i32 @usbnet_purge_paused_rxq(%struct.usbnet* %317)
  %319 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %320 = call i32 @set_essid(%struct.usbnet* %319, %struct.ndis_80211_ssid* %11)
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %17, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %303
  %324 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %325 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %17, align 4
  %328 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %326, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %323, %303
  %330 = load i32, i32* %17, align 4
  store i32 %330, i32* %4, align 4
  br label %335

331:                                              ; preds = %284, %246, %208, %193, %178, %159
  %332 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %333 = call i32 @disassociate(%struct.usbnet* %332, i32 1)
  %334 = load i32, i32* %17, align 4
  store i32 %334, i32* %4, align 4
  br label %335

335:                                              ; preds = %331, %329, %115, %75
  %336 = load i32, i32* %4, align 4
  ret i32 %336
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @rndis_cipher_to_alg(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rndis_akm_suite_to_key_mgmt(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @is_associated(%struct.usbnet*) #1

declare dso_local i32 @disassociate(%struct.usbnet*, i32) #1

declare dso_local i32 @set_infra_mode(%struct.usbnet*, i32) #1

declare dso_local i32 @set_auth_mode(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @set_priv_filter(%struct.usbnet*) #1

declare dso_local i32 @set_encr_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @set_channel(%struct.usbnet*, i32) #1

declare dso_local i32 @add_wep_key(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_bssid(%struct.usbnet*, i32) #1

declare dso_local i32 @clear_bssid(%struct.usbnet*) #1

declare dso_local i32 @memset(%struct.ndis_80211_ssid*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usbnet_pause_rx(%struct.usbnet*) #1

declare dso_local i32 @usbnet_purge_paused_rxq(%struct.usbnet*) #1

declare dso_local i32 @set_essid(%struct.usbnet*, %struct.ndis_80211_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
