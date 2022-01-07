; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_vht_hw_capab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_vht_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.iwl_cfg = type { i64 }
%struct.iwl_nvm_data = type { i32 }
%struct.ieee80211_sta_vht_cap = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_1 = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_cfg*, %struct.iwl_nvm_data*, %struct.ieee80211_sta_vht_cap*)* @iwl_init_vht_hw_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_vht_hw_capab(%struct.iwl_cfg* %0, %struct.iwl_nvm_data* %1, %struct.ieee80211_sta_vht_cap* %2) #0 {
  %4 = alloca %struct.iwl_cfg*, align 8
  %5 = alloca %struct.iwl_nvm_data*, align 8
  %6 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  store %struct.iwl_cfg* %0, %struct.iwl_cfg** %4, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %5, align 8
  store %struct.ieee80211_sta_vht_cap* %2, %struct.ieee80211_sta_vht_cap** %6, align 8
  %7 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %10 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IEEE80211_VHT_CAP_SU_BEAMFORMEE_CAPABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT, align 4
  %15 = shl i32 7, %14
  %16 = or i32 %13, %15
  %17 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* @IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_7991, align 4
  %23 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %29 = shl i32 %28, 0
  %30 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  %31 = shl i32 %30, 2
  %32 = or i32 %29, %31
  %33 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %34 = shl i32 %33, 4
  %35 = or i32 %32, %34
  %36 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %37 = shl i32 %36, 6
  %38 = or i32 %35, %37
  %39 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %38, %40
  %42 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %43 = shl i32 %42, 10
  %44 = or i32 %41, %43
  %45 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %46 = shl i32 %45, 12
  %47 = or i32 %44, %46
  %48 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %49 = shl i32 %48, 14
  %50 = or i32 %47, %49
  %51 = call i32 @cpu_to_le16(i32 %50)
  %52 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %56 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %64, label %59

59:                                               ; preds = %27
  %60 = load %struct.iwl_cfg*, %struct.iwl_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59, %27
  %65 = load i32, i32* @IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN, align 4
  %66 = load i32, i32* @IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %73 = shl i32 %72, 2
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %64, %59
  %81 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %82 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %6, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
