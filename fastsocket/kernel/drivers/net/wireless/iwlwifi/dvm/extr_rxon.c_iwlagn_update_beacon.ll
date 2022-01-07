; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_update_beacon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rxon.c_iwlagn_update_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.ieee80211_vif*)* @iwlagn_update_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_update_beacon(%struct.iwl_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 2
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_kfree_skb(i32 %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = call i32 @ieee80211_beacon_get(i32 %15, %struct.ieee80211_vif* %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %29 = call i32 @iwlagn_send_beacon_cmd(%struct.iwl_priv* %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @ieee80211_beacon_get(i32, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwlagn_send_beacon_cmd(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
