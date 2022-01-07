; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_coex_reduced_txp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_coex_reduced_txp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32* }
%struct.iwl_bt_coex_cmd = type { i64, i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32 }

@BT_VALID_REDUCED_TX_POWER = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@BT_REDUCED_TX_POWER_BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%sable reduced Tx Power for sta %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@BT_CONFIG = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64, i32)* @iwl_mvm_bt_coex_reduced_txp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_bt_coex_cmd, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %8, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %8, i32 0, i32 1
  %14 = load i32, i32* @BT_VALID_REDUCED_TX_POWER, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  store i32 %15, i32* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = call i32 @lockdep_is_held(i32* %28)
  %30 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %26, i32 %29)
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %9, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %35, %struct.iwl_mvm_sta** %10, align 8
  %36 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %65

42:                                               ; preds = %20
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i64, i64* @BT_REDUCED_TX_POWER_BIT, align 8
  %47 = getelementptr inbounds %struct.iwl_bt_coex_cmd, %struct.iwl_bt_coex_cmd* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %48, %46
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %55, i64 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load i32, i32* @BT_CONFIG, align 4
  %63 = load i32, i32* @CMD_ASYNC, align 4
  %64 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %61, i32 %62, i32 %63, i32 16, %struct.iwl_bt_coex_cmd* %8)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %50, %41, %19
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i8*, i64) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_bt_coex_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
