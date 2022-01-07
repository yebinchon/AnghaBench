; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_mac80211.c_iwl_mvm_mac_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i8*, i32 }
%struct.iwl_mvm = type { i32 }

@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"leave - hwcrypto disabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_HW_MFP_CAPABLE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@STA_KEY_IDX_INVALID = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"set hwcrypto key\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"set key failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"disable hwcrypto key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @iwl_mvm_mac_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_mac_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.iwl_mvm*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %15 = call %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw* %14)
  store %struct.iwl_mvm* %15, %struct.iwl_mvm** %12, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %20 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %111

23:                                               ; preds = %5
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %50 [
    i32 130, label %27
    i32 131, label %33
    i32 132, label %39
    i32 128, label %49
    i32 129, label %49
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %23, %27
  %34 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %35 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_HW_MFP_CAPABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON_ONCE(i32 %47)
  br label %53

49:                                               ; preds = %23, %23
  store i32 0, i32* %6, align 4
  br label %111

50:                                               ; preds = %23
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %111

53:                                               ; preds = %39, %33
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %55 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %103 [
    i32 133, label %58
    i32 134, label %88
  ]

58:                                               ; preds = %53
  %59 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %60 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %66 = icmp ne %struct.ieee80211_sta* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  %68 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %69 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %70 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %106

71:                                               ; preds = %64, %58
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %73 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %75 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %77 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %78 = call i32 @iwl_mvm_set_sta_key(%struct.iwl_mvm* %74, %struct.ieee80211_vif* %75, %struct.ieee80211_sta* %76, %struct.ieee80211_key_conf* %77, i32 0)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %83 = call i32 @IWL_WARN(%struct.iwl_mvm* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %85 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %86 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %81, %71
  br label %106

88:                                               ; preds = %53
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i8*, i8** @STA_KEY_IDX_INVALID, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 0, i32* %13, align 4
  br label %106

95:                                               ; preds = %88
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %97 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %99 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %101 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %102 = call i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm* %98, %struct.ieee80211_vif* %99, %struct.ieee80211_sta* %100, %struct.ieee80211_key_conf* %101)
  store i32 %102, i32* %13, align 4
  br label %106

103:                                              ; preds = %53
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %103, %95, %94, %87, %67
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %12, align 8
  %108 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %106, %50, %49, %18
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.iwl_mvm* @IWL_MAC80211_GET_MVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_mvm_set_sta_key(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*, i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
