; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_ampdu_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_ampdu_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"A-MPDU action on addr %pM tid %d\0A\00", align 1
@IL_SKU_N = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"start Rx\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stop Rx\0A\00", align 1
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"start Tx\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"stop Tx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_mac_ampdu_action(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.il_priv*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %9, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.il_priv*, %struct.il_priv** %19, align 8
  store %struct.il_priv* %20, %struct.il_priv** %16, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IL_SKU_N, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %93

39:                                               ; preds = %7
  %40 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %88 [
    i32 134, label %44
    i32 133, label %52
    i32 131, label %65
    i32 130, label %73
    i32 129, label %73
    i32 128, label %73
    i32 132, label %87
  ]

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @il4965_sta_rx_agg_start(%struct.il_priv* %46, %struct.ieee80211_sta* %47, i32 %48, i32 %50)
  store i32 %51, i32* %17, align 4
  br label %88

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @il4965_sta_rx_agg_stop(%struct.il_priv* %54, %struct.ieee80211_sta* %55, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* @S_EXIT_PENDING, align 4
  %59 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %60 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %59, i32 0, i32 1
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %63, %52
  br label %88

65:                                               ; preds = %39
  %66 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @il4965_tx_agg_start(%struct.il_priv* %67, %struct.ieee80211_vif* %68, %struct.ieee80211_sta* %69, i32 %70, i32* %71)
  store i32 %72, i32* %17, align 4
  br label %88

73:                                               ; preds = %39, %39, %39
  %74 = call i32 (i8*, ...) @D_HT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @il4965_tx_agg_stop(%struct.il_priv* %75, %struct.ieee80211_vif* %76, %struct.ieee80211_sta* %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* @S_EXIT_PENDING, align 4
  %81 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 1
  %83 = call i32 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %85, %73
  br label %88

87:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %39, %87, %86, %65, %64, %44
  %89 = load %struct.il_priv*, %struct.il_priv** %16, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %88, %36
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32 @D_HT(i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @il4965_sta_rx_agg_start(%struct.il_priv*, %struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @il4965_sta_rx_agg_stop(%struct.il_priv*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_tx_agg_start(%struct.il_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32*) #1

declare dso_local i32 @il4965_tx_agg_stop(%struct.il_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
