; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_prepare_tx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_prepare_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64 }
%struct.wl12xx_vif = type { i64, i64 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"discarding null skb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid hlid. dropping skb 0x%p\00", align 1
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1271_EXTRA_SPACE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@WL1271_CIPHER_SUITE_GEM = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, i64)* @wl1271_prepare_tx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_prepare_tx_frame(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %206

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %206

36:                                               ; preds = %27
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %38 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %37)
  store %struct.ieee80211_tx_info* %38, %struct.ieee80211_tx_info** %12, align 8
  %39 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %41 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %36
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %56 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @WL1271_EXTRA_SPACE_TKIP, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %54, %48, %36
  %66 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %71, label %125

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %19, align 8
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %71
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %87, %71
  %92 = phi i1 [ true, %71 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %98 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %19, align 8
  %101 = icmp ne i64 %99, %100
  br label %102

102:                                              ; preds = %96, %91
  %103 = phi i1 [ false, %91 ], [ %101, %96 ]
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %109 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %110 = load i64, i64* %19, align 8
  %111 = call i32 @wl1271_set_default_wep_key(%struct.wl1271* %108, %struct.wl12xx_vif* %109, i64 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %6, align 4
  br label %206

116:                                              ; preds = %107
  %117 = load i64, i64* %19, align 8
  %118 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %119 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %116, %102
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* @WL1271_CIPHER_SUITE_GEM, align 8
  %123 = icmp eq i64 %121, %122
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %120, %65
  %126 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %127 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @wl1271_tx_allocate(%struct.wl1271* %126, %struct.wl12xx_vif* %127, %struct.sk_buff* %128, i64 %129, i64 %130, i64 %131, i32 %132)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %6, align 4
  br label %206

138:                                              ; preds = %125
  %139 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %140 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %144 = load i64, i64* %11, align 8
  %145 = call i32 @wl1271_tx_fill_hdr(%struct.wl1271* %139, %struct.wl12xx_vif* %140, %struct.sk_buff* %141, i64 %142, %struct.ieee80211_tx_info* %143, i64 %144)
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %165, label %148

148:                                              ; preds = %138
  %149 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %150 = icmp ne %struct.wl12xx_vif* %149, null
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %153 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %160 = call i32 @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271* %158, %struct.sk_buff* %159)
  %161 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %162 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %163 = load i64, i64* %11, align 8
  %164 = call i32 @wl1271_tx_regulate_link(%struct.wl1271* %161, %struct.wl12xx_vif* %162, i64 %163)
  br label %165

165:                                              ; preds = %157, %151, %148, %138
  %166 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @wlcore_calc_packet_alignment(%struct.wl1271* %166, i64 %169)
  store i64 %170, i64* %15, align 8
  %171 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %172 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = add nsw i64 %173, %174
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %180 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @memcpy(i64 %175, i32 %178, i64 %181)
  %183 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %184 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %10, align 8
  %187 = add nsw i64 %185, %186
  %188 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %187, %190
  %192 = load i64, i64* %15, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %192, %195
  %197 = call i32 @memset(i64 %191, i32 0, i64 %196)
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %165
  %201 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %202 = call i32 @skb_pull(%struct.sk_buff* %201, i32 4)
  br label %203

203:                                              ; preds = %200, %165
  %204 = load i64, i64* %15, align 8
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %203, %136, %114, %31, %23
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_set_default_wep_key(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i32 @wl1271_tx_allocate(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, i64, i64, i32) #1

declare dso_local i32 @wl1271_tx_fill_hdr(%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i64, %struct.ieee80211_tx_info*, i64) #1

declare dso_local i32 @wl1271_tx_ap_update_inconnection_sta(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i32 @wl1271_tx_regulate_link(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i64 @wlcore_calc_packet_alignment(%struct.wl1271*, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
