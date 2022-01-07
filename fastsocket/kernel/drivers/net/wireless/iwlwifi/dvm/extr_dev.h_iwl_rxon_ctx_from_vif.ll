; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_dev.h_iwl_rxon_ctx_from_vif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_dev.h_iwl_rxon_ctx_from_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_rxon_context = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.iwl_vif_priv = type { %struct.iwl_rxon_context* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_rxon_context* (%struct.ieee80211_vif*)* @iwl_rxon_ctx_from_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_rxon_context* @iwl_rxon_ctx_from_vif(%struct.ieee80211_vif* %0) #0 {
  %2 = alloca %struct.ieee80211_vif*, align 8
  %3 = alloca %struct.iwl_vif_priv*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %2, align 8
  %4 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = bitcast i8* %7 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %8, %struct.iwl_vif_priv** %3, align 8
  %9 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %9, i32 0, i32 0
  %11 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %10, align 8
  ret %struct.iwl_rxon_context* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
