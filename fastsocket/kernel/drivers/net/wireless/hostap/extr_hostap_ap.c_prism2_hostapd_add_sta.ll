; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_add_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/hostap/extr_hostap_ap.c_prism2_hostapd_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.prism2_hostapd_param = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sta_info = type { i32, i32, i32*, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_data*, %struct.prism2_hostapd_param*)* @prism2_hostapd_add_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_hostapd_add_sta(%struct.ap_data* %0, %struct.prism2_hostapd_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_data*, align 8
  %5 = alloca %struct.prism2_hostapd_param*, align 8
  %6 = alloca %struct.sta_info*, align 8
  store %struct.ap_data* %0, %struct.ap_data** %4, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %5, align 8
  %7 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %8 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %11 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %12 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %10, i32 %13)
  store %struct.sta_info* %14, %struct.sta_info** %6, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %16 = icmp ne %struct.sta_info* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 3
  %20 = call i32 @atomic_inc(i32* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %23 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = icmp eq %struct.sta_info* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %29 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %30 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sta_info* @ap_add_sta(%struct.ap_data* %28, i32 %31)
  store %struct.sta_info* %32, %struct.sta_info** %6, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = icmp eq %struct.sta_info* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %147

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %37
  %45 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %46 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %44
  %50 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %56 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %61 = call i32 @hostap_event_new_sta(i32 %59, %struct.sta_info* %60)
  br label %62

62:                                               ; preds = %54, %49, %44, %37
  %63 = load i32, i32* @WLAN_STA_AUTH, align 4
  %64 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %67 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @jiffies, align 4
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %74 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %81 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %88 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WLAN_RATE_1M, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %62
  %101 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 2, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %62
  %106 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %107 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @WLAN_RATE_2M, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %114 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 4, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %119 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @WLAN_RATE_5M5, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %117
  %125 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %126 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  store i32 11, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %117
  %130 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %131 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @WLAN_RATE_11M, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %138 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 22, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %129
  %142 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %143 = call i32 @prism2_check_tx_rates(%struct.sta_info* %142)
  %144 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %145 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %144, i32 0, i32 3
  %146 = call i32 @atomic_dec(i32* %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %35
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_add_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @hostap_event_new_sta(i32, %struct.sta_info*) #1

declare dso_local i32 @prism2_check_tx_rates(%struct.sta_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
