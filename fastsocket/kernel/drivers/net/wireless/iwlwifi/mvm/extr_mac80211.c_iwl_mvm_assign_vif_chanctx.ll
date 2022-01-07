; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.iwl_mvm_vif = type { i32, %struct.iwl_mvm_phy_ctxt* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @iwl_mvm_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_assign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %9 = alloca %struct.iwl_mvm_vif*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_mvm* %12, %struct.iwl_mvm** %7, align 8
  %13 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_mvm_phy_ctxt*
  store %struct.iwl_mvm_phy_ctxt* %17, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %18 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %19 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %18)
  store %struct.iwl_mvm_vif* %19, %struct.iwl_mvm_vif** %9, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  %24 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %24, i32 0, i32 1
  store %struct.iwl_mvm_phy_ctxt* %23, %struct.iwl_mvm_phy_ctxt** %25, align 8
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %31 [
    i32 130, label %29
    i32 128, label %30
    i32 131, label %30
    i32 129, label %30
  ]

29:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %61

30:                                               ; preds = %3, %3, %3
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %61

34:                                               ; preds = %30
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %37 = call i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm* %35, %struct.ieee80211_vif* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %61

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %51 = call i32 @iwl_mvm_update_quotas(%struct.iwl_mvm* %49, %struct.ieee80211_vif* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %41
  br label %61

57:                                               ; preds = %54
  %58 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %60 = call i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm* %58, %struct.ieee80211_vif* %59)
  br label %61

61:                                               ; preds = %57, %56, %40, %31, %29
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %9, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %68, i32 0, i32 1
  store %struct.iwl_mvm_phy_ctxt* null, %struct.iwl_mvm_phy_ctxt** %69, align 8
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_binding_add_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_update_quotas(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @iwl_mvm_binding_remove_vif(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
