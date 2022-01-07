; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_device_cmd = type { i64 }
%struct.iwl_mvm = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { %struct.iwl_device_cmd**, %struct.iwl_device_cmd, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_tx_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_device_cmd* (%struct.iwl_mvm*, %struct.sk_buff*, %struct.ieee80211_sta*, i32)* @iwl_mvm_set_tx_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_device_cmd* @iwl_mvm_set_tx_params(%struct.iwl_mvm* %0, %struct.sk_buff* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_device_cmd*, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.iwl_device_cmd*, align 8
  %13 = alloca %struct.iwl_tx_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %11, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.iwl_device_cmd* @iwl_trans_alloc_tx_cmd(i32 %22)
  store %struct.iwl_device_cmd* %23, %struct.iwl_device_cmd** %12, align 8
  %24 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %25 = icmp ne %struct.iwl_device_cmd* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store %struct.iwl_device_cmd* null, %struct.iwl_device_cmd** %5, align 8
  br label %77

31:                                               ; preds = %4
  %32 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %33 = call i32 @memset(%struct.iwl_device_cmd* %32, i32 0, i32 8)
  %34 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %35 = getelementptr inbounds %struct.iwl_device_cmd, %struct.iwl_device_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.iwl_tx_cmd*
  store %struct.iwl_tx_cmd* %37, %struct.iwl_tx_cmd** %13, align 8
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %46 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @iwl_mvm_set_tx_cmd_crypto(%struct.iwl_mvm* %44, %struct.ieee80211_tx_info* %45, %struct.iwl_tx_cmd* %46, %struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %53 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @iwl_mvm_set_tx_cmd(%struct.iwl_mvm* %50, %struct.sk_buff* %51, %struct.iwl_tx_cmd* %52, %struct.ieee80211_tx_info* %53, i32 %54)
  %56 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %57 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %13, align 8
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm* %56, %struct.iwl_tx_cmd* %57, %struct.ieee80211_tx_info* %58, %struct.ieee80211_sta* %59, i32 %62)
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %64, i32 0, i32 1
  %66 = call i32 @memset(%struct.iwl_device_cmd* %65, i32 0, i32 8)
  %67 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %67, i32 0, i32 0
  %69 = load %struct.iwl_device_cmd**, %struct.iwl_device_cmd*** %68, align 8
  %70 = getelementptr inbounds %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %69, i64 0
  store %struct.iwl_device_cmd* null, %struct.iwl_device_cmd** %70, align 8
  %71 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  %72 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %73 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %72, i32 0, i32 0
  %74 = load %struct.iwl_device_cmd**, %struct.iwl_device_cmd*** %73, align 8
  %75 = getelementptr inbounds %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %74, i64 1
  store %struct.iwl_device_cmd* %71, %struct.iwl_device_cmd** %75, align 8
  %76 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %12, align 8
  store %struct.iwl_device_cmd* %76, %struct.iwl_device_cmd** %5, align 8
  br label %77

77:                                               ; preds = %49, %30
  %78 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %5, align 8
  ret %struct.iwl_device_cmd* %78
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.iwl_device_cmd* @iwl_trans_alloc_tx_cmd(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.iwl_device_cmd*, i32, i32) #1

declare dso_local i32 @iwl_mvm_set_tx_cmd_crypto(%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*, %struct.sk_buff*) #1

declare dso_local i32 @iwl_mvm_set_tx_cmd(%struct.iwl_mvm*, %struct.sk_buff*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @iwl_mvm_set_tx_cmd_rate(%struct.iwl_mvm*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
