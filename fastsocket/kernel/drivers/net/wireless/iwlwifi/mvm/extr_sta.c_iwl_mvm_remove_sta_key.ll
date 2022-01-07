; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_remove_sta_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_remove_sta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32*, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.ieee80211_key_conf = type { i32, i64, i32, i32 }
%struct.iwl_mvm_sta = type { i32, %struct.ieee80211_vif* }
%struct.iwl_mvm_add_sta_cmd = type { i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"mvm remove dynamic key: idx=%d sta=%d\0A\00", align 1
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"offset %d not used in fw key table.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"station non-existent, early return.\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid station id\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_POS = common dso_local global i32 0, align 4
@STA_KEY_FLG_KEYID_MSK = common dso_local global i32 0, align 4
@STA_KEY_FLG_NO_ENC = common dso_local global i32 0, align 4
@STA_KEY_FLG_WEP_KEY_MAP = common dso_local global i32 0, align 4
@STA_KEY_NOT_VALID = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@STA_KEY_MULTICAST = common dso_local global i32 0, align 4
@STA_MODIFY_KEY = common dso_local global i32 0, align 4
@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"MODIFY_STA: remove sta key passed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"MODIFY_STA: remove sta key failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca %struct.iwl_mvm_sta*, align 8
  %11 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %16 = bitcast %struct.iwl_mvm_add_sta_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %22 = call i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif* %20, %struct.ieee80211_sta* %21)
  store i64 %22, i64* %15, align 8
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %24 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_mvm* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  %29 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %36 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm* %35, %struct.ieee80211_key_conf* %36, i64 %37, i32 1)
  store i32 %38, i32* %5, align 4
  br label %166

39:                                               ; preds = %4
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @__test_and_clear_bit(i32 %42, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %51 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %166

57:                                               ; preds = %39
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %63 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_mvm* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

64:                                               ; preds = %57
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %66 = icmp ne %struct.ieee80211_sta* %65, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %75 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %74, i32 0, i32 0
  %76 = call i32 @lockdep_is_held(i32* %75)
  %77 = call %struct.ieee80211_sta* @rcu_dereference_protected(i32 %73, i32 %76)
  store %struct.ieee80211_sta* %77, %struct.ieee80211_sta** %8, align 8
  %78 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %79 = icmp ne %struct.ieee80211_sta* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %67
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %82 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %166

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %64
  %87 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %90, %struct.iwl_mvm_sta** %10, align 8
  %91 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %92 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %91, i32 0, i32 1
  %93 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %92, align 8
  %94 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %95 = icmp ne %struct.ieee80211_vif* %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON_ONCE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %86
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %166

102:                                              ; preds = %86
  %103 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @STA_KEY_FLG_KEYID_POS, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* @STA_KEY_FLG_KEYID_MSK, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @cpu_to_le16(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @STA_KEY_FLG_NO_ENC, align 4
  %112 = load i32, i32* @STA_KEY_FLG_WEP_KEY_MAP, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @cpu_to_le16(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @STA_KEY_NOT_VALID, align 4
  %118 = call i32 @cpu_to_le16(i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  %121 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %122 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %102
  %128 = load i32, i32* @STA_KEY_MULTICAST, align 4
  %129 = call i32 @cpu_to_le16(i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %127, %102
  %133 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %10, align 8
  %134 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @cpu_to_le32(i32 %135)
  %137 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 4
  store i32 %136, i32* %137, align 8
  %138 = load i32, i32* %12, align 4
  %139 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %142 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* %15, align 8
  %147 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = load i32, i32* @STA_MODIFY_KEY, align 4
  %149 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 2
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @STA_MODE_MODIFY, align 4
  %151 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %11, i32 0, i32 1
  store i32 %150, i32* %151, align 8
  store i32 128, i32* %14, align 4
  %152 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %153 = load i32, i32* @ADD_STA, align 4
  %154 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %152, i32 %153, i32 32, %struct.iwl_mvm_add_sta_cmd* %11, i32* %14)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  switch i32 %155, label %159 [
    i32 128, label %156
  ]

156:                                              ; preds = %132
  %157 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %158 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_mvm* %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %164

159:                                              ; preds = %132
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  %162 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %163 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_ERR(%struct.iwl_mvm* %162, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %99, %80, %61, %49, %34
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i64 @iwl_mvm_get_key_sta_id(%struct.ieee80211_vif*, %struct.ieee80211_sta*) #2

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_mvm*, i8*, ...) #2

declare dso_local i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm*, %struct.ieee80211_key_conf*, i64, i32) #2

declare dso_local i32 @__test_and_clear_bit(i32, i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, ...) #2

declare dso_local %struct.ieee80211_sta* @rcu_dereference_protected(i32, i32) #2

declare dso_local i32 @lockdep_is_held(i32*) #2

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
