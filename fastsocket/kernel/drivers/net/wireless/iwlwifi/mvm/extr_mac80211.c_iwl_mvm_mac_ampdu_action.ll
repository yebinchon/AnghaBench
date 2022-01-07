; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_mvm = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"A-MPDU action on addr %pM tid %d: action %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@IWL_DISABLE_HT_RXAGG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IWL_DISABLE_HT_TXAGG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_sta*, i32, i32*, i32)* @iwl_mvm_mac_ampdu_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.iwl_mvm*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %19 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %18)
  store %struct.iwl_mvm* %19, %struct.iwl_mvm** %16, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @IWL_DEBUG_HT(%struct.iwl_mvm* %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @EACCES, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %104

36:                                               ; preds = %7
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %95 [
    i32 134, label %41
    i32 133, label %56
    i32 131, label %61
    i32 130, label %76
    i32 129, label %82
    i32 128, label %82
    i32 132, label %88
  ]

41:                                               ; preds = %36
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %43 = load i32, i32* @IWL_DISABLE_HT_RXAGG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %17, align 4
  br label %99

49:                                               ; preds = %41
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm* %50, %struct.ieee80211_sta* %51, i32 %52, i32 %54, i32 1)
  store i32 %55, i32* %17, align 4
  br label %99

56:                                               ; preds = %36
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm* %57, %struct.ieee80211_sta* %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %17, align 4
  br label %99

61:                                               ; preds = %36
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %63 = load i32, i32* @IWL_DISABLE_HT_TXAGG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %17, align 4
  br label %99

69:                                               ; preds = %61
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm* %70, %struct.ieee80211_vif* %71, %struct.ieee80211_sta* %72, i32 %73, i32* %74)
  store i32 %75, i32* %17, align 4
  br label %99

76:                                               ; preds = %36
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @iwl_mvm_sta_tx_agg_stop(%struct.iwl_mvm* %77, %struct.ieee80211_vif* %78, %struct.ieee80211_sta* %79, i32 %80)
  store i32 %81, i32* %17, align 4
  br label %99

82:                                               ; preds = %36, %36
  %83 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @iwl_mvm_sta_tx_agg_flush(%struct.iwl_mvm* %83, %struct.ieee80211_vif* %84, %struct.ieee80211_sta* %85, i32 %86)
  store i32 %87, i32* %17, align 4
  br label %99

88:                                               ; preds = %36
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %90 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @iwl_mvm_sta_tx_agg_oper(%struct.iwl_mvm* %89, %struct.ieee80211_vif* %90, %struct.ieee80211_sta* %91, i32 %92, i32 %93)
  store i32 %94, i32* %17, align 4
  br label %99

95:                                               ; preds = %36
  %96 = call i32 @WARN_ON_ONCE(i32 1)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %95, %88, %82, %76, %69, %66, %56, %49, %46
  %100 = load %struct.iwl_mvm*, %struct.iwl_mvm** %16, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %17, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %33
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_HT(%struct.iwl_mvm*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_start(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_stop(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_flush(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @iwl_mvm_sta_tx_agg_oper(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
