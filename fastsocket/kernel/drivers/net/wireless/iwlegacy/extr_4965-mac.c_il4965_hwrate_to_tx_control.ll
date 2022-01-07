; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hwrate_to_tx_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hwrate_to_tx_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }

@RATE_MCS_ANT_ABC_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@RATE_MCS_HT_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_MCS_GF_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@RATE_MCS_HT40_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_MCS_DUP_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@RATE_MCS_SGI_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il4965_hwrate_to_tx_control(%struct.il_priv* %0, i32 %1, %struct.ieee80211_tx_info* %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %6, align 8
  %8 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %10, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %11, i64 0
  store %struct.ieee80211_tx_rate* %12, %struct.ieee80211_tx_rate** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RATE_MCS_ANT_ABC_MSK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %17 = ashr i32 %15, %16
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RATE_MCS_HT_MSK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %27 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RATE_MCS_GF_MSK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %38 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RATE_MCS_HT40_MSK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %49 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @RATE_MCS_DUP_MSK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %60 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @RATE_MCS_SGI_MSK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %71 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @il4965_hwrate_to_mac80211_idx(i32 %76, i32 %79)
  %81 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  ret void
}

declare dso_local i32 @il4965_hwrate_to_mac80211_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
