; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_rssi_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_rssi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_bt_iterator_data = type { i32, i64, %struct.iwl_mvm* }

@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@OPEN_CON_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RSSI for %pM is now %s\0A\00", align 1
@RSSI_EVENT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HIGH\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LOW\00", align 1
@RSSI_EVENT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"couldn't send BT_CONFIG HCMD upon RSSI event\0A\00", align 1
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_bt_rssi_iterator = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to update the ctrl_kill_msk\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_bt_rssi_event(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_bt_iterator_data, align 8
  %9 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_mvm_vif*
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 2
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm* %18, %struct.iwl_mvm** %17, align 8
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %20 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %101

31:                                               ; preds = %3
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 2
  %34 = load i32, i32* @OPEN_CON_2, align 4
  %35 = call i32 @BT_MBOX_MSG(i32* %33, i32 3, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %101

38:                                               ; preds = %31
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %40 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @RSSI_EVENT_HIGH, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RSSI_EVENT_LOW, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = call i64 (...) @is_loose_coex()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53, %38
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %58 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %59 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %57, i64 %60, i32 0)
  store i32 %61, i32* %9, align 4
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %64 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %63, i64 %66, i32 1)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %73 = call i32 @IWL_ERR(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %79 = load i32, i32* @iwl_mvm_bt_rssi_iterator, align 4
  %80 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %77, i32 %78, i32 %79, %struct.iwl_bt_iterator_data* %8)
  %81 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %84, %74
  %89 = phi i1 [ false, %74 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %93 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %8, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @iwl_mvm_bt_udpate_ctrl_kill_msk(%struct.iwl_mvm* %92, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %99 = call i32 @IWL_ERR(%struct.iwl_mvm* %98, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %88
  br label %101

101:                                              ; preds = %100, %37, %30
  %102 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %103 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @BT_MBOX_MSG(i32*, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i32, i8*) #1

declare dso_local i64 @is_loose_coex(...) #1

declare dso_local i32 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_bt_iterator_data*) #1

declare dso_local i64 @iwl_mvm_bt_udpate_ctrl_kill_msk(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
