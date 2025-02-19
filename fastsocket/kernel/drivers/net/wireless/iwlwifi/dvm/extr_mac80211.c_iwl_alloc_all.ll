; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_alloc_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwl_alloc_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.iwl_op_mode* }
%struct.iwl_op_mode = type { i32 }
%struct.iwl_priv = type { %struct.ieee80211_hw* }

@iwlagn_hw_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @iwl_alloc_all() #0 {
  %1 = alloca %struct.iwl_priv*, align 8
  %2 = alloca %struct.iwl_op_mode*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 12, i32* @iwlagn_hw_ops)
  store %struct.ieee80211_hw* %4, %struct.ieee80211_hw** %3, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %6 = icmp ne %struct.ieee80211_hw* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %10, align 8
  store %struct.iwl_op_mode* %11, %struct.iwl_op_mode** %2, align 8
  %12 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %2, align 8
  %13 = call %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode* %12)
  store %struct.iwl_priv* %13, %struct.iwl_priv** %1, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %1, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %16, align 8
  br label %17

17:                                               ; preds = %8, %7
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  ret %struct.ieee80211_hw* %18
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local %struct.iwl_priv* @IWL_OP_MODE_GET_DVM(%struct.iwl_op_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
