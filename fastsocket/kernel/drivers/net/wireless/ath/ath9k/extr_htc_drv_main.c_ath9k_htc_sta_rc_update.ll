; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_rc_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_sta_rc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ath_common = type { i32 }
%struct.ath9k_htc_target_rate = type { i32 }

@IEEE80211_RC_SUPP_RATES_CHANGED = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Supported rates for sta: %pM updated, rate caps: 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to update supported rates for sta: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32)* @ath9k_htc_sta_rc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_htc_sta_rc_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath9k_htc_priv*, align 8
  %10 = alloca %struct.ath_common*, align 8
  %11 = alloca %struct.ath9k_htc_target_rate, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %13, align 8
  store %struct.ath9k_htc_priv* %14, %struct.ath9k_htc_priv** %9, align 8
  %15 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ath_common* @ath9k_hw_common(i32 %17)
  store %struct.ath_common* %18, %struct.ath_common** %10, align 8
  %19 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %20 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %23 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IEEE80211_RC_SUPP_RATES_CHANGED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %4
  %29 = call i32 @memset(%struct.ath9k_htc_target_rate* %11, i32 0, i32 4)
  %30 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %32 = call i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv* %30, %struct.ieee80211_sta* %31, %struct.ath9k_htc_target_rate* %11)
  %33 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %34 = call i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv* %33, %struct.ath9k_htc_target_rate* %11)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %28
  %37 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %38 = load i32, i32* @CONFIG, align 4
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ath9k_htc_target_rate, %struct.ath9k_htc_target_rate* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %53

46:                                               ; preds = %28
  %47 = load %struct.ath_common*, %struct.ath_common** %10, align 8
  %48 = load i32, i32* @CONFIG, align 4
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.ath_common*, i32, i8*, i32, ...) @ath_dbg(%struct.ath_common* %47, i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %36
  br label %54

54:                                               ; preds = %53, %4
  %55 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %56 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %55)
  %57 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %9, align 8
  %58 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @memset(%struct.ath9k_htc_target_rate*, i32, i32) #1

declare dso_local i32 @ath9k_htc_setup_rate(%struct.ath9k_htc_priv*, %struct.ieee80211_sta*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath9k_htc_send_rate_cmd(%struct.ath9k_htc_priv*, %struct.ath9k_htc_target_rate*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
