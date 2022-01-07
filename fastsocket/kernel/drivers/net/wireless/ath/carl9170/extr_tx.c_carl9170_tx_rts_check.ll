; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_rts_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_rts_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.ieee80211_tx_rate = type { i32 }

@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.ieee80211_tx_rate*, i32, i32)* @carl9170_tx_rts_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_rts_check(%struct.ar9170* %0, %struct.ieee80211_tx_rate* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca %struct.ieee80211_tx_rate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %36 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %27
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %37

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %4, %17
  %19 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %37

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %4, %26
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @likely(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %38

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %4, %35
  br label %37

37:                                               ; preds = %36, %25, %16
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
