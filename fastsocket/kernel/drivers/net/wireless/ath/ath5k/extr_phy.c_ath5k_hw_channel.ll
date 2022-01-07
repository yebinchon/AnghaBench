; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"channel frequency (%u MHz) out of supported band range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR5K_PHY_CCKTXCTL = common dso_local global i32 0, align 4
@AR5K_PHY_CCKTXCTL_JAPAN = common dso_local global i32 0, align 4
@AR5K_PHY_CCKTXCTL_WORLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, %struct.ieee80211_channel*)* @ath5k_hw_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_channel(%struct.ath5k_hw* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %9 = call i32 @ath5k_channel_ok(%struct.ath5k_hw* %7, %struct.ieee80211_channel* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ATH5K_ERR(%struct.ath5k_hw* %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %27
    i32 131, label %31
    i32 130, label %31
  ]

23:                                               ; preds = %19
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %26 = call i32 @ath5k_hw_rf5110_channel(%struct.ath5k_hw* %24, %struct.ieee80211_channel* %25)
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %19
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %30 = call i32 @ath5k_hw_rf5111_channel(%struct.ath5k_hw* %28, %struct.ieee80211_channel* %29)
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %19, %19
  %32 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %34 = call i32 @ath5k_hw_rf2425_channel(%struct.ath5k_hw* %32, %struct.ieee80211_channel* %33)
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %38 = call i32 @ath5k_hw_rf5112_channel(%struct.ath5k_hw* %36, %struct.ieee80211_channel* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %39
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %46 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2484
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %51 = load i32, i32* @AR5K_PHY_CCKTXCTL, align 4
  %52 = load i32, i32* @AR5K_PHY_CCKTXCTL_JAPAN, align 4
  %53 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %50, i32 %51, i32 %52)
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %56 = load i32, i32* @AR5K_PHY_CCKTXCTL, align 4
  %57 = load i32, i32* @AR5K_PHY_CCKTXCTL_WORLD, align 4
  %58 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %61, i32 0, i32 1
  store %struct.ieee80211_channel* %60, %struct.ieee80211_channel** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %42, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ath5k_channel_ok(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ATH5K_ERR(%struct.ath5k_hw*, i8*, i32) #1

declare dso_local i32 @ath5k_hw_rf5110_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_rf5111_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_rf2425_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ath5k_hw_rf5112_channel(%struct.ath5k_hw*, %struct.ieee80211_channel*) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
