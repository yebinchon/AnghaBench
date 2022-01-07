; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_hw_dyn_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_get_hw_dyn_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.carl9170_phy_freq_params* }
%struct.carl9170_phy_freq_params = type { i32 }
%struct.ieee80211_channel = type { i32, i64 }

@carl9170_phy_freq_params = common dso_local global %struct.TYPE_3__* null, align 8
@__CARL9170_NUM_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carl9170_phy_freq_params* (%struct.ieee80211_channel*, i32)* @carl9170_get_hw_dyn_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carl9170_phy_freq_params* @carl9170_get_hw_dyn_params(%struct.ieee80211_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 2412, i64* %6, align 8
  %7 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %8 = icmp ne %struct.ieee80211_channel* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @carl9170_phy_freq_params, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp uge i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* @__CARL9170_NUM_BW, align 4
  %24 = icmp ne i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @carl9170_phy_freq_params, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @carl9170_phy_freq_params, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load %struct.carl9170_phy_freq_params*, %struct.carl9170_phy_freq_params** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.carl9170_phy_freq_params, %struct.carl9170_phy_freq_params* %42, i64 %44
  ret %struct.carl9170_phy_freq_params* %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
