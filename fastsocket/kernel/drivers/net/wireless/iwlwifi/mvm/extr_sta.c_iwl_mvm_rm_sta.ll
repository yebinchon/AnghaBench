; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_rm_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32*, i32 }
%struct.ieee80211_vif = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_vif = type { i64 }
%struct.iwl_mvm_sta = type { i64, i32, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_rm_sta(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %17, %struct.iwl_mvm_sta** %9, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 2
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %3
  %27 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %26
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %36 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm* %35, i32 %38, i32 1)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32* @ERR_PTR(i32 %49)
  %51 = call i32 @rcu_assign_pointer(i32 %47, i32* %50)
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %115

59:                                               ; preds = %34
  %60 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %61 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %62 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %26, %3
  %64 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = call i64 @atomic_read(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %63
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %78 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %81 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  %87 = call i32* @ERR_PTR(i32 %86)
  %88 = call i32 @rcu_assign_pointer(i32 %84, i32* %87)
  %89 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %90 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %93 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %94 = call i32 @iwl_mvm_drain_sta(%struct.iwl_mvm* %92, %struct.iwl_mvm_sta* %93, i32 1)
  store i32 %94, i32* %10, align 4
  br label %113

95:                                               ; preds = %63
  %96 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %96, i32 0, i32 1
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %100 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm* %99, i64 %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %105 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %9, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @rcu_assign_pointer(i32 %111, i32* null)
  br label %113

113:                                              ; preds = %95, %76
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %57
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_flush_tx_path(%struct.iwl_mvm*, i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwl_mvm_drain_sta(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32) #1

declare dso_local i32 @iwl_mvm_rm_sta_common(%struct.iwl_mvm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
