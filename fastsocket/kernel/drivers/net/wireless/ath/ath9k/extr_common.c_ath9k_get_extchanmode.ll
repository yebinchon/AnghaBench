; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_get_extchanmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_common.c_ath9k_get_extchanmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@CHANNEL_G_HT20 = common dso_local global i32 0, align 4
@CHANNEL_G_HT40PLUS = common dso_local global i32 0, align 4
@CHANNEL_G_HT40MINUS = common dso_local global i32 0, align 4
@CHANNEL_A_HT20 = common dso_local global i32 0, align 4
@CHANNEL_A_HT40PLUS = common dso_local global i32 0, align 4
@CHANNEL_A_HT40MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*, i32)* @ath9k_get_extchanmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_get_extchanmode(%struct.ieee80211_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 133, label %9
    i32 132, label %18
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 131, label %11
    i32 129, label %13
    i32 130, label %15
  ]

11:                                               ; preds = %9, %9
  %12 = load i32, i32* @CHANNEL_G_HT20, align 4
  store i32 %12, i32* %5, align 4
  br label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @CHANNEL_G_HT40PLUS, align 4
  store i32 %14, i32* %5, align 4
  br label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @CHANNEL_G_HT40MINUS, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %9, %15, %13, %11
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %26 [
    i32 128, label %20
    i32 131, label %20
    i32 129, label %22
    i32 130, label %24
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* @CHANNEL_A_HT20, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @CHANNEL_A_HT40PLUS, align 4
  store i32 %23, i32* %5, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CHANNEL_A_HT40MINUS, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %18, %24, %22, %20
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %26, %17
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
