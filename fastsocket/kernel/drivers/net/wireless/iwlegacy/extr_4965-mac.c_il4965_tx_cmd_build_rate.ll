; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_tx_cmd_build_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.il_priv = type { i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.il_tx_cmd = type { i32, i32, i32, i64, i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }

@IL4965_DEFAULT_TX_RETRY = common dso_local global i32 0, align 4
@TX_CMD_FLG_STA_RATE_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@IEEE80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@il_rates = common dso_local global %struct.TYPE_8__* null, align 8
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32)* @il4965_tx_cmd_build_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_tx_cmd_build_rate(%struct.il_priv* %0, %struct.il_tx_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.il_priv*, align 8
  %7 = alloca %struct.il_tx_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %6, align 8
  store %struct.il_tx_cmd* %1, %struct.il_tx_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 60, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @ieee80211_is_probe_resp(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 3, i32* %14, align 4
  br label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @IL4965_DEFAULT_TX_RETRY, align 4
  store i32 %21, i32* %14, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @min(i32 %26, i32 60)
  %28 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @ieee80211_is_data(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %37 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %7, align 8
  %38 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %129

41:                                               ; preds = %22
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @RATE_COUNT_LEGACY, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62, %59, %41
  %67 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %68 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %75 = call i32 @rate_lowest_index(i32* %73, %struct.ieee80211_sta* %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %66, %62
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IEEE80211_BAND_5GHZ, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i64, i64* @IL_FIRST_OFDM_RATE, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @il_rates, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i32 0, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @IL_LAST_CCK_RATE, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %104 = load i32, i32* %12, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %98, %88
  %107 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %108 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %109 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %108, i32 0, i32 0
  %110 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %111 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @il4965_toggle_tx_ant(%struct.il_priv* %107, i32* %109, i32 %113)
  %115 = load %struct.il_priv*, %struct.il_priv** %6, align 8
  %116 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @BIT(i32 %117)
  %119 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @cpu_to_le32(i32 %125)
  %127 = load %struct.il_tx_cmd*, %struct.il_tx_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.il_tx_cmd, %struct.il_tx_cmd* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %129

129:                                              ; preds = %106, %33
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rate_lowest_index(i32*, %struct.ieee80211_sta*) #1

declare dso_local i32 @il4965_toggle_tx_ant(%struct.il_priv*, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
