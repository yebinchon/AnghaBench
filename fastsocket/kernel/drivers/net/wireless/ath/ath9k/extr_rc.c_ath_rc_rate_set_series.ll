; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_rate_set_series.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_rate_set_series.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rate_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ieee80211_tx_rate = type { i64, i32, i32 }
%struct.ieee80211_tx_rate_control = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_rate_table*, %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate_control*, i64, i64, i32)* @ath_rc_rate_set_series to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_rc_rate_set_series(%struct.ath_rate_table* %0, %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate_control* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ath_rate_table*, align 8
  %8 = alloca %struct.ieee80211_tx_rate*, align 8
  %9 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ath_rate_table* %0, %struct.ath_rate_table** %7, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %8, align 8
  store %struct.ieee80211_tx_rate_control* %2, %struct.ieee80211_tx_rate_control** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i64, i64* %10, align 8
  %14 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.ath_rate_table*, %struct.ath_rate_table** %7, align 8
  %17 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %6
  %33 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %34 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %29
  %39 = load %struct.ath_rate_table*, %struct.ath_rate_table** %7, align 8
  %40 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @WLAN_RC_PHY_HT(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %38
  %49 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %50 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ath_rate_table*, %struct.ath_rate_table** %7, align 8
  %55 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @WLAN_RC_PHY_40(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %48
  %64 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %9, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i64 @conf_is_ht40(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %72 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %63, %48
  %77 = load %struct.ath_rate_table*, %struct.ath_rate_table** %7, align 8
  %78 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @WLAN_RC_PHY_SGI(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %88 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %76
  br label %93

93:                                               ; preds = %92, %38
  ret void
}

declare dso_local i64 @WLAN_RC_PHY_HT(i32) #1

declare dso_local i64 @WLAN_RC_PHY_40(i32) #1

declare dso_local i64 @conf_is_ht40(i32*) #1

declare dso_local i64 @WLAN_RC_PHY_SGI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
