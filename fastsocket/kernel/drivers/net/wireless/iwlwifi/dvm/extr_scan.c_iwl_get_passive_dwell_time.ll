; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_get_passive_dwell_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_get_passive_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IWL_PASSIVE_DWELL_BASE = common dso_local global i64 0, align 8
@IWL_PASSIVE_DWELL_TIME_24 = common dso_local global i64 0, align 8
@IWL_PASSIVE_DWELL_TIME_52 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_priv*, i32)* @iwl_get_passive_dwell_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_get_passive_dwell_time(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* @IWL_PASSIVE_DWELL_BASE, align 8
  %11 = load i64, i64* @IWL_PASSIVE_DWELL_TIME_24, align 8
  %12 = add nsw i64 %10, %11
  br label %17

13:                                               ; preds = %2
  %14 = load i64, i64* @IWL_PASSIVE_DWELL_BASE, align 8
  %15 = load i64, i64* @IWL_PASSIVE_DWELL_TIME_52, align 8
  %16 = add nsw i64 %14, %15
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i64 [ %12, %9 ], [ %16, %13 ]
  store i64 %18, i64* %5, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @iwl_limit_dwell(%struct.iwl_priv* %19, i64 %20)
  ret i64 %21
}

declare dso_local i64 @iwl_limit_dwell(%struct.iwl_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
