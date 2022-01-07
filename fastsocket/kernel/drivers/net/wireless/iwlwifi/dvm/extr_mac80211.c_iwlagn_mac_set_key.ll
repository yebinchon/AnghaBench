; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i64 }
%struct.iwl_priv = type { i32 }
%struct.iwl_vif_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"leave - hwcrypto disabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@WEP_INVALID_OFFSET = common dso_local global i64 0, align 8
@IWLAGN_HW_KEY_DEFAULT = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"enable hwcrypto key\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"disable hwcrypto key\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @iwlagn_mac_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.iwl_priv*, align 8
  %13 = alloca %struct.iwl_vif_priv*, align 8
  %14 = alloca %struct.iwl_rxon_context*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %18 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %17)
  store %struct.iwl_priv* %18, %struct.iwl_priv** %12, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %23, %struct.iwl_vif_priv** %13, align 8
  %24 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %13, align 8
  %25 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %24, i32 0, i32 0
  %26 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %25, align 8
  store %struct.iwl_rxon_context* %26, %struct.iwl_rxon_context** %14, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %28 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %5
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %33 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %179

36:                                               ; preds = %5
  %37 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %38 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %52 [
    i32 128, label %40
    i32 129, label %46
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %40
  %47 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %48 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %53

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %46
  %54 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  store i32 0, i32* %6, align 4
  br label %179

70:                                               ; preds = %59, %53
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 131
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %75 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %179

80:                                               ; preds = %73, %70
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %82 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %81, i32 0, i32 0
  %83 = call i32 @mutex_lock(i32* %82)
  %84 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %85 = call i32 @iwl_scan_cancel_timeout(%struct.iwl_priv* %84, i32 100)
  %86 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %87 = load i64, i64* @IWLAGN_HW_KEY_DEFAULT, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUILD_BUG_ON(i32 %89)
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @WLAN_CIPHER_SUITE_WEP40, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %80
  %97 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %98 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @WLAN_CIPHER_SUITE_WEP104, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %96, %80
  %103 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %104 = icmp ne %struct.ieee80211_sta* %103, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 130
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %14, align 8
  %110 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %16, align 4
  br label %122

115:                                              ; preds = %105
  %116 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %117 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @IWLAGN_HW_KEY_DEFAULT, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %115, %108
  br label %123

123:                                              ; preds = %122, %102, %96
  %124 = load i32, i32* %8, align 4
  switch i32 %124, label %169 [
    i32 130, label %125
    i32 131, label %152
  ]

125:                                              ; preds = %123
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %130 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %13, align 8
  %131 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %130, i32 0, i32 0
  %132 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %131, align 8
  %133 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %134 = call i32 @iwl_set_default_wep_key(%struct.iwl_priv* %129, %struct.iwl_rxon_context* %132, %struct.ieee80211_key_conf* %133)
  store i32 %134, i32* %15, align 4
  br label %172

135:                                              ; preds = %125
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %137 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %13, align 8
  %138 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %137, i32 0, i32 0
  %139 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %138, align 8
  %140 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %141 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %142 = call i32 @iwl_set_dynamic_key(%struct.iwl_priv* %136, %struct.iwl_rxon_context* %139, %struct.ieee80211_key_conf* %140, %struct.ieee80211_sta* %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %135
  store i32 0, i32* %15, align 4
  %146 = load i64, i64* @WEP_INVALID_OFFSET, align 8
  %147 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %148 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %145, %135
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %151 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %172

152:                                              ; preds = %123
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %157 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %14, align 8
  %158 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %159 = call i32 @iwl_remove_default_wep_key(%struct.iwl_priv* %156, %struct.iwl_rxon_context* %157, %struct.ieee80211_key_conf* %158)
  store i32 %159, i32* %15, align 4
  br label %166

160:                                              ; preds = %152
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %162 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %14, align 8
  %163 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %164 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %165 = call i32 @iwl_remove_dynamic_key(%struct.iwl_priv* %161, %struct.iwl_rxon_context* %162, %struct.ieee80211_key_conf* %163, %struct.ieee80211_sta* %164)
  store i32 %165, i32* %15, align 4
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %168 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %172

169:                                              ; preds = %123
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %169, %166, %149, %128
  %173 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %174 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %173, i32 0, i32 0
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.iwl_priv*, %struct.iwl_priv** %12, align 8
  %177 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %176, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %172, %79, %66, %31
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwl_scan_cancel_timeout(%struct.iwl_priv*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @iwl_set_default_wep_key(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @iwl_set_dynamic_key(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*) #1

declare dso_local i32 @iwl_remove_default_wep_key(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @iwl_remove_dynamic_key(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_key_conf*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
