; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_ops.c_iwl_mvm_nic_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.iwl_mvm = type { i64, i32, i32, i32, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Firmware error during reconfiguration! Abort.\0A\00", align 1
@IWL_UCODE_REGULAR = common dso_local global i64 0, align 8
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*)* @iwl_mvm_nic_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_nic_restart(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %3 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %3, i32 0, i32 4
  %5 = call i32 @iwl_abort_notification_waits(i32* %4)
  %6 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 3
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %13 = call i32 @IWL_ERR(%struct.iwl_mvm* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IWL_UCODE_REGULAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 129, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_scan_completed(i32 %31, i32 1)
  br label %33

33:                                               ; preds = %23, %28, %27
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ieee80211_restart_hw(i32 %36)
  br label %38

38:                                               ; preds = %33, %20, %14
  br label %39

39:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @iwl_abort_notification_waits(i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_scan_completed(i32, i32) #1

declare dso_local i32 @ieee80211_restart_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
