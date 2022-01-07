; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_wdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipw2100_priv = type { %struct.TYPE_8__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.ieee80211_supported_band, %struct.wireless_dev }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.wireless_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.ieee80211_supported_band**, i32 }
%struct.libipw_geo = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LIBIPW_CH_PASSIVE_ONLY = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@LIBIPW_CH_NO_IBSS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_IBSS = common dso_local global i32 0, align 4
@LIBIPW_CH_RADAR_DETECT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@ipw2100_bg_rates = common dso_local global i32 0, align 4
@RATE_COUNT = common dso_local global i32 0, align 4
@ipw_cipher_suites = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipw2100_wdev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wdev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca %struct.libipw_geo*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %9)
  store %struct.ipw2100_priv* %10, %struct.ipw2100_priv** %4, align 8
  %11 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_10__* %13)
  store %struct.libipw_geo* %14, %struct.libipw_geo** %5, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store %struct.wireless_dev* %18, %struct.wireless_dev** %6, align 8
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %20 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %30 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %210

33:                                               ; preds = %1
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store %struct.ieee80211_supported_band* %37, %struct.ieee80211_supported_band** %8, align 8
  %38 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %42 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %47 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.TYPE_11__* @kcalloc(i32 %48, i32 4, i32 %49)
  %51 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %51, i32 0, i32 4
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i32 0, i32 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %33
  %58 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %59 = call i32 @ipw2100_down(%struct.ipw2100_priv* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %239

62:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %192, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %66 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %195

69:                                               ; preds = %63
  %70 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  %78 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %79 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store i32 %85, i32* %92, align 4
  %93 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %94 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %101, i32 0, i32 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %100, i32* %107, align 8
  %108 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %109 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %117 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %116, i32 0, i32 4
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  store i32 %115, i32* %122, align 4
  %123 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %124 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @LIBIPW_CH_PASSIVE_ONLY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %69
  %135 = load i32, i32* @IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %136 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %136, i32 0, i32 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %135
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %134, %69
  %146 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %147 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %146, i32 0, i32 1
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @LIBIPW_CH_NO_IBSS, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %145
  %158 = load i32, i32* @IEEE80211_CHAN_NO_IBSS, align 4
  %159 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %160 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %159, i32 0, i32 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %158
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %157, %145
  %169 = load %struct.libipw_geo*, %struct.libipw_geo** %5, align 8
  %170 = getelementptr inbounds %struct.libipw_geo, %struct.libipw_geo* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @LIBIPW_CH_RADAR_DETECT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %168
  %181 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %182 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %182, i32 0, i32 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %181
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %180, %168
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %63

195:                                              ; preds = %63
  %196 = load i32, i32* @ipw2100_bg_rates, align 4
  %197 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %198 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @RATE_COUNT, align 4
  %200 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %201 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %203 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %204 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %206, align 8
  %208 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %209 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %207, i64 %208
  store %struct.ieee80211_supported_band* %202, %struct.ieee80211_supported_band** %209, align 8
  br label %210

210:                                              ; preds = %195, %1
  %211 = load i32, i32* @ipw_cipher_suites, align 4
  %212 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %213 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %212, i32 0, i32 0
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store i32 %211, i32* %215, align 4
  %216 = load i32, i32* @ipw_cipher_suites, align 4
  %217 = call i32 @ARRAY_SIZE(i32 %216)
  %218 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %219 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 8
  %222 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %223 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %226 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %225, i32 0, i32 0
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = call i32 @set_wiphy_dev(%struct.TYPE_9__* %224, i32* %228)
  %230 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %231 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %230, i32 0, i32 0
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = call i64 @wiphy_register(%struct.TYPE_9__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %210
  %236 = load i32, i32* @EIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %239

238:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %235, %57
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local %struct.libipw_geo* @libipw_get_geo(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ipw2100_down(%struct.ipw2100_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @set_wiphy_dev(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @wiphy_register(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
