; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_notif_iterator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_bt-coex.c_iwl_mvm_bt_notif_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i64, i32 }
%struct.iwl_mvm_vif = type { i32, i32 }
%struct.iwl_bt_iterator_data = type { i32, %struct.TYPE_6__*, i32, %struct.iwl_mvm* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i32 0, align 4
@IWL_BT_LOAD_FORCE_SISO_THRESHOLD = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"mac %d: bt_status %d traffic_load %d smps_req %d\0A\00", align 1
@OPEN_CON_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't send BT_CONFIG cmd\0A\00", align 1
@BT_ENABLE_REDUCED_TXPOWER_THRESHOLD = common dso_local global i32 0, align 4
@BT_DISABLE_REDUCED_TXPOWER_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_bt_notif_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_bt_notif_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_vif*, align 8
  %8 = alloca %struct.iwl_bt_iterator_data*, align 8
  %9 = alloca %struct.iwl_mvm*, align 8
  %10 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.iwl_bt_iterator_data*
  store %struct.iwl_bt_iterator_data* %17, %struct.iwl_bt_iterator_data** %8, align 8
  %18 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %19 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %18, i32 0, i32 3
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %19, align 8
  store %struct.iwl_mvm* %20, %struct.iwl_mvm** %9, align 8
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %173

27:                                               ; preds = %3
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %31)
  store %struct.ieee80211_chanctx_conf* %32, %struct.ieee80211_chanctx_conf** %10, align 8
  %33 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %34 = icmp ne %struct.ieee80211_chanctx_conf* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %27
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  br label %49

48:                                               ; preds = %35, %27
  store i32 -1, i32* %12, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IEEE80211_BAND_2GHZ, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ieee80211_request_smps(%struct.ieee80211_vif* %56, i32 %57)
  br label %173

59:                                               ; preds = %49
  %60 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %61 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @IEEE80211_SMPS_DYNAMIC, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %59
  %69 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %70 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IWL_BT_LOAD_FORCE_SISO_THRESHOLD, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %80 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %79, i32 0, i32 3
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %80, align 8
  %82 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %83 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %86 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %91 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @IWL_DEBUG_COEX(%struct.iwl_mvm* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %84, i64 %89, i64 %94, i32 %95)
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @ieee80211_request_smps(%struct.ieee80211_vif* %97, i32 %98)
  %100 = call i64 (...) @is_loose_coex()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %78
  br label %173

103:                                              ; preds = %78
  %104 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %105 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %109 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load i32, i32* @OPEN_CON_2, align 4
  %112 = call i32 @BT_MBOX_MSG(%struct.TYPE_6__* %110, i32 3, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %103
  %115 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %116 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %117 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %115, i32 %118, i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %123 = call i32 @IWL_ERR(%struct.iwl_mvm* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %114
  %125 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %126 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = call i32 @ieee80211_disable_rssi_reports(%struct.ieee80211_vif* %127)
  br label %173

129:                                              ; preds = %103
  %130 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %131 = call i32 @ieee80211_ave_rssi(%struct.ieee80211_vif* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 -100, i32* %13, align 4
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @BT_ENABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %141 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %142 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %140, i32 %143, i32 1)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %148 = call i32 @IWL_ERR(%struct.iwl_mvm* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %139
  br label %168

150:                                              ; preds = %135
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @BT_DISABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %150
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %156 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %7, align 8
  %157 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm* %155, i32 %158, i32 0)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %9, align 8
  %163 = call i32 @IWL_ERR(%struct.iwl_mvm* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %154
  %165 = load %struct.iwl_bt_iterator_data*, %struct.iwl_bt_iterator_data** %8, align 8
  %166 = getelementptr inbounds %struct.iwl_bt_iterator_data, %struct.iwl_bt_iterator_data* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %150
  br label %168

168:                                              ; preds = %167, %149
  %169 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %170 = load i32, i32* @BT_DISABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %171 = load i32, i32* @BT_ENABLE_REDUCED_TXPOWER_THRESHOLD, align 4
  %172 = call i32 @ieee80211_enable_rssi_reports(%struct.ieee80211_vif* %169, i32 %170, i32 %171)
  br label %173

173:                                              ; preds = %168, %124, %102, %55, %26
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_request_smps(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_mvm*, i8*, i32, i64, i64, i32) #1

declare dso_local i64 @is_loose_coex(...) #1

declare dso_local i32 @BT_MBOX_MSG(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @iwl_mvm_bt_coex_reduced_txp(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_disable_rssi_reports(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_ave_rssi(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_enable_rssi_reports(%struct.ieee80211_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
