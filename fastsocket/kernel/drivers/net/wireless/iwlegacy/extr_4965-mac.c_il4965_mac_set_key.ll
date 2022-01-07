; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_mac_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"leave - hwcrypto disabled\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"leave - ad-hoc group key\0A\00", align 1
@IL_INVALID_STATION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@HW_KEY_DEFAULT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"enable hwcrypto key\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"disable hwcrypto key\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_mac_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.il_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.il_priv*, %struct.il_priv** %17, align 8
  store %struct.il_priv* %18, %struct.il_priv** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = call i32 @D_MAC80211(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %137

32:                                               ; preds = %5
  %33 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %40 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = call i32 @D_MAC80211(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %137

49:                                               ; preds = %38, %32
  %50 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %52 = call i64 @il_sta_id_or_broadcast(%struct.il_priv* %50, %struct.ieee80211_sta* %51)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @IL_INVALID_STATION, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %137

59:                                               ; preds = %49
  %60 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %64 = call i32 @il_scan_cancel_timeout(%struct.il_priv* %63, i32 100)
  %65 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %66 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %59
  %71 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %70, %59
  %77 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %78 = icmp ne %struct.ieee80211_sta* %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %15, align 4
  br label %97

90:                                               ; preds = %79
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %92 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HW_KEY_DEFAULT, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97, %76, %70
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %128 [
    i32 128, label %100
    i32 129, label %114
  ]

100:                                              ; preds = %98
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %105 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %106 = call i32 @il4965_set_default_wep_key(%struct.il_priv* %104, %struct.ieee80211_key_conf* %105)
  store i32 %106, i32* %13, align 4
  br label %112

107:                                              ; preds = %100
  %108 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @il4965_set_dynamic_key(%struct.il_priv* %108, %struct.ieee80211_key_conf* %109, i64 %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = call i32 @D_MAC80211(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %131

114:                                              ; preds = %98
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %119 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %120 = call i32 @il4965_remove_default_wep_key(%struct.il_priv* %118, %struct.ieee80211_key_conf* %119)
  store i32 %120, i32* %13, align 4
  br label %126

121:                                              ; preds = %114
  %122 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %123 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @il4965_remove_dynamic_key(%struct.il_priv* %122, %struct.ieee80211_key_conf* %123, i64 %124)
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %121, %117
  %127 = call i32 @D_MAC80211(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %131

128:                                              ; preds = %98
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %128, %126, %112
  %132 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  %133 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %132, i32 0, i32 0
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = call i32 @D_MAC80211(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %131, %56, %45, %28
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @D_MAC80211(i8*) #1

declare dso_local i64 @il_sta_id_or_broadcast(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @il4965_set_default_wep_key(%struct.il_priv*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @il4965_set_dynamic_key(%struct.il_priv*, %struct.ieee80211_key_conf*, i64) #1

declare dso_local i32 @il4965_remove_default_wep_key(%struct.il_priv*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @il4965_remove_dynamic_key(%struct.il_priv*, %struct.ieee80211_key_conf*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
