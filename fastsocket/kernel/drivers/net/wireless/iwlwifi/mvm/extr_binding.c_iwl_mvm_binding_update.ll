; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_binding.c_iwl_mvm_binding_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_phy_ctxt = type { i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_mvm_iface_iterator_data = type { i64, i32*, i32*, %struct.iwl_mvm_phy_ctxt*, %struct.ieee80211_vif* }

@FW_CTXT_ACTION_MODIFY = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_iface_iterator = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_ADD = common dso_local global i32 0, align 4
@FW_CTXT_ACTION_REMOVE = common dso_local global i32 0, align 4
@MAX_MACS_IN_BINDING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_mvm_phy_ctxt*, i32)* @iwl_mvm_binding_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_binding_update(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_mvm_phy_ctxt* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.iwl_mvm_phy_ctxt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_mvm_vif*, align 8
  %11 = alloca %struct.iwl_mvm_iface_iterator_data, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.iwl_mvm_phy_ctxt* %2, %struct.iwl_mvm_phy_ctxt** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %10, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 3
  %19 = load %struct.iwl_mvm_phy_ctxt*, %struct.iwl_mvm_phy_ctxt** %8, align 8
  store %struct.iwl_mvm_phy_ctxt* %19, %struct.iwl_mvm_phy_ctxt** %18, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 4
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_vif* %21, %struct.ieee80211_vif** %20, align 8
  %22 = load i32, i32* @FW_CTXT_ACTION_MODIFY, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 1
  %25 = call i32 @lockdep_assert_held(i32* %24)
  %26 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %30 = load i32, i32* @iwl_mvm_iface_iterator, align 4
  %31 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %28, i32 %29, i32 %30, %struct.iwl_mvm_iface_iterator_data* %11)
  %32 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @FW_CTXT_ACTION_ADD, align 4
  store i32 %39, i32* %12, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @FW_CTXT_ACTION_REMOVE, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_MACS_IN_BINDING, align 8
  %50 = icmp uge i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @WARN_ON_ONCE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %81

57:                                               ; preds = %46
  %58 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %10, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %11, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %57, %43
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @iwl_mvm_binding_cmd(%struct.iwl_mvm* %78, i32 %79, %struct.iwl_mvm_iface_iterator_data* %11)
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %54
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_mvm_iface_iterator_data*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_binding_cmd(%struct.iwl_mvm*, i32, %struct.iwl_mvm_iface_iterator_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
