; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_d3.c_iwl_mvm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.iwl_mvm = type { i32, i32, i32, i32 }
%struct.iwl_d3_iter_data = type { %struct.ieee80211_vif*, i64, %struct.iwl_mvm* }
%struct.ieee80211_vif = type { i32 }

@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@iwl_mvm_d3_iface_iterator = common dso_local global i32 0, align 4
@IWL_D3_STATUS_ALIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Device was reset during suspend\0A\00", align 1
@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_resume(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_d3_iter_data, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %8)
  store %struct.iwl_mvm* %9, %struct.iwl_mvm** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 0
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %10, align 8
  %11 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 2
  %13 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_mvm* %13, %struct.iwl_mvm** %12, align 8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %5, align 8
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %21 = load i32, i32* @iwl_mvm_d3_iface_iterator, align 4
  %22 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %19, i32 %20, i32 %21, %struct.iwl_d3_iter_data* %4)
  %23 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 0
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %27, align 8
  %29 = icmp ne %struct.ieee80211_vif* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %1
  %32 = phi i1 [ true, %1 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.iwl_d3_iter_data, %struct.iwl_d3_iter_data* %4, i32 0, i32 0
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %38, align 8
  store %struct.ieee80211_vif* %39, %struct.ieee80211_vif** %5, align 8
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %41 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iwl_trans_d3_resume(i32 %42, i32* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %58

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @IWL_D3_STATUS_ALIVE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %53 = call i32 @IWL_INFO(%struct.iwl_mvm* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

54:                                               ; preds = %47
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %57 = call i32 @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm* %55, %struct.ieee80211_vif* %56)
  br label %58

58:                                               ; preds = %54, %51, %46, %36
  %59 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %63 = icmp ne %struct.ieee80211_vif* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %66 = call i32 @ieee80211_resume_disconnect(%struct.ieee80211_vif* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %68, i32* %70)
  ret i32 1
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.iwl_d3_iter_data*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_trans_d3_resume(i32, i32*) #1

declare dso_local i32 @IWL_INFO(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_query_wakeup_reasons(%struct.iwl_mvm*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_resume_disconnect(%struct.ieee80211_vif*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
