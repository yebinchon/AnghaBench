; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_mod_ht40_chan_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_mod_ht40_chan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iwl_nvm_data = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64, i32 }
%struct.iwl_eeprom_channel = type { i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"HT40 Ch. %d [%sGHz] %s%s%s%s%s(0x%02x %ddBm): Ad-Hoc %ssupported\0A\00", align 1
@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@IBSS = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@RADAR = common dso_local global i32 0, align 4
@WIDE = common dso_local global i32 0, align 4
@DFS = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_IBSS = common dso_local global i32 0, align 4
@EEPROM_CHANNEL_RADAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@EEPROM_CHANNEL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.iwl_nvm_data*, i32, i32, i64, %struct.iwl_eeprom_channel*, i32)* @iwl_mod_ht40_chan_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mod_ht40_chan_info(%struct.device* %0, %struct.iwl_nvm_data* %1, i32 %2, i32 %3, i64 %4, %struct.iwl_eeprom_channel* %5, i32 %6) #0 {
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.iwl_nvm_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.iwl_eeprom_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_channel*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.iwl_eeprom_channel* %5, %struct.iwl_eeprom_channel** %13, align 8
  store i32 %6, i32* %14, align 4
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %15, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %52, %7
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %23 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %23, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i64 %26
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %52

33:                                               ; preds = %21
  %34 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %35 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %34, i32 0, i32 0
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i64 %38
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %52

45:                                               ; preds = %33
  %46 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %46, i32 0, i32 0
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %47, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i64 %50
  store %struct.ieee80211_channel* %51, %struct.ieee80211_channel** %15, align 8
  br label %55

52:                                               ; preds = %44, %32
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %17

55:                                               ; preds = %45, %17
  %56 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %57 = icmp ne %struct.ieee80211_channel* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %115

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %67 = load i32, i32* @IBSS, align 4
  %68 = call i32 @CHECK_AND_PRINT(i32 %67)
  %69 = load i32, i32* @ACTIVE, align 4
  %70 = call i32 @CHECK_AND_PRINT(i32 %69)
  %71 = load i32, i32* @RADAR, align 4
  %72 = call i32 @CHECK_AND_PRINT(i32 %71)
  %73 = load i32, i32* @WIDE, align 4
  %74 = call i32 @CHECK_AND_PRINT(i32 %73)
  %75 = load i32, i32* @DFS, align 4
  %76 = call i32 @CHECK_AND_PRINT(i32 %75)
  %77 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %13, align 8
  %78 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %13, align 8
  %81 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %13, align 8
  %84 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @EEPROM_CHANNEL_IBSS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %59
  %90 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %13, align 8
  %91 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @EEPROM_CHANNEL_RADAR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %89, %59
  %98 = phi i1 [ false, %59 ], [ %96, %89 ]
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %101 = call i32 @IWL_DEBUG_EEPROM(%struct.device* %60, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %61, i8* %66, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %79, i32 %82, i8* %100)
  %102 = load %struct.iwl_eeprom_channel*, %struct.iwl_eeprom_channel** %13, align 8
  %103 = getelementptr inbounds %struct.iwl_eeprom_channel, %struct.iwl_eeprom_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @EEPROM_CHANNEL_VALID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %97
  %109 = load i32, i32* %14, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %112 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %58, %108, %97
  ret void
}

declare dso_local i32 @IWL_DEBUG_EEPROM(%struct.device*, i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @CHECK_AND_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
