; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_conf_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }

@MWL8K_TX_WMM_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @mwl8k_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.mwl8k_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %13, align 8
  store %struct.mwl8k_priv* %14, %struct.mwl8k_priv** %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = call i32 @mwl8k_fw_lock(%struct.ieee80211_hw* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MWL8K_TX_WMM_QUEUES, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %27 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %33 = call i32 @memcpy(i32* %31, %struct.ieee80211_tx_queue_params* %32, i32 16)
  %34 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  %35 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %40 = call i32 @mwl8k_cmd_set_wmm_mode(%struct.ieee80211_hw* %39, i32 1)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @MWL8K_TX_WMM_QUEUES, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mwl8k_cmd_set_edca_params(%struct.ieee80211_hw* %49, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %44, %41
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %66 = call i32 @mwl8k_fw_unlock(%struct.ieee80211_hw* %65)
  br label %67

67:                                               ; preds = %64, %4
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @mwl8k_fw_lock(%struct.ieee80211_hw*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_tx_queue_params*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_wmm_mode(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @mwl8k_cmd_set_edca_params(%struct.ieee80211_hw*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mwl8k_fw_unlock(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
