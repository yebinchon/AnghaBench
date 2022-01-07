; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_crypto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_tx.c_iwl_mvm_set_tx_cmd_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.iwl_tx_cmd = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@TX_CMD_SEC_CCM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@TX_CMD_FLG_CCMP_AGG = common dso_local global i32 0, align 4
@TX_CMD_SEC_TKIP = common dso_local global i32 0, align 4
@TX_CMD_SEC_KEY128 = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP_KEY_IDX_POS = common dso_local global i32 0, align 4
@TX_CMD_SEC_WEP_KEY_IDX_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown encode cipher %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_tx_info*, %struct.iwl_tx_cmd*, %struct.sk_buff*)* @iwl_mvm_set_tx_cmd_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_set_tx_cmd_crypto(%struct.iwl_mvm* %0, %struct.ieee80211_tx_info* %1, %struct.iwl_tx_cmd* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.iwl_tx_cmd*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %6, align 8
  store %struct.iwl_tx_cmd* %2, %struct.iwl_tx_cmd** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %12, align 8
  store %struct.ieee80211_key_conf* %13, %struct.ieee80211_key_conf** %9, align 8
  %14 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %15 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %86 [
    i32 131, label %17
    i32 130, label %45
    i32 129, label %55
    i32 128, label %61
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* @TX_CMD_SEC_CCM, align 4
  %19 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %22 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32* %23, i32 %26, i32 %29)
  %31 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %17
  %38 = load i32, i32* @TX_CMD_FLG_CCMP_AGG, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %17
  br label %92

45:                                               ; preds = %4
  %46 = load i32, i32* @TX_CMD_SEC_TKIP, align 4
  %47 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf* %49, %struct.sk_buff* %50, i32* %53)
  br label %92

55:                                               ; preds = %4
  %56 = load i32, i32* @TX_CMD_SEC_KEY128, align 4
  %57 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %4, %55
  %62 = load i32, i32* @TX_CMD_SEC_WEP, align 4
  %63 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %64 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TX_CMD_SEC_WEP_KEY_IDX_POS, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* @TX_CMD_SEC_WEP_KEY_IDX_MSK, align 4
  %69 = and i32 %67, %68
  %70 = or i32 %62, %69
  %71 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %83 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32* %78, i32 %81, i32 %84)
  br label %92

86:                                               ; preds = %4
  %87 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IWL_ERR(%struct.iwl_mvm* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %61, %45, %44
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ieee80211_get_tkip_p2k(%struct.ieee80211_key_conf*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
