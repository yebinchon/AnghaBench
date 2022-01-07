; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_eeprom_enh_txp_read_element.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_eeprom_enh_txp_read_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_nvm_data = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32, i64 }
%struct.iwl_eeprom_enhanced_txpwr = type { i32, i64 }

@IWL_EEPROM_ENH_TXP_FL_BAND_52G = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IWL_EEPROM_ENH_TXP_FL_40MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_nvm_data*, %struct.iwl_eeprom_enhanced_txpwr*, i32, i64)* @iwl_eeprom_enh_txp_read_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_eeprom_enh_txp_read_element(%struct.iwl_nvm_data* %0, %struct.iwl_eeprom_enhanced_txpwr* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.iwl_nvm_data*, align 8
  %6 = alloca %struct.iwl_eeprom_enhanced_txpwr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_channel*, align 8
  store %struct.iwl_nvm_data* %0, %struct.iwl_nvm_data** %5, align 8
  store %struct.iwl_eeprom_enhanced_txpwr* %1, %struct.iwl_eeprom_enhanced_txpwr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IWL_EEPROM_ENH_TXP_FL_BAND_52G, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %73, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %24
  %29 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %29, i32 0, i32 0
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %31, i64 %33
  store %struct.ieee80211_channel* %34, %struct.ieee80211_channel** %11, align 8
  %35 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %6, align 8
  %36 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %73

48:                                               ; preds = %39, %28
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %73

55:                                               ; preds = %48
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.iwl_eeprom_enhanced_txpwr*, %struct.iwl_eeprom_enhanced_txpwr** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_eeprom_enhanced_txpwr, %struct.iwl_eeprom_enhanced_txpwr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IWL_EEPROM_ENH_TXP_FL_40MHZ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %61, %55
  br label %73

73:                                               ; preds = %72, %54, %47
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %24

76:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
