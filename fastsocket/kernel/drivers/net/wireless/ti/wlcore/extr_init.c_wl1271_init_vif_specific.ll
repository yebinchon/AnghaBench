; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_vif_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_init_vif_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.conf_tx_tid*, %struct.conf_tx_ac_category* }
%struct.conf_tx_tid = type { i32*, i32, i32, i32, i32, i32 }
%struct.conf_tx_ac_category = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i64 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@WL1271_PSM_CAM = common dso_local global i64 0, align 8
@WL1271_PSM_ILLEGAL = common dso_local global i64 0, align 8
@WL1271_PSM_ELP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_init_vif_specific(%struct.wl1271* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.conf_tx_ac_category*, align 8
  %8 = alloca %struct.conf_tx_tid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %6, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %30 = load i64, i64* @WL1271_PSM_CAM, align 8
  %31 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %29, i64 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %253

36:                                               ; preds = %28
  br label %74

37:                                               ; preds = %25, %2
  %38 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %73, label %50

50:                                               ; preds = %47
  %51 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* @WL1271_PSM_ILLEGAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %60, i64 %61)
  store i32 %62, i32* %10, align 4
  br label %67

63:                                               ; preds = %50
  %64 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %65 = load i64, i64* @WL1271_PSM_ELP, align 8
  %66 = call i32 @wl1271_acx_sleep_auth(%struct.wl1271* %64, i64 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %253

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %47, %42, %37
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %79 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %80 = call i32 @wl1271_ap_hw_init(%struct.wl1271* %78, %struct.wl12xx_vif* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %253

85:                                               ; preds = %77
  %86 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %87 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %88 = call i32 @wl12xx_init_ap_role(%struct.wl1271* %86, %struct.wl12xx_vif* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %253

93:                                               ; preds = %85
  br label %111

94:                                               ; preds = %74
  %95 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %97 = call i32 @wl1271_sta_hw_init(%struct.wl1271* %95, %struct.wl12xx_vif* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %3, align 4
  br label %253

102:                                              ; preds = %94
  %103 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %104 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %105 = call i32 @wl12xx_init_sta_role(%struct.wl1271* %103, %struct.wl12xx_vif* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %253

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %93
  %112 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %113 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %114 = call i32 @wl12xx_init_phy_vif_config(%struct.wl1271* %112, %struct.wl12xx_vif* %113)
  %115 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %121 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %119, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @BUG_ON(i32 %126)
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %209, %111
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %131 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %129, %134
  br i1 %135, label %136, label %212

136:                                              ; preds = %128
  %137 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %138 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 3
  %141 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %141, i64 %143
  store %struct.conf_tx_ac_category* %144, %struct.conf_tx_ac_category** %7, align 8
  %145 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %146 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %147 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %148 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %151 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %154 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %157 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.conf_tx_ac_category*, %struct.conf_tx_ac_category** %7, align 8
  %160 = getelementptr inbounds %struct.conf_tx_ac_category, %struct.conf_tx_ac_category* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @wl1271_acx_ac_cfg(%struct.wl1271* %145, %struct.wl12xx_vif* %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %136
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %3, align 4
  br label %253

167:                                              ; preds = %136
  %168 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %169 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %172, i64 %174
  store %struct.conf_tx_tid* %175, %struct.conf_tx_tid** %8, align 8
  %176 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %177 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %178 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %179 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %182 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %185 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %188 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %191 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %194 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.conf_tx_tid*, %struct.conf_tx_tid** %8, align 8
  %199 = getelementptr inbounds %struct.conf_tx_tid, %struct.conf_tx_tid* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @wl1271_acx_tid_cfg(%struct.wl1271* %176, %struct.wl12xx_vif* %177, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32 %197, i32 %202)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %167
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %3, align 4
  br label %253

208:                                              ; preds = %167
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  br label %128

212:                                              ; preds = %128
  %213 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %214 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %215 = call i32 @wl1271_acx_feature_cfg(%struct.wl1271* %213, %struct.wl12xx_vif* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %3, align 4
  br label %253

220:                                              ; preds = %212
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %225 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %226 = call i32 @wl1271_ap_hw_init_post_mem(%struct.wl1271* %224, %struct.ieee80211_vif* %225)
  store i32 %226, i32* %10, align 4
  br label %231

227:                                              ; preds = %220
  %228 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %229 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %230 = call i32 @wl1271_sta_hw_init_post_mem(%struct.wl1271* %228, %struct.ieee80211_vif* %229)
  store i32 %230, i32* %10, align 4
  br label %231

231:                                              ; preds = %227, %223
  %232 = load i32, i32* %10, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %3, align 4
  br label %253

236:                                              ; preds = %231
  %237 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %238 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %239 = call i32 @wl1271_set_ba_policies(%struct.wl1271* %237, %struct.wl12xx_vif* %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %236
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %3, align 4
  br label %253

244:                                              ; preds = %236
  %245 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %246 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %247 = call i32 @wlcore_hw_init_vif(%struct.wl1271* %245, %struct.wl12xx_vif* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = load i32, i32* %10, align 4
  store i32 %251, i32* %3, align 4
  br label %253

252:                                              ; preds = %244
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %252, %250, %242, %234, %218, %206, %165, %108, %100, %91, %83, %70, %34
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_acx_sleep_auth(%struct.wl1271*, i64) #1

declare dso_local i32 @wl1271_ap_hw_init(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_ap_role(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_sta_hw_init(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_sta_role(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl12xx_init_phy_vif_config(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @wl1271_acx_ac_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_tid_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_acx_feature_cfg(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ap_hw_init_post_mem(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_sta_hw_init_post_mem(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_set_ba_policies(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_hw_init_vif(%struct.wl1271*, %struct.wl12xx_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
