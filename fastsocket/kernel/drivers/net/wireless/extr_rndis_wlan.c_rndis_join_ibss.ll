; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_join_ibss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_rndis_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ibss_params = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.rndis_wlan_private = type { %struct.usbnet* }
%struct.usbnet = type { i32 }
%struct.ndis_80211_ssid = type { i32, i32 }

@NL80211_AUTHTYPE_SHARED_KEY = common dso_local global i32 0, align 4
@RNDIS_WLAN_ALG_WEP = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@RNDIS_WLAN_ALG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cfg80211.join_ibss('%.32s':[%pM]:%d:%d)\0A\00", align 1
@NDIS_80211_INFRA_ADHOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"join_ibss: set_infra_mode failed, %d\0A\00", align 1
@RNDIS_WLAN_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"join_ibss: set_auth_mode failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"join_ibss: set_encr_mode failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"join_ibss: set_channel failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"join_ibss: set_bssid failed, %d\0A\00", align 1
@NDIS_802_11_LENGTH_SSID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"join_ibss: set_essid failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ibss_params*)* @rndis_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_join_ibss(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_ibss_params*, align 8
  %8 = alloca %struct.rndis_wlan_private*, align 8
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca %struct.ndis_80211_ssid, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %7, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %18 = call %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy* %17)
  store %struct.rndis_wlan_private* %18, %struct.rndis_wlan_private** %8, align 8
  %19 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %8, align 8
  %20 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %19, i32 0, i32 0
  %21 = load %struct.usbnet*, %struct.usbnet** %20, align 8
  store %struct.usbnet* %21, %struct.usbnet** %9, align 8
  %22 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %23 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %24, align 8
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %10, align 8
  store i32 -1, i32* %16, align 4
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %27 = icmp ne %struct.ieee80211_channel* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %30 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_frequency_to_channel(i32 %31)
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %35 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @NL80211_AUTHTYPE_SHARED_KEY, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @RNDIS_WLAN_ALG_WEP, align 4
  store i32 %40, i32* %14, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* @RNDIS_WLAN_ALG_NONE, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %52 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %56 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %54, i32 %57)
  %59 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %60 = call i64 @is_associated(%struct.usbnet* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %64 = call i32 @disassociate(%struct.usbnet* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %44
  %66 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %67 = load i32, i32* @NDIS_80211_INFRA_ADHOC, align 4
  %68 = call i32 @set_infra_mode(%struct.usbnet* %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %73 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %193

77:                                               ; preds = %65
  %78 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @RNDIS_WLAN_KEY_MGMT_NONE, align 4
  %81 = call i32 @set_auth_mode(%struct.usbnet* %78, i32 0, i32 %79, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %86 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %193

90:                                               ; preds = %77
  %91 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %92 = call i32 @set_priv_filter(%struct.usbnet* %91)
  %93 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @RNDIS_WLAN_ALG_NONE, align 4
  %96 = call i32 @set_encr_mode(%struct.usbnet* %93, i32 %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %101 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %193

105:                                              ; preds = %90
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %107 = icmp ne %struct.ieee80211_channel* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @set_channel(%struct.usbnet* %109, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %116 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %117, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %193

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %105
  %122 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %123 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %153

126:                                              ; preds = %121
  %127 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %128 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @is_zero_ether_addr(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %153, label %132

132:                                              ; preds = %126
  %133 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %134 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @is_broadcast_ether_addr(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %132
  %139 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %140 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %141 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @set_bssid(%struct.usbnet* %139, i32 %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %138
  %147 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %148 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %193

152:                                              ; preds = %138
  br label %156

153:                                              ; preds = %132, %126, %121
  %154 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %155 = call i32 @clear_bssid(%struct.usbnet* %154)
  br label %156

156:                                              ; preds = %153, %152
  %157 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %158 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* @NDIS_802_11_LENGTH_SSID, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @NDIS_802_11_LENGTH_SSID, align 4
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %163, %156
  %166 = call i32 @memset(%struct.ndis_80211_ssid* %11, i32 0, i32 8)
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @cpu_to_le32(i32 %167)
  %169 = getelementptr inbounds %struct.ndis_80211_ssid, %struct.ndis_80211_ssid* %11, i32 0, i32 1
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.ndis_80211_ssid, %struct.ndis_80211_ssid* %11, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %7, align 8
  %173 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @memcpy(i32 %171, i32 %174, i32 %175)
  %177 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %178 = call i32 @usbnet_purge_paused_rxq(%struct.usbnet* %177)
  %179 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %180 = call i32 @usbnet_resume_rx(%struct.usbnet* %179)
  %181 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %182 = call i32 @set_essid(%struct.usbnet* %181, %struct.ndis_80211_ssid* %11)
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %165
  %186 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %187 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %13, align 4
  %190 = call i32 (i32, i8*, i32, ...) @netdev_dbg(i32 %188, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %185, %165
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %4, align 4
  br label %197

193:                                              ; preds = %146, %114, %99, %84, %71
  %194 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %195 = call i32 @disassociate(%struct.usbnet* %194, i32 1)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %193, %191
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.rndis_wlan_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @is_associated(%struct.usbnet*) #1

declare dso_local i32 @disassociate(%struct.usbnet*, i32) #1

declare dso_local i32 @set_infra_mode(%struct.usbnet*, i32) #1

declare dso_local i32 @set_auth_mode(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @set_priv_filter(%struct.usbnet*) #1

declare dso_local i32 @set_encr_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @set_channel(%struct.usbnet*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_bssid(%struct.usbnet*, i32) #1

declare dso_local i32 @clear_bssid(%struct.usbnet*) #1

declare dso_local i32 @memset(%struct.ndis_80211_ssid*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @usbnet_purge_paused_rxq(%struct.usbnet*) #1

declare dso_local i32 @usbnet_resume_rx(%struct.usbnet*) #1

declare dso_local i32 @set_essid(%struct.usbnet*, %struct.ndis_80211_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
