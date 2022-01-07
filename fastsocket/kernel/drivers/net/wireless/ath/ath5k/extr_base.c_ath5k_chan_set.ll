; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_chan_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_chan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@ATH5K_DEBUG_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"channel set, resetting (%u -> %u MHz)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath5k_chan_set(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  %5 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %6 = load i32, i32* @ATH5K_DEBUG_RESET, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ATH5K_DBG(%struct.ath5k_hw* %5, i32 %6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %18 = call i32 @ath5k_reset(%struct.ath5k_hw* %16, %struct.ieee80211_channel* %17, i32 1)
  ret i32 %18
}

declare dso_local i32 @ATH5K_DBG(%struct.ath5k_hw*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath5k_reset(%struct.ath5k_hw*, %struct.ieee80211_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
