; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_rateindex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_rateindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rate_priv = type { i32, i32*, %struct.ath_rate_table* }
%struct.ath_rate_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_rate_priv*, %struct.ieee80211_tx_rate*)* @ath_rc_get_rateindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_rc_get_rateindex(%struct.ath_rate_priv* %0, %struct.ieee80211_tx_rate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_rate_priv*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca %struct.ath_rate_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath_rate_priv* %0, %struct.ath_rate_priv** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  %10 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %10, i32 0, i32 2
  %12 = load %struct.ath_rate_table*, %struct.ath_rate_table** %11, align 8
  store %struct.ath_rate_table* %12, %struct.ath_rate_table** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %80

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %64, %23
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %27 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %39 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @WLAN_RC_PHY_HT(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %30
  %49 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %50 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %67

63:                                               ; preds = %48, %30
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %24

67:                                               ; preds = %62, %24
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %7, align 4
  %69 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %75, %67
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @WLAN_RC_PHY_HT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
