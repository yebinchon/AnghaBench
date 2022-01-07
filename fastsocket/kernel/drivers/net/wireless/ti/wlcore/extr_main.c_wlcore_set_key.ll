; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32 }
%struct.wl12xx_vif = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.wl1271_station = type { i64 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mac80211 set key\00", align 1
@DEBUG_CRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"CMD: 0x%x sta: %p\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Key: algo:0x%x, id:%d, len:%d flags 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"KEY: \00", align 1
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@KEY_WEP = common dso_local global i64 0, align 8
@KEY_TKIP = common dso_local global i64 0, align 8
@KEY_AES = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@KEY_GEM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown key algo 0x%x\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KEY_ADD_OR_REPLACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Could not add or replace key\00", align 1
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"build arp rsp failed: %d\00", align 1
@KEY_REMOVE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Could not remove key\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Unsupported key cmd 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_set_key(%struct.wl1271* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.wl12xx_vif*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.wl1271_station*, align 8
  %19 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %21 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %20)
  store %struct.wl12xx_vif* %21, %struct.wl12xx_vif** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @DEBUG_MAC80211, align 4
  %23 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @DEBUG_CRYPT, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %27 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.ieee80211_sta* %26)
  %28 = load i32, i32* @DEBUG_CRYPT, align 4
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* @DEBUG_CRYPT, align 4
  %43 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %44 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wl1271_dump(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %51 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %5
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %57 = icmp ne %struct.ieee80211_sta* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = bitcast i8* %62 to %struct.wl1271_station*
  store %struct.wl1271_station* %63, %struct.wl1271_station** %18, align 8
  %64 = load %struct.wl1271_station*, %struct.wl1271_station** %18, align 8
  %65 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %17, align 8
  br label %72

67:                                               ; preds = %55
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %69 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %17, align 8
  br label %72

72:                                               ; preds = %67, %58
  br label %78

73:                                               ; preds = %5
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %75 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  br label %78

78:                                               ; preds = %73, %72
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i64, i64* %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @WL1271_TX_SECURITY_HI32(i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @WL1271_TX_SECURITY_LO16(i32 %92)
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %82, %78
  %95 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %121 [
    i32 128, label %98
    i32 129, label %98
    i32 130, label %105
    i32 131, label %112
    i32 132, label %119
  ]

98:                                               ; preds = %94, %94
  %99 = load i64, i64* @KEY_WEP, align 8
  store i64 %99, i64* %16, align 8
  %100 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %104 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  br label %128

105:                                              ; preds = %94
  %106 = load i64, i64* @KEY_TKIP, align 8
  store i64 %106, i64* %16, align 8
  %107 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %108 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %111 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  br label %128

112:                                              ; preds = %94
  %113 = load i64, i64* @KEY_AES, align 8
  store i64 %113, i64* %16, align 8
  %114 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %115 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %116 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %128

119:                                              ; preds = %94
  %120 = load i64, i64* @KEY_GEM, align 8
  store i64 %120, i64* %16, align 8
  br label %128

121:                                              ; preds = %94
  %122 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %123 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EOPNOTSUPP, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %216

128:                                              ; preds = %119, %112, %105, %98
  %129 = load i32, i32* %8, align 4
  switch i32 %129, label %209 [
    i32 133, label %130
    i32 134, label %187
  ]

130:                                              ; preds = %128
  %131 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %132 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %133 = load i32, i32* @KEY_ADD_OR_REPLACE, align 4
  %134 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %135 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %16, align 8
  %138 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %139 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %142 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %15, align 4
  %146 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %147 = call i32 @wl1271_set_key(%struct.wl1271* %131, %struct.wl12xx_vif* %132, i32 %133, i32 %136, i64 %137, i32 %140, i32 %143, i32 %144, i32 %145, %struct.ieee80211_sta* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %130
  %151 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %6, align 4
  br label %216

153:                                              ; preds = %130
  %154 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %155 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %186

159:                                              ; preds = %153
  %160 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %161 = icmp ne %struct.ieee80211_sta* %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %159
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* @KEY_WEP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %162, %159
  %167 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %168 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %16, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %175 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %177 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %178 = call i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271* %176, %struct.wl12xx_vif* %177)
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @wl1271_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %6, align 4
  br label %216

185:                                              ; preds = %172
  br label %186

186:                                              ; preds = %185, %166, %162, %153
  br label %214

187:                                              ; preds = %128
  %188 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %189 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %190 = load i32, i32* @KEY_REMOVE, align 4
  %191 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %192 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %16, align 8
  %195 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %196 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %199 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %202 = call i32 @wl1271_set_key(%struct.wl1271* %188, %struct.wl12xx_vif* %189, i32 %190, i32 %193, i64 %194, i32 %197, i32 %200, i32 0, i32 0, %struct.ieee80211_sta* %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %187
  %206 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %6, align 4
  br label %216

208:                                              ; preds = %187
  br label %214

209:                                              ; preds = %128
  %210 = load i32, i32* %8, align 4
  %211 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @EOPNOTSUPP, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %216

214:                                              ; preds = %208, %186
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %209, %205, %181, %150, %121
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @wl1271_dump(i32, i8*, i32, i32) #1

declare dso_local i32 @WL1271_TX_SECURITY_HI32(i32) #1

declare dso_local i32 @WL1271_TX_SECURITY_LO16(i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wl1271_set_key(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i64, i32, i32, i32, i32, %struct.ieee80211_sta*) #1

declare dso_local i32 @wl1271_cmd_build_arp_rsp(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
