; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_coex_vif_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_coex_vif_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_bt_coex_vif_assoc(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %10)
  store %struct.ieee80211_chanctx_conf* %11, %struct.ieee80211_chanctx_conf** %5, align 8
  %12 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %13 = icmp ne %struct.ieee80211_chanctx_conf* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %14, %2
  store i32 -1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %40

34:                                               ; preds = %28
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %36 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %35, i32 0, i32 0
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %39 = call i32 @iwl_mvm_bt_coex_notif_handle(%struct.iwl_mvm* %38)
  br label %40

40:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iwl_mvm_bt_coex_notif_handle(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
