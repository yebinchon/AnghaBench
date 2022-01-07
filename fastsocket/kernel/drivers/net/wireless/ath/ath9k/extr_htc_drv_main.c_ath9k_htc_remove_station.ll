; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_remove_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, i32, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i64, i64 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_vif = type { i64 }
%struct.ath9k_htc_sta = type { i32 }

@WMI_NODE_REMOVE_CMDID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to remove station entry for: %pM\0A\00", align 1
@CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Removed a station entry for: %pM (idx: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Removed a station entry for VIF %d (idx: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @ath9k_htc_remove_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_remove_station(%struct.ath9k_htc_priv* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_htc_vif*, align 8
  %10 = alloca %struct.ath9k_htc_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.ath_common* @ath9k_hw_common(i32 %16)
  store %struct.ath_common* %17, %struct.ath_common** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ath9k_htc_vif*
  store %struct.ath9k_htc_vif* %21, %struct.ath9k_htc_vif** %9, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %23 = icmp ne %struct.ieee80211_sta* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ath9k_htc_sta*
  store %struct.ath9k_htc_sta* %28, %struct.ath9k_htc_sta** %10, align 8
  %29 = load %struct.ath9k_htc_sta*, %struct.ath9k_htc_sta** %10, align 8
  %30 = getelementptr inbounds %struct.ath9k_htc_sta, %struct.ath9k_htc_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %32, %24
  %42 = load i32, i32* @WMI_NODE_REMOVE_CMDID, align 4
  %43 = call i32 @WMI_CMD_BUF(i32 %42, i32* %13)
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %48 = icmp ne %struct.ieee80211_sta* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ath_err(%struct.ath_common* %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %88

57:                                               ; preds = %41
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %59 = icmp ne %struct.ieee80211_sta* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %62 = load i32, i32* @CONFIG, align 4
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @ath_dbg(%struct.ath_common* %61, i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %66)
  br label %76

68:                                               ; preds = %57
  %69 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %70 = load i32, i32* @CONFIG, align 4
  %71 = load %struct.ath9k_htc_vif*, %struct.ath9k_htc_vif** %9, align 8
  %72 = getelementptr inbounds %struct.ath9k_htc_vif, %struct.ath9k_htc_vif* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ath_dbg(%struct.ath_common* %69, i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %60
  %77 = load i32, i32* %13, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %81 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %85 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %76, %55
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
