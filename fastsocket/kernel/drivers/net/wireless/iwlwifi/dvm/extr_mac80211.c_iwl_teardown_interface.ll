; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_teardown_interface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_teardown_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, %struct.ieee80211_vif*, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_rxon_context = type { i32, i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.ieee80211_vif*, i32)* @iwl_teardown_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_teardown_interface(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = call %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %8)
  store %struct.iwl_rxon_context* %9, %struct.iwl_rxon_context** %7, align 8
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %14, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = icmp eq %struct.ieee80211_vif* %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %20 = call i32 @iwl_scan_cancel_timeout(%struct.iwl_priv* %19, i32 200)
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %22 = call i32 @iwl_force_scan_end(%struct.iwl_priv* %21)
  br label %23

23:                                               ; preds = %18, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %28 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %29 = call i32 @iwl_set_mode(%struct.iwl_priv* %27, %struct.iwl_rxon_context* %28)
  %30 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %7, align 8
  %36 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %38
  ret void
}

declare dso_local %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_scan_cancel_timeout(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_force_scan_end(%struct.iwl_priv*) #1

declare dso_local i32 @iwl_set_mode(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
