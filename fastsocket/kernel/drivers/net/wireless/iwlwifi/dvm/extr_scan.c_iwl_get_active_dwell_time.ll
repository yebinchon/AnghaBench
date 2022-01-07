; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_get_active_dwell_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_get_active_dwell_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }

@IEEE80211_BAND_5GHZ = common dso_local global i32 0, align 4
@IWL_ACTIVE_DWELL_TIME_52 = common dso_local global i64 0, align 8
@IWL_ACTIVE_DWELL_FACTOR_52GHZ = common dso_local global i32 0, align 4
@IWL_ACTIVE_DWELL_TIME_24 = common dso_local global i64 0, align 8
@IWL_ACTIVE_DWELL_FACTOR_24GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_priv*, i32, i32)* @iwl_get_active_dwell_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_get_active_dwell_time(%struct.iwl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IEEE80211_BAND_5GHZ, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i64, i64* @IWL_ACTIVE_DWELL_TIME_52, align 8
  %13 = load i32, i32* @IWL_ACTIVE_DWELL_FACTOR_52GHZ, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %12, %17
  store i64 %18, i64* %4, align 8
  br label %27

19:                                               ; preds = %3
  %20 = load i64, i64* @IWL_ACTIVE_DWELL_TIME_24, align 8
  %21 = load i32, i32* @IWL_ACTIVE_DWELL_FACTOR_24GHZ, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %20, %25
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %19, %11
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
