; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_sbands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-nvm-parse.c_iwl_init_sbands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_nvm_data = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32, i32* }

@NVM_CHANNELS = common dso_local global i64 0, align 8
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@iwl_cfg80211_rates = common dso_local global i32* null, align 8
@RATES_24_OFFS = common dso_local global i64 0, align 8
@N_RATES_24 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATES_52_OFFS = common dso_local global i64 0, align 8
@N_RATES_52 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"NVM: used only %d of %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*)* @iwl_init_sbands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_sbands(%struct.device* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iwl_cfg*, align 8
  %7 = alloca %struct.iwl_nvm_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %6, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %14 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* @NVM_CHANNELS, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @iwl_init_channel_map(%struct.device* %12, %struct.iwl_cfg* %13, %struct.iwl_nvm_data* %14, i32* %17)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %20, align 8
  %22 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %23 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %21, i64 %22
  store %struct.ieee80211_supported_band* %23, %struct.ieee80211_supported_band** %11, align 8
  %24 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %25 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %28 = load i64, i64* @RATES_24_OFFS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %30, i32 0, i32 4
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @N_RATES_24, align 4
  %33 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %34 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %36 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %39 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %35, %struct.ieee80211_supported_band* %36, i32 %37, i64 %38)
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %45 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %46 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %46, i32 0, i32 2
  %48 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %49 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg* %44, %struct.iwl_nvm_data* %45, i32* %47, i64 %48)
  %50 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %51 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %50, i32 0, i32 0
  %52 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %51, align 8
  %53 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %54 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %52, i64 %53
  store %struct.ieee80211_supported_band* %54, %struct.ieee80211_supported_band** %11, align 8
  %55 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %56 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %59 = load i64, i64* @RATES_52_OFFS, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* @N_RATES_52, align 4
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %67 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %70 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %66, %struct.ieee80211_supported_band* %67, i32 %68, i64 %69)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %76 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %77 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %78 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %77, i32 0, i32 2
  %79 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %80 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg* %75, %struct.iwl_nvm_data* %76, i32* %78, i64 %79)
  %81 = load %struct.iwl_cfg*, %struct.iwl_cfg** %6, align 8
  %82 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %7, align 8
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 1
  %85 = call i32 @iwl_init_vht_hw_capab(%struct.iwl_cfg* %81, %struct.iwl_nvm_data* %82, i32* %84)
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %4
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @IWL_ERR_DEV(%struct.device* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %4
  ret void
}

declare dso_local i32 @iwl_init_channel_map(%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*) #1

declare dso_local i64 @iwl_init_sband_channels(%struct.iwl_nvm_data*, %struct.ieee80211_supported_band*, i32, i64) #1

declare dso_local i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64) #1

declare dso_local i32 @iwl_init_vht_hw_capab(%struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*) #1

declare dso_local i32 @IWL_ERR_DEV(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
