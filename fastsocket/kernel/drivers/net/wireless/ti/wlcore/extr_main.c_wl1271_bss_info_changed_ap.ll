; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_ap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_bss_info_changed_ap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.wl12xx_vif = type { i32, i32, i32, i32 }

@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"AP rate policy change failed %d\00", align 1
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@WLVIF_FLAG_AP_STARTED = common dso_local global i32 0, align 4
@DEBUG_AP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"started AP\00", align 1
@WLVIF_FLAG_AP_PROBE_RESP_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"stopped AP\00", align 1
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_20_NOHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Set ht information failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_bss_info_changed_ap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_bss_info_changed_ap(%struct.wl1271* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %12)
  store %struct.wl12xx_vif* %13, %struct.wl12xx_vif** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wl1271_tx_enabled_rates_get(%struct.wl1271* %22, i32 %23, i32 %26)
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %29 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %31 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %32 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %30, i32 %33)
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %36 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %39 = call i32 @wl1271_init_ap_rates(%struct.wl1271* %37, %struct.wl12xx_vif* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %178

45:                                               ; preds = %18
  %46 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = call i32 @wl1271_ap_init_templates(%struct.wl1271* %46, %struct.ieee80211_vif* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %178

52:                                               ; preds = %45
  %53 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %54 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %55 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %58 = call i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271* %53, i32 %56, %struct.ieee80211_vif* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %178

62:                                               ; preds = %52
  %63 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %64 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %65 = call i32 @wlcore_set_beacon_template(%struct.wl1271* %63, %struct.ieee80211_vif* %64, i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %178

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %4
  %71 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %72 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %73 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @wl1271_bss_beacon_info_changed(%struct.wl1271* %71, %struct.ieee80211_vif* %72, %struct.ieee80211_bss_conf* %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %178

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %143

84:                                               ; preds = %79
  %85 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %117

89:                                               ; preds = %84
  %90 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %91 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %92 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %91, i32 0, i32 0
  %93 = call i64 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %89
  %96 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %98 = call i32 @wl12xx_cmd_role_start_ap(%struct.wl1271* %96, %struct.wl12xx_vif* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %178

102:                                              ; preds = %95
  %103 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %104 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %105 = call i32 @wl1271_ap_init_hwenc(%struct.wl1271* %103, %struct.wl12xx_vif* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %178

109:                                              ; preds = %102
  %110 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %111 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %112 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %111, i32 0, i32 0
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  %114 = load i32, i32* @DEBUG_AP, align 4
  %115 = call i32 @wl1271_debug(i32 %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %109, %89
  br label %142

117:                                              ; preds = %84
  %118 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %119 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %120 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %119, i32 0, i32 0
  %121 = call i64 @test_bit(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %117
  %124 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %125 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %126 = call i32 @wl12xx_cmd_role_stop_ap(%struct.wl1271* %124, %struct.wl12xx_vif* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %178

130:                                              ; preds = %123
  %131 = load i32, i32* @WLVIF_FLAG_AP_STARTED, align 4
  %132 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %133 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %132, i32 0, i32 0
  %134 = call i32 @clear_bit(i32 %131, i32* %133)
  %135 = load i32, i32* @WLVIF_FLAG_AP_PROBE_RESP_SET, align 4
  %136 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %137 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %136, i32 0, i32 0
  %138 = call i32 @clear_bit(i32 %135, i32* %137)
  %139 = load i32, i32* @DEBUG_AP, align 4
  %140 = call i32 @wl1271_debug(i32 %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %130, %117
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %79
  %144 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %145 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %146 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @wl1271_bss_erp_info_changed(%struct.wl1271* %144, %struct.ieee80211_vif* %145, %struct.ieee80211_bss_conf* %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %178

152:                                              ; preds = %143
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @BSS_CHANGED_HT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %159 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NL80211_CHAN_WIDTH_20_NOHT, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %157
  %165 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %166 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %9, align 8
  %167 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %168 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @wl1271_acx_set_ht_information(%struct.wl1271* %165, %struct.wl12xx_vif* %166, i32 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %178

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %157, %152
  br label %178

178:                                              ; preds = %177, %173, %151, %129, %108, %101, %78, %68, %61, %51, %42
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_tx_enabled_rates_get(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_init_ap_rates(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_error(i8*, i32) #1

declare dso_local i32 @wl1271_ap_init_templates(%struct.wl1271*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_ap_set_probe_resp_tmpl(%struct.wl1271*, i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @wlcore_set_beacon_template(%struct.wl1271*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @wl1271_bss_beacon_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_cmd_role_start_ap(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_ap_init_hwenc(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl12xx_cmd_role_stop_ap(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wl1271_bss_erp_info_changed(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_information(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
