; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_bss_info_changed_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64 }
%struct.iwl_mvm_vif = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to update MAC %pM\0A\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to update quotas\0A\00", align 1
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to remove AP station\0A\00", align 1
@BSS_CHANGED_DTIM_PERIOD = common dso_local global i32 0, align 4
@BSS_CHANGED_PS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Currently %d interfaces active\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to update power mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @iwl_mvm_bss_info_changed_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bss_info_changed_station(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %9, align 8
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm* %13, %struct.ieee80211_vif* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %24
  %30 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %37 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %35, %struct.ieee80211_vif* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %42 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %121

43:                                               ; preds = %34
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = call i32 @iwl_mvm_bt_coex_vif_assoc(%struct.iwl_mvm* %44, %struct.ieee80211_vif* %45)
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %49 = call i32 @iwl_mvm_configure_mcast_filter(%struct.iwl_mvm* %47, %struct.ieee80211_vif* %48)
  br label %81

50:                                               ; preds = %29
  %51 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %52 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %59 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @iwl_mvm_rm_sta_id(%struct.iwl_mvm* %57, %struct.ieee80211_vif* %58, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %67 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %56
  %69 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %70 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %73 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %72, %struct.ieee80211_vif* null)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %78 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %68
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %43
  br label %121

82:                                               ; preds = %24
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @BSS_CHANGED_DTIM_PERIOD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %89 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %90 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %90, i32 0, i32 1
  %92 = call i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm* %88, %struct.iwl_mvm_vif* %89, i32* %91)
  br label %120

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BSS_CHANGED_PS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %110 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %111 = call i32 @iwl_mvm_power_update_mode(%struct.iwl_mvm* %109, %struct.ieee80211_vif* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %116 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %93
  br label %120

120:                                              ; preds = %119, %87
  br label %121

121:                                              ; preds = %40, %120, %81
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_changed(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_bt_coex_vif_assoc(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_configure_mcast_filter(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_rm_sta_id(%struct.iwl_mvm*, %struct.ieee80211_vif*, i64) #1

declare dso_local i32 @iwl_mvm_remove_time_event(%struct.iwl_mvm*, %struct.iwl_mvm_vif*, i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @iwl_mvm_power_update_mode(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
