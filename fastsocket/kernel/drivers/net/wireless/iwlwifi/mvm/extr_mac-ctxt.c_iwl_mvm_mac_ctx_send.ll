; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctx_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac-ctxt.c_iwl_mvm_mac_ctx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_mac_ctx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_ctx_send(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %51 [
    i32 128, label %11
    i32 131, label %26
    i32 130, label %41
    i32 129, label %46
  ]

11:                                               ; preds = %3
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @iwl_mvm_mac_ctxt_cmd_station(%struct.iwl_mvm* %17, %struct.ieee80211_vif* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %11
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %23 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @iwl_mvm_mac_ctxt_cmd_p2p_client(%struct.iwl_mvm* %22, %struct.ieee80211_vif* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %55

26:                                               ; preds = %3
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @iwl_mvm_mac_ctxt_cmd_ap(%struct.iwl_mvm* %32, %struct.ieee80211_vif* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %26
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @iwl_mvm_mac_ctxt_cmd_go(%struct.iwl_mvm* %37, %struct.ieee80211_vif* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %55

41:                                               ; preds = %3
  %42 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %43 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm* %42, %struct.ieee80211_vif* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %55

46:                                               ; preds = %3
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %48 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @iwl_mvm_mac_ctxt_cmd_p2p_device(%struct.iwl_mvm* %47, %struct.ieee80211_vif* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %46, %41, %36, %31, %21, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_station(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_p2p_client(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_ap(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_go(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_listener(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

declare dso_local i32 @iwl_mvm_mac_ctxt_cmd_p2p_device(%struct.iwl_mvm*, %struct.ieee80211_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
