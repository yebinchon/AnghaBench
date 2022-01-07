; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_cts_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_cts_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_tx_rate = type { i32 }

@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ieee80211_tx_rate*)* @carl9170_tx_cts_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_cts_check(%struct.ar9170* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  %6 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %7 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %19 [
    i32 130, label %9
    i32 128, label %9
    i32 129, label %18
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %2, %17
  store i32 1, i32* %3, align 4
  br label %21

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %16
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
