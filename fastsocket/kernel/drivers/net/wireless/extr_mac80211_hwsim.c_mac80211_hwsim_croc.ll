; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_croc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_croc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"hwsim ROC canceled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mac80211_hwsim_croc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_croc(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.mac80211_hwsim_data*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 1
  %6 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %5, align 8
  store %struct.mac80211_hwsim_data* %6, %struct.mac80211_hwsim_data** %3, align 8
  %7 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %3, align 8
  %8 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %7, i32 0, i32 2
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %3, align 8
  %11 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %3, align 8
  %14 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %3, align 8
  %16 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @wiphy_debug(i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wiphy_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
