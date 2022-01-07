; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_complete_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_complete_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32*, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Complete scan in mac80211\0A\00", align 1
@IWL_SCAN_ROC = common dso_local global i64 0, align 8
@IWL_SCAN_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i32)* @iwl_complete_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_complete_scan(%struct.iwl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %11 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ieee80211_scan_completed(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IWL_SCAN_ROC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = call i32 @iwl_scan_roc_expired(%struct.iwl_priv* %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i64, i64* @IWL_SCAN_NORMAL, align 8
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @ieee80211_scan_completed(i32, i32) #1

declare dso_local i32 @iwl_scan_roc_expired(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
