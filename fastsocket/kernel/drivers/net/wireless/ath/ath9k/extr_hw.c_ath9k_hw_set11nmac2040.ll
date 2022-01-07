; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set11nmac2040.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_set11nmac2040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_conf }

@AR_2040_JOINED_RX_CLEAR = common dso_local global i64 0, align 8
@AR_2040_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_set11nmac2040(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ieee80211_conf*, align 8
  %4 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.TYPE_6__* @ath9k_hw_common(%struct.ath_hw* %5)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ieee80211_conf* %9, %struct.ieee80211_conf** %3, align 8
  %10 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %3, align 8
  %11 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* @AR_2040_JOINED_RX_CLEAR, align 8
  store i64 %20, i64* %4, align 8
  br label %22

21:                                               ; preds = %13, %1
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %21, %19
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = load i32, i32* @AR_2040_MODE, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %23, i32 %24, i64 %25)
  ret void
}

declare dso_local %struct.TYPE_6__* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
