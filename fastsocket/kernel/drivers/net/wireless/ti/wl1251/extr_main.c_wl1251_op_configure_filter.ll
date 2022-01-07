; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_configure_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 configure filter\00", align 1
@WL1251_SUPPORTED_FILTERS = common dso_local global i32 0, align 4
@WL1251_DEFAULT_RX_CONFIG = common dso_local global i32 0, align 4
@WL1251_DEFAULT_RX_FILTER = common dso_local global i32 0, align 4
@FIF_PROMISC_IN_BSS = common dso_local global i32 0, align 4
@CFG_BSSID_FILTER_EN = common dso_local global i32 0, align 4
@CFG_RX_ALL_GOOD = common dso_local global i32 0, align 4
@FIF_ALLMULTI = common dso_local global i32 0, align 4
@CFG_MC_FILTER_EN = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@CFG_RX_FCS_ERROR = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@CFG_SSID_FILTER_EN = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@CFG_RX_CTL_EN = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@CFG_RX_PREQ_EN = common dso_local global i32 0, align 4
@WL1251_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*, i32)* @wl1251_op_configure_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_configure_filter(%struct.ieee80211_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1251*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1251*, %struct.wl1251** %12, align 8
  store %struct.wl1251* %13, %struct.wl1251** %9, align 8
  %14 = load i32, i32* @DEBUG_MAC80211, align 4
  %15 = call i32 @wl1251_debug(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @WL1251_SUPPORTED_FILTERS, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @WL1251_SUPPORTED_FILTERS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %167

26:                                               ; preds = %4
  %27 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i32, i32* @WL1251_DEFAULT_RX_CONFIG, align 4
  %31 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %32 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @WL1251_DEFAULT_RX_FILTER, align 4
  %34 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %35 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FIF_PROMISC_IN_BSS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %26
  %42 = load i32, i32* @CFG_BSSID_FILTER_EN, align 4
  %43 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %44 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @CFG_RX_ALL_GOOD, align 4
  %48 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %49 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %41, %26
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FIF_ALLMULTI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @CFG_MC_FILTER_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %62 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %52
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FIF_FCSFAIL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* @CFG_RX_FCS_ERROR, align 4
  %73 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32, i32* @CFG_BSSID_FILTER_EN, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %87 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* @CFG_SSID_FILTER_EN, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %93 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %83, %77
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FIF_CONTROL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @CFG_RX_CTL_EN, align 4
  %104 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %105 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FIF_OTHER_BSS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %116 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @is_zero_ether_addr(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114, %108
  %121 = load i32, i32* @CFG_BSSID_FILTER_EN, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %124 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %114
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FIF_PROBE_REQ, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32, i32* @CFG_RX_PREQ_EN, align 4
  %135 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %136 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %141 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @WL1251_STATE_OFF, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %163

146:                                              ; preds = %139
  %147 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %148 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %163

152:                                              ; preds = %146
  %153 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %154 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %155 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %158 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @wl1251_acx_rx_config(%struct.wl1251* %153, i32 %156, i32 %159)
  %161 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %162 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %161)
  br label %163

163:                                              ; preds = %152, %151, %145
  %164 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %165 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %164, i32 0, i32 1
  %166 = call i32 @mutex_unlock(i32* %165)
  br label %167

167:                                              ; preds = %163, %25
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_rx_config(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
