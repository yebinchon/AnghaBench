; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_set_sta_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_set_sta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.ieee80211_key_conf = type { i32, i64, i32, i32 }
%struct.iwl_mvm_sta = type { %struct.ieee80211_vif* }
%struct.ieee80211_key_seq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Failed to find station id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid station id\0A\00", align 1
@STA_KEY_IDX_INVALID = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown cipher %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"key: cipher=%x len=%d idx=%d sta=%pM ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_set_sta_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ieee80211_key_seq, align 4
  %17 = alloca [5 x i32], align 16
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %23 = call i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif* %21, %struct.ieee80211_sta* %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %5
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %29 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %171

32:                                               ; preds = %5
  %33 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %34 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WLAN_CIPHER_SUITE_AES_CMAC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm* %39, %struct.ieee80211_key_conf* %40, i64 %41, i32 0)
  store i32 %42, i32* %13, align 4
  br label %154

43:                                               ; preds = %32
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %45 = icmp ne %struct.ieee80211_sta* %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %48 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %15, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %54 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %53, i32 0, i32 1
  %55 = call i32 @lockdep_is_held(i32* %54)
  %56 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %52, i32 %55)
  store %struct.ieee80211_sta* %56, %struct.ieee80211_sta** %9, align 8
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %58 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %62 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %171

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %70, %struct.iwl_mvm_sta** %12, align 8
  %71 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %72 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %72, align 8
  %74 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %75 = icmp ne %struct.ieee80211_vif* %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @WARN_ON_ONCE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %171

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %82
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %87 = call i64 @iwl_mvm_set_fw_key_idx(%struct.iwl_mvm* %86)
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %91 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @STA_KEY_IDX_INVALID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @ENOSPC, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %171

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %82
  %100 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %134 [
    i32 128, label %103
    i32 129, label %127
  ]

103:                                              ; preds = %99
  %104 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %105 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %106 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %107 = call i64* @iwl_mvm_get_mac_addr(%struct.iwl_mvm* %104, %struct.ieee80211_vif* %105, %struct.ieee80211_sta* %106)
  store i64* %107, i64** %14, align 8
  %108 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %109 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %108, i32 0, %struct.ieee80211_key_seq* %16)
  %110 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %16, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %116 = call i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf* %110, i64* %111, i32 %114, i32* %115)
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %118 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %119 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %120 = load i64, i64* %15, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %16, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 0
  %125 = load i32, i32* @CMD_SYNC, align 4
  %126 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %117, %struct.iwl_mvm_sta* %118, %struct.ieee80211_key_conf* %119, i64 %120, i32 %123, i32* %124, i32 %125)
  store i32 %126, i32* %13, align 4
  br label %142

127:                                              ; preds = %99
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %129 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %130 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i32, i32* @CMD_SYNC, align 4
  %133 = call i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm* %128, %struct.iwl_mvm_sta* %129, %struct.ieee80211_key_conf* %130, i64 %131, i32 0, i32* null, i32 %132)
  store i32 %133, i32* %13, align 4
  br label %142

134:                                              ; preds = %99
  %135 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %136 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %137 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %134, %127, %103
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %147 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %150 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @__clear_bit(i64 %148, i32 %151)
  br label %153

153:                                              ; preds = %145, %142
  br label %154

154:                                              ; preds = %153, %38
  %155 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %156 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %157 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %160 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %163 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @IWL_DEBUG_WEP(%struct.iwl_mvm* %155, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %158, i32 %161, i32 %164, i32 %167, i32 %168)
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %154, %95, %79, %60, %27
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm*, %struct.ieee80211_key_conf*, i64, i32) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @iwl_mvm_set_fw_key_idx(%struct.iwl_mvm*) #1

declare dso_local i64* @iwl_mvm_get_mac_addr(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @ieee80211_get_tkip_rx_p1k(%struct.ieee80211_key_conf*, i64*, i32, i32*) #1

declare dso_local i32 @iwl_mvm_send_sta_key(%struct.iwl_mvm*, %struct.iwl_mvm_sta*, %struct.ieee80211_key_conf*, i64, i32, i32*, i32) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_mvm*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
