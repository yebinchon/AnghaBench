; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.ath5k_hw* }
%struct.ieee80211_conf = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ath5k_hw = type { i32, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_RETRY_LIMITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @ath5k_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 1
  %11 = load %struct.ath5k_hw*, %struct.ath5k_hw** %10, align 8
  store %struct.ath5k_hw* %11, %struct.ath5k_hw** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %23 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ath5k_chan_set(%struct.ath5k_hw* %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %97

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %39 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %37
  %47 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %54 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @ath5k_hw_set_txpower_limit(%struct.ath5k_hw* %53, i32 %57)
  br label %59

59:                                               ; preds = %46, %37, %32
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IEEE80211_CONF_CHANGE_RETRY_LIMITS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %59
  %65 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %69 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %74 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %87, %64
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %78 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %84, i32 %85)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %75

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %59
  %92 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %93 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %94 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %30
  %98 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %99 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath5k_chan_set(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_txpower_limit(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @ath5k_hw_set_antenna_mode(%struct.ath5k_hw*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
