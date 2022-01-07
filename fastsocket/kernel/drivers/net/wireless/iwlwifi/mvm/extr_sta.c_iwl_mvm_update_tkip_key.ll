; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_tkip_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_update_tkip_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32 }

@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_update_tkip_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_key_conf* %2, %struct.ieee80211_sta* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.iwl_mvm_sta*, align 8
  %14 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_key_conf* %2, %struct.ieee80211_key_conf** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %17 = call i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif* %15, %struct.ieee80211_sta* %16)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %59

25:                                               ; preds = %6
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %28 = icmp ne %struct.ieee80211_sta* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ieee80211_sta* @rcu_dereference(i32 %35)
  store %struct.ieee80211_sta* %36, %struct.ieee80211_sta** %10, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %38 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %37)
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = call i32 (...) @rcu_read_unlock()
  br label %59

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = bitcast i8* %48 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %49, %struct.iwl_mvm_sta** %13, align 8
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %51 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %13, align 8
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* @CMD_ASYNC, align 4
  %57 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %50, %struct.iwl_mvm_sta* %51, %struct.ieee80211_key_conf* %52, i64 %53, i32 %54, i32* %55, i32 %56)
  %58 = call i32 (...) @rcu_read_unlock()
  br label %59

59:                                               ; preds = %44, %41, %24
  ret void
}

declare dso_local i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, %struct.ieee80211_key_conf*, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
