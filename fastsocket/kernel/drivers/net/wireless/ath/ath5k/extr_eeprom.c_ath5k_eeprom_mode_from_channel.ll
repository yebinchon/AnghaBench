; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_mode_from_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_eeprom.c_ath5k_eeprom_mode_from_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32 }
%struct.ieee80211_channel = type { i32 }

@AR5K_EEPROM_MODE_11A = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11G = common dso_local global i32 0, align 4
@AR5K_EEPROM_MODE_11B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"channel is not A/B/G!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_eeprom_mode_from_channel(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 130, label %9
    i32 128, label %11
    i32 129, label %13
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @AR5K_EEPROM_MODE_11A, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @AR5K_EEPROM_MODE_11G, align 4
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @AR5K_EEPROM_MODE_11B, align 4
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %17 = call i32 @ATH5K_WARN(%struct.ath5k_hw* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @AR5K_EEPROM_MODE_11A, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %13, %11, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @ATH5K_WARN(%struct.ath5k_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
