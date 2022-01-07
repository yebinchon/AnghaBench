; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_world_regdomain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_regd.c_ath_world_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.ath_regulatory = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ath_world_regdom_60_61_62 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@ath_world_regdom_63_65 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@ath_world_regdom_64 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@ath_world_regdom_66_69 = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@ath_world_regdom_67_68_6A_6C = common dso_local global %struct.ieee80211_regdomain zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_regdomain* (%struct.ath_regulatory*)* @ath_world_regdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_regdomain* @ath_world_regdomain(%struct.ath_regulatory* %0) #0 {
  %2 = alloca %struct.ieee80211_regdomain*, align 8
  %3 = alloca %struct.ath_regulatory*, align 8
  store %struct.ath_regulatory* %0, %struct.ath_regulatory** %3, align 8
  %4 = load %struct.ath_regulatory*, %struct.ath_regulatory** %3, align 8
  %5 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %14 [
    i32 96, label %9
    i32 97, label %9
    i32 98, label %9
    i32 99, label %10
    i32 101, label %10
    i32 100, label %11
    i32 102, label %12
    i32 105, label %12
    i32 103, label %13
    i32 104, label %13
    i32 106, label %13
    i32 108, label %13
  ]

9:                                                ; preds = %1, %1, %1
  store %struct.ieee80211_regdomain* @ath_world_regdom_60_61_62, %struct.ieee80211_regdomain** %2, align 8
  br label %17

10:                                               ; preds = %1, %1
  store %struct.ieee80211_regdomain* @ath_world_regdom_63_65, %struct.ieee80211_regdomain** %2, align 8
  br label %17

11:                                               ; preds = %1
  store %struct.ieee80211_regdomain* @ath_world_regdom_64, %struct.ieee80211_regdomain** %2, align 8
  br label %17

12:                                               ; preds = %1, %1
  store %struct.ieee80211_regdomain* @ath_world_regdom_66_69, %struct.ieee80211_regdomain** %2, align 8
  br label %17

13:                                               ; preds = %1, %1, %1, %1
  store %struct.ieee80211_regdomain* @ath_world_regdom_67_68_6A_6C, %struct.ieee80211_regdomain** %2, align 8
  br label %17

14:                                               ; preds = %1
  %15 = call i32 @WARN_ON(i32 1)
  %16 = call %struct.ieee80211_regdomain* (...) @ath_default_world_regdomain()
  store %struct.ieee80211_regdomain* %16, %struct.ieee80211_regdomain** %2, align 8
  br label %17

17:                                               ; preds = %14, %13, %12, %11, %10, %9
  %18 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %2, align 8
  ret %struct.ieee80211_regdomain* %18
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_regdomain* @ath_default_world_regdomain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
