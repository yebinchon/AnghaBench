; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctxt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_vif = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Adding active MAC %pM/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_mac_ctxt_add(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.iwl_mvm_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %9 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %8)
  store %struct.iwl_mvm_vif* %9, %struct.iwl_mvm_vif** %6, align 8
  %10 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %17 = call i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif* %16)
  %18 = call i64 @WARN_ONCE(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  %27 = call i32 @iwl_mvm_mac_ctx_send(%struct.iwl_mvm* %24, %struct.ieee80211_vif* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %6, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %30, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_mac_ctx_send(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
