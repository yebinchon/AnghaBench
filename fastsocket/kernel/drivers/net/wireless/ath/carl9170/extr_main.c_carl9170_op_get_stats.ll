; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_op_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ar9170* }
%struct.ar9170 = type { i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_low_level_stats*)* @carl9170_op_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_op_get_stats(%struct.ieee80211_hw* %0, %struct.ieee80211_low_level_stats* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_low_level_stats*, align 8
  %5 = alloca %struct.ar9170*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_low_level_stats* %1, %struct.ieee80211_low_level_stats** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.ar9170*, %struct.ar9170** %7, align 8
  store %struct.ar9170* %8, %struct.ar9170** %5, align 8
  %9 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %10 = call i32 @memset(%struct.ieee80211_low_level_stats* %9, i32 0, i32 8)
  %11 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %12 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %17 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.ieee80211_low_level_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
