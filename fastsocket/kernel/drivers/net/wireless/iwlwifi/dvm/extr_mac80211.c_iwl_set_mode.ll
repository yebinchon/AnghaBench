; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwl_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_mode(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %4, align 8
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %6 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %7 = call i32 @iwl_connection_init_rx_config(%struct.iwl_priv* %5, %struct.iwl_rxon_context* %6)
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %9 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %10 = call i32 @iwlagn_set_rxon_chain(%struct.iwl_priv* %8, %struct.iwl_rxon_context* %9)
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %4, align 8
  %13 = call i32 @iwlagn_commit_rxon(%struct.iwl_priv* %11, %struct.iwl_rxon_context* %12)
  ret i32 %13
}

declare dso_local i32 @iwl_connection_init_rx_config(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_set_rxon_chain(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwlagn_commit_rxon(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
