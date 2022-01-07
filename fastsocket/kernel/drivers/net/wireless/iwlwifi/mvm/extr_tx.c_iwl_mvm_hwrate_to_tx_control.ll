; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_hwrate_to_tx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_HT_MCS_GF_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@RATE_MCS_CHAN_WIDTH_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_HT_MCS_INDEX_MSK = common dso_local global i32 0, align 4
@RATE_MCS_VHT_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_RATE_CODE_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_MSK = common dso_local global i32 0, align 4
@RATE_VHT_MCS_NSS_POS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_tx_info*)* @iwl_mvm_hwrate_to_tx_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_hwrate_to_tx_control(i32 %0, %struct.ieee80211_tx_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %4, align 8
  %6 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %9, i64 0
  store %struct.ieee80211_tx_rate* %10, %struct.ieee80211_tx_rate** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %15 = ashr i32 %13, %14
  %16 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @RATE_HT_MCS_GF_MSK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %25 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @RATE_MCS_CHAN_WIDTH_MSK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %52 [
    i32 130, label %33
    i32 129, label %34
    i32 128, label %40
    i32 131, label %46
  ]

33:                                               ; preds = %29
  br label %52

34:                                               ; preds = %29
  %35 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %36 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %29
  %41 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %29
  %47 = load i32, i32* @IEEE80211_TX_RC_160_MHZ_WIDTH, align 4
  %48 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %29, %46, %40, %34, %33
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %70 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @RATE_HT_MCS_INDEX_MSK, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %110

79:                                               ; preds = %63
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @RATE_MCS_VHT_MSK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @RATE_VHT_MCS_RATE_CODE_MSK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @RATE_VHT_MCS_NSS_MSK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @RATE_VHT_MCS_NSS_POS, align 4
  %93 = ashr i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %85, i32 %88, i32 %94)
  %96 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %97 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %109

101:                                              ; preds = %79
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32 %102, i32 %105)
  %107 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %84
  br label %110

110:                                              ; preds = %109, %68
  ret void
}

declare dso_local i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate*, i32, i32) #1

declare dso_local i32 @iwl_mvm_legacy_rate_to_mac80211_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
