; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_restart_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64, i32, i32, i32, i32, i32 }

@IWL_MVM_SCAN_NONE = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@iwl_mvm_cleanup_iterator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_restart_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_restart_cleanup(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %3 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @iwl_trans_stop_device(i32 %5)
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @iwl_trans_stop_hw(i32 %9, i32 0)
  %11 = load i32, i32* @IWL_MVM_SCAN_NONE, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ieee80211_remain_on_channel_expired(i32 %16)
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %22 = load i32, i32* @iwl_mvm_cleanup_iterator, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %24 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %20, i32 %21, i32 %22, %struct.iwl_mvm* %23)
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memset(i32 %27, i32 0, i32 4)
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memset(i32 %31, i32 0, i32 4)
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_wake_queues(i32 %35)
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @iwl_trans_stop_device(i32) #1

declare dso_local i32 @iwl_trans_stop_hw(i32, i32) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
