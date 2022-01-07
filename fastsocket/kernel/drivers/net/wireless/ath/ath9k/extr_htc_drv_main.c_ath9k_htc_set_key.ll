; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath9k_htc_priv* }
%struct.ath9k_htc_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i64, i32, i32 }
%struct.ath_common = type { i32 }

@htc_modparam_nohwcrypt = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Set HW Key\0A\00", align 1
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @ath9k_htc_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.ath9k_htc_priv*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %16, align 8
  store %struct.ath9k_htc_priv* %17, %struct.ath9k_htc_priv** %12, align 8
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__* %20)
  store %struct.ath_common* %21, %struct.ath_common** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = load i64, i64* @htc_modparam_nohwcrypt, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %134

27:                                               ; preds = %5
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33, %27
  %40 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %41 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45, %39
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %134

61:                                               ; preds = %51, %45, %33
  %62 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %63 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %66 = load i32, i32* @CONFIG, align 4
  %67 = call i32 @ath_dbg(%struct.ath_common* %65, i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %69 = call i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv* %68)
  %70 = load i32, i32* %8, align 4
  switch i32 %70, label %124 [
    i32 128, label %71
    i32 129, label %120
  ]

71:                                               ; preds = %61
  %72 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %74 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %75 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %76 = call i32 @ath_key_config(%struct.ath_common* %72, %struct.ieee80211_vif* %73, %struct.ieee80211_sta* %74, %struct.ieee80211_key_conf* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %71
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %82 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %84 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %85 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %89 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %79
  %94 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %95 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %96 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %79
  %100 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %101 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %108 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @WLAN_CIPHER_SUITE_CCMP, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %114 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %112, %106, %99
  store i32 0, i32* %14, align 4
  br label %119

119:                                              ; preds = %118, %71
  br label %127

120:                                              ; preds = %61
  %121 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %122 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %123 = call i32 @ath_key_delete(%struct.ath_common* %121, %struct.ieee80211_key_conf* %122)
  br label %127

124:                                              ; preds = %61
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %120, %119
  %128 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %129 = call i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv* %128)
  %130 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %12, align 8
  %131 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %130, i32 0, i32 0
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %127, %58, %24
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*) #1

declare dso_local i32 @ath9k_htc_ps_wakeup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath_key_config(%struct.ath_common*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath_key_delete(%struct.ath_common*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath9k_htc_ps_restore(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
