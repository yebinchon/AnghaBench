; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sbands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_sbands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iwl_cfg = type { i32 }
%struct.iwl_nvm_data = type { %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i64, i32, i32, i32* }

@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@iwl_cfg80211_rates = common dso_local global i32* null, align 8
@RATES_24_OFFS = common dso_local global i64 0, align 8
@N_RATES_24 = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RATES_52_OFFS = common dso_local global i64 0, align 8
@N_RATES_52 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EEPROM: used only %d of %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64)* @iwl_init_sbands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_init_sbands(%struct.device* %0, %struct.iwl_cfg* %1, %struct.iwl_nvm_data* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.iwl_cfg*, align 8
  %8 = alloca %struct.iwl_nvm_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %7, align 8
  store %struct.iwl_nvm_data* %2, %struct.iwl_nvm_data** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %16 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @iwl_init_channel_map(%struct.device* %14, %struct.iwl_cfg* %15, %struct.iwl_nvm_data* %16, i32* %17, i64 %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %20, i32 0, i32 0
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %21, align 8
  %23 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %24 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %22, i64 %23
  store %struct.ieee80211_supported_band* %24, %struct.ieee80211_supported_band** %13, align 8
  %25 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %26 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %27 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %29 = load i64, i64* @RATES_24_OFFS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %31, i32 0, i32 3
  store i32* %30, i32** %32, align 8
  %33 = load i32, i32* @N_RATES_24, align 4
  %34 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %35 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %37 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %40 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %36, %struct.ieee80211_supported_band* %37, i32 %38, i64 %39)
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %46 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %48 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %47, i32 0, i32 1
  %49 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %50 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg* %45, %struct.iwl_nvm_data* %46, i32* %48, i64 %49)
  %51 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %52 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %51, i32 0, i32 0
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %52, align 8
  %54 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %55 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %53, i64 %54
  store %struct.ieee80211_supported_band* %55, %struct.ieee80211_supported_band** %13, align 8
  %56 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %57 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %58 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32*, i32** @iwl_cfg80211_rates, align 8
  %60 = load i64, i64* @RATES_52_OFFS, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %63 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* @N_RATES_52, align 4
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %66 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %71 = call i64 @iwl_init_sband_channels(%struct.iwl_nvm_data* %67, %struct.ieee80211_supported_band* %68, i32 %69, i64 %70)
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.iwl_cfg*, %struct.iwl_cfg** %7, align 8
  %77 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %8, align 8
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %79 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %78, i32 0, i32 1
  %80 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %81 = call i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg* %76, %struct.iwl_nvm_data* %77, i32* %79, i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %5
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @IWL_ERR_DEV(%struct.device* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %5
  ret void
}

declare dso_local i32 @iwl_init_channel_map(%struct.device*, %struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64) #1

declare dso_local i64 @iwl_init_sband_channels(%struct.iwl_nvm_data*, %struct.ieee80211_supported_band*, i32, i64) #1

declare dso_local i32 @iwl_init_ht_hw_capab(%struct.iwl_cfg*, %struct.iwl_nvm_data*, i32*, i64) #1

declare dso_local i32 @IWL_ERR_DEV(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
