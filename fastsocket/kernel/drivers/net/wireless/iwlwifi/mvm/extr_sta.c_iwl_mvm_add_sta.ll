; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32*, i32, i32 }
%struct.ieee80211_vif = type { i64*, i64 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_vif = type { i32, i32, i32 }
%struct.iwl_mvm_sta = type { i32, i32, i32, i64, i32, %struct.ieee80211_vif*, i32, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@LINK_QUAL_AGG_FRAME_LIMIT_DEF = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_INVAL_HW_QUEUE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_add_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %13)
  store %struct.iwl_mvm_vif* %14, %struct.iwl_mvm_vif** %8, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %19, %struct.iwl_mvm_sta** %9, align 8
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 3
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 2
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %30 = call i32 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm* %29)
  store i32 %30, i32* %12, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON_ONCE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %147

45:                                               ; preds = %35
  %46 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %46, i32 0, i32 7
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @FW_CMD_ID_AND_COLOR(i32 %54, i32 %57)
  %59 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %62 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %63 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %62, i32 0, i32 5
  store %struct.ieee80211_vif* %61, %struct.ieee80211_vif** %63, align 8
  %64 = load i32, i32* @LINK_QUAL_AGG_FRAME_LIMIT_DEF, align 4
  %65 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  %74 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %106, %45
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @IEEE80211_INVAL_HW_QUEUE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %82
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @BIT(i64 %99)
  %101 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %102 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %92, %82
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %78

109:                                              ; preds = %78
  %110 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memset(i32 %112, i32 0, i32 4)
  %114 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %115 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %116 = call i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm* %114, %struct.ieee80211_sta* %115, i32 0)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %147

121:                                              ; preds = %109
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %129 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IWL_MVM_STATION_COUNT, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %136 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %127, %121
  %138 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %139 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %146 = call i32 @rcu_assign_pointer(i32 %144, %struct.ieee80211_sta* %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %137, %119, %42
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @FW_CMD_ID_AND_COLOR(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @iwl_mvm_sta_send_to_fw(%struct.iwl_mvm*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ieee80211_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
