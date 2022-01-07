; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_calc_ht_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_sta_calc_ht_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.ieee80211_sta = type { i32, i32, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_sta_ht_cap = type { i64, i64, i32 }
%struct.iwl_rxon_context = type { i32 }

@STA_FLG_RTS_MIMO_PROT_MSK = common dso_local global i32 0, align 4
@STA_FLG_MIMO_DIS_MSK = common dso_local global i32 0, align 4
@STA_FLG_HT40_EN_MSK = common dso_local global i32 0, align 4
@STA_FLG_MAX_AGG_SIZE_MSK = common dso_local global i32 0, align 4
@STA_FLG_AGG_MPDU_DENSITY_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"STA %pM SM PS mode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid MIMO PS mode %d\0A\00", align 1
@STA_FLG_MAX_AGG_SIZE_POS = common dso_local global i32 0, align 4
@STA_FLG_AGG_MPDU_DENSITY_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.ieee80211_sta*, %struct.iwl_rxon_context*, i32*, i32*)* @iwl_sta_calc_ht_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_sta_calc_ht_flags(%struct.iwl_priv* %0, %struct.ieee80211_sta* %1, %struct.iwl_rxon_context* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.iwl_rxon_context* %2, %struct.iwl_rxon_context** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 2
  store %struct.ieee80211_sta_ht_cap* %13, %struct.ieee80211_sta_ht_cap** %11, align 8
  %14 = load i32, i32* @STA_FLG_RTS_MIMO_PROT_MSK, align 4
  %15 = load i32, i32* @STA_FLG_MIMO_DIS_MSK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STA_FLG_HT40_EN_MSK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @STA_FLG_MAX_AGG_SIZE_MSK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @STA_FLG_AGG_MPDU_DENSITY_MSK, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %10, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %26 = icmp ne %struct.ieee80211_sta* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %5
  br label %104

33:                                               ; preds = %27
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 130
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %42 ], [ %49, %43 ]
  %52 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %51)
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %67 [
    i32 128, label %56
    i32 130, label %61
    i32 129, label %66
  ]

56:                                               ; preds = %50
  %57 = load i32, i32* @STA_FLG_MIMO_DIS_MSK, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %73

61:                                               ; preds = %50
  %62 = load i32, i32* @STA_FLG_RTS_MIMO_PROT_MSK, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %73

66:                                               ; preds = %50
  br label %73

67:                                               ; preds = %50
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IWL_WARN(%struct.iwl_priv* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %66, %61, %56
  %74 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @STA_FLG_MAX_AGG_SIZE_POS, align 4
  %79 = shl i32 %77, %78
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %11, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @STA_FLG_AGG_MPDU_DENSITY_POS, align 4
  %89 = shl i32 %87, %88
  %90 = call i32 @cpu_to_le32(i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %95 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %97 = call i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv* %94, %struct.iwl_rxon_context* %95, %struct.ieee80211_sta* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %73
  %100 = load i32, i32* @STA_FLG_HT40_EN_MSK, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %32, %99, %73
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32, i8*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
