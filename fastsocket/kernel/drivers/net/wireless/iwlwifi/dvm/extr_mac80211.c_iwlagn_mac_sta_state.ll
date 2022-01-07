; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i64, i64 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_vif_priv = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"station %pM state change %d->%d\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IWL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Initializing rate scaling for station %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32, i32)* @iwlagn_mac_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_mac_sta_state(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_priv*, align 8
  %12 = alloca %struct.iwl_vif_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %15)
  store %struct.iwl_priv* %16, %struct.iwl_priv** %11, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.iwl_vif_priv*
  store %struct.iwl_vif_priv* %21, %struct.iwl_vif_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %27)
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %13, align 4
  br label %66

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 2, i32* %13, align 4
  br label %65

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 3, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %59, %55
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %45
  br label %87

67:                                               ; preds = %5
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 4, i32* %13, align 4
  br label %86

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 2, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %80, %76
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %13, align 4
  switch i32 %88, label %160 [
    i32 1, label %89
    i32 2, label %115
    i32 4, label %120
    i32 3, label %139
  ]

89:                                               ; preds = %87
  %90 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %91 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %93 = call i32 @iwlagn_mac_sta_add(%struct.ieee80211_hw* %90, %struct.ieee80211_vif* %91, %struct.ieee80211_sta* %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %161

97:                                               ; preds = %89
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %99 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %98, i32 0, i32 1
  %100 = call i32 @spin_lock_bh(i32* %99)
  %101 = load i32, i32* @IWL_STA_UCODE_INPROGRESS, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %107 = call i64 @iwl_sta_id(%struct.ieee80211_sta* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %102
  store i32 %111, i32* %109, align 4
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %113 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %112, i32 0, i32 1
  %114 = call i32 @spin_unlock_bh(i32* %113)
  br label %161

115:                                              ; preds = %87
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %117 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %119 = call i32 @iwlagn_mac_sta_remove(%struct.ieee80211_hw* %116, %struct.ieee80211_vif* %117, %struct.ieee80211_sta* %118)
  store i32 %119, i32* %14, align 4
  br label %161

120:                                              ; preds = %87
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %122 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %123 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %124 = call i32 @iwlagn_mac_sta_add(%struct.ieee80211_hw* %121, %struct.ieee80211_vif* %122, %struct.ieee80211_sta* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %161

128:                                              ; preds = %120
  %129 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %130 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %135 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %137 = call i64 @iwl_sta_id(%struct.ieee80211_sta* %136)
  %138 = call i32 @iwl_rs_rate_init(%struct.iwl_priv* %134, %struct.ieee80211_sta* %135, i64 %137)
  store i32 0, i32* %14, align 4
  br label %161

139:                                              ; preds = %87
  %140 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %141 = load %struct.iwl_vif_priv*, %struct.iwl_vif_priv** %12, align 8
  %142 = getelementptr inbounds %struct.iwl_vif_priv, %struct.iwl_vif_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %145 = call i32 @iwl_sta_update_ht(%struct.iwl_priv* %140, i32 %143, %struct.ieee80211_sta* %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %161

149:                                              ; preds = %139
  %150 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %151 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %150, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %156 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %157 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %158 = call i64 @iwl_sta_id(%struct.ieee80211_sta* %157)
  %159 = call i32 @iwl_rs_rate_init(%struct.iwl_priv* %155, %struct.ieee80211_sta* %156, i64 %158)
  store i32 0, i32* %14, align 4
  br label %161

160:                                              ; preds = %87
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %160, %149, %148, %128, %127, %115, %97, %96
  %162 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %163 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %161
  %167 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %168 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load %struct.iwl_priv*, %struct.iwl_priv** %11, align 8
  %171 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_MAC80211(%struct.iwl_priv* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* %14, align 4
  ret i32 %172
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iwlagn_mac_sta_add(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @iwl_sta_id(%struct.ieee80211_sta*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iwlagn_mac_sta_remove(%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_rs_rate_init(%struct.iwl_priv*, %struct.ieee80211_sta*, i64) #1

declare dso_local i32 @iwl_sta_update_ht(%struct.iwl_priv*, i32, %struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
