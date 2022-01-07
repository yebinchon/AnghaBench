; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_channel_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_channel_switch = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }
%struct.iwl_priv = type { i32, i64, i32, %struct.TYPE_9__*, %struct.iwl_ht_config, %struct.iwl_rxon_context* }
%struct.TYPE_9__ = type { i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* }
%struct.iwl_ht_config = type { i32 }
%struct.iwl_rxon_context = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@STATUS_CHANNEL_SWITCH_PENDING = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_NONE = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_BELOW = common dso_local global i32 0, align 4
@IEEE80211_HT_PARAM_CHA_SEC_ABOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_channel_switch*)* @iwlagn_mac_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_channel_switch* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_channel_switch*, align 8
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.iwl_ht_config*, align 8
  %9 = alloca %struct.iwl_rxon_context*, align 8
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_channel_switch* %1, %struct.ieee80211_channel_switch** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_priv* %12, %struct.iwl_priv** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  store %struct.ieee80211_conf* %14, %struct.ieee80211_conf** %6, align 8
  %15 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %17, align 8
  store %struct.ieee80211_channel* %18, %struct.ieee80211_channel** %7, align 8
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 4
  store %struct.iwl_ht_config* %20, %struct.iwl_ht_config** %8, align 8
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 5
  %23 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %22, align 8
  %24 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %25 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %23, i64 %24
  store %struct.iwl_rxon_context* %25, %struct.iwl_rxon_context** %9, align 8
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %27 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %32 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %171

35:                                               ; preds = %2
  %36 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 2
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @STATUS_SCANNING, align 4
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 2
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %49, i32 0, i32 2
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %35
  br label %171

54:                                               ; preds = %47
  %55 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %56 = call i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %171

59:                                               ; preds = %54
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)** %63, align 8
  %65 = icmp ne i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %171

67:                                               ; preds = %59
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  %71 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %72 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @le16_to_cpu(i32 %74)
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %171

79:                                               ; preds = %67
  %80 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.iwl_ht_config, %struct.iwl_ht_config* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %87 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %86, i32 0, i32 0
  %88 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_10__* %87)
  switch i32 %88, label %113 [
    i32 128, label %89
    i32 131, label %89
    i32 130, label %97
    i32 129, label %105
  ]

89:                                               ; preds = %79, %79
  %90 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %91 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_NONE, align 4
  %94 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %95 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i32 %93, i32* %96, align 4
  br label %113

97:                                               ; preds = %79
  %98 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_BELOW, align 4
  %99 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %100 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %103 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  br label %113

105:                                              ; preds = %79
  %106 = load i32, i32* @IEEE80211_HT_PARAM_CHA_SEC_ABOVE, align 4
  %107 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %108 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %111 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %79, %105, %97, %89
  %114 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %115 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @le16_to_cpu(i32 %117)
  %119 = load i64, i64* %10, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %123 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %113
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %127 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %128 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %129 = call i32 @iwl_set_rxon_channel(%struct.iwl_priv* %126, %struct.ieee80211_channel* %127, %struct.iwl_rxon_context* %128)
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %131 = load %struct.iwl_ht_config*, %struct.iwl_ht_config** %8, align 8
  %132 = call i32 @iwl_set_rxon_ht(%struct.iwl_priv* %130, %struct.iwl_ht_config* %131)
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %134 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %135 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %136 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %139 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @iwl_set_flags_for_band(%struct.iwl_priv* %133, %struct.iwl_rxon_context* %134, i32 %137, i32 %140)
  %142 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %143 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %144 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %143, i32 0, i32 2
  %145 = call i32 @set_bit(i32 %142, i32* %144)
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @cpu_to_le16(i64 %146)
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %149 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %151 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %150, i32 0, i32 3
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)*, i64 (%struct.iwl_priv*, %struct.ieee80211_channel_switch*)** %153, align 8
  %155 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %156 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %4, align 8
  %157 = call i64 %154(%struct.iwl_priv* %155, %struct.ieee80211_channel_switch* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %125
  %160 = load i32, i32* @STATUS_CHANNEL_SWITCH_PENDING, align 4
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %162 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %161, i32 0, i32 2
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  %164 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %165 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %9, align 8
  %167 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @ieee80211_chswitch_done(i32 %168, i32 0)
  br label %170

170:                                              ; preds = %159, %125
  br label %171

171:                                              ; preds = %170, %78, %66, %58, %53, %34
  %172 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %173 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %172, i32 0, i32 0
  %174 = call i32 @mutex_unlock(i32* %173)
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %176 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_is_associated_ctx(%struct.iwl_rxon_context*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_10__*) #1

declare dso_local i32 @iwl_set_rxon_channel(%struct.iwl_priv*, %struct.ieee80211_channel*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_set_rxon_ht(%struct.iwl_priv*, %struct.iwl_ht_config*) #1

declare dso_local i32 @iwl_set_flags_for_band(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le16(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
