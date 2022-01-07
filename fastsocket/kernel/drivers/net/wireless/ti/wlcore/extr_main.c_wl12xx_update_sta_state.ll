; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_update_sta_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_update_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i64, i32, i32, i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.wl1271_station = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_STATE_SENT = common dso_local global i32 0, align 4
@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32, i32)* @wl12xx_update_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_update_sta_state(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271_station*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %17 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.wl1271_station*
  store %struct.wl1271_station* %31, %struct.wl1271_station** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %46 = call i32 @wl12xx_sta_add(%struct.wl1271* %43, %struct.wl12xx_vif* %44, %struct.ieee80211_sta* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %219

51:                                               ; preds = %42
  %52 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %54 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %55 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %52, %struct.wl12xx_vif* %53, %struct.wl1271_station* %54, i32 1)
  br label %56

56:                                               ; preds = %51, %38, %34, %5
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %69 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %71 = call i32 @wl12xx_sta_remove(%struct.wl1271* %68, %struct.wl12xx_vif* %69, %struct.ieee80211_sta* %70)
  %72 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %74 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %75 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %72, %struct.wl12xx_vif* %73, %struct.wl1271_station* %74, i32 0)
  br label %76

76:                                               ; preds = %67, %63, %59, %56
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %86 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %87 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wl12xx_cmd_set_peer_state(%struct.wl1271* %84, %struct.wl12xx_vif* %85, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %219

94:                                               ; preds = %83
  %95 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %96, i32 0, i32 0
  %98 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %99 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wl1271_acx_set_ht_capabilities(%struct.wl1271* %95, i32* %97, i32 1, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %219

106:                                              ; preds = %94
  %107 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %108 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %109 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %110 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %107, %struct.wl12xx_vif* %108, %struct.wl1271_station* %109, i32 0)
  br label %111

111:                                              ; preds = %106, %79, %76
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %120 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %121 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %120, i32 0, i32 4
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  %123 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %124 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %125 = call i32 @wl12xx_set_authorized(%struct.wl1271* %123, %struct.wl12xx_vif* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  br label %219

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %114, %111
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %144 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %145 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %144, i32 0, i32 4
  %146 = call i32 @clear_bit(i32 %143, i32* %145)
  %147 = load i32, i32* @WLVIF_FLAG_STA_STATE_SENT, align 4
  %148 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %149 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %148, i32 0, i32 4
  %150 = call i32 @clear_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %142, %138, %134, %131
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %178

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %158, %154
  %163 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %164 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %167 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @test_bit(i64 %165, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %173 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %174 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @wl12xx_croc(%struct.wl1271* %172, i64 %175)
  br label %177

177:                                              ; preds = %171, %162
  br label %178

178:                                              ; preds = %177, %158, %151
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %218

185:                                              ; preds = %181
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %218

189:                                              ; preds = %185
  %190 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %191 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %194 = call i64 @find_first_bit(i32 %192, i64 %193)
  %195 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %189
  %198 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %199 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @WARN_ON(i32 %203)
  %205 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %206 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %207 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %208 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %211 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %214 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @wl12xx_roc(%struct.wl1271* %205, %struct.wl12xx_vif* %206, i64 %209, i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %197, %189
  br label %218

218:                                              ; preds = %217, %185, %181, %178
  store i32 0, i32* %6, align 4
  br label %219

219:                                              ; preds = %218, %128, %104, %92, %49
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local i32 @wl12xx_sta_add(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @wlcore_update_inconn_sta(%struct.wl1271*, %struct.wl12xx_vif*, %struct.wl1271_station*, i32) #1

declare dso_local i32 @wl12xx_sta_remove(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @wl12xx_cmd_set_peer_state(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_capabilities(%struct.wl1271*, i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_set_authorized(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i64) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl12xx_roc(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
