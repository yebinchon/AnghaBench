; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_mwl8k.c_mwl8k_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32 }
%struct.ieee80211_vif = type { i64, i32* }
%struct.ieee80211_sta = type { i32* }
%struct.ieee80211_key_conf = type { i64 }
%struct.mwl8k_vif = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@MWL8K_UPDATE_ENCRYPTION_TYPE_WEP = common dso_local global i32 0, align 4
@MWL8K_UPDATE_ENCRYPTION_TYPE_MIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @mwl8k_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl8k_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mwl8k_vif*, align 8
  %16 = alloca %struct.mwl8k_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %18 = call %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif* %17)
  store %struct.mwl8k_vif* %18, %struct.mwl8k_vif** %15, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %20, align 8
  store %struct.mwl8k_priv* %21, %struct.mwl8k_priv** %16, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %16, align 8
  %29 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %100

35:                                               ; preds = %27, %5
  %36 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %37 = icmp eq %struct.ieee80211_sta* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %14, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %14, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SET_KEY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %52 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %55 = call i32 @mwl8k_cmd_encryption_set_key(%struct.ieee80211_hw* %51, %struct.ieee80211_vif* %52, i32* %53, %struct.ieee80211_key_conf* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %98

59:                                               ; preds = %50
  %60 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @MWL8K_UPDATE_ENCRYPTION_TYPE_WEP, align 4
  store i32 %72, i32* %13, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @MWL8K_UPDATE_ENCRYPTION_TYPE_MIXED, align 4
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %77 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @mwl8k_cmd_update_encryption_enable(%struct.ieee80211_hw* %76, %struct.ieee80211_vif* %77, i32* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %98

84:                                               ; preds = %75
  %85 = load %struct.mwl8k_vif*, %struct.mwl8k_vif** %15, align 8
  %86 = getelementptr inbounds %struct.mwl8k_vif, %struct.mwl8k_vif* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %97

87:                                               ; preds = %46
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %89 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %92 = call i32 @mwl8k_cmd_encryption_remove_key(%struct.ieee80211_hw* %88, %struct.ieee80211_vif* %89, i32* %90, %struct.ieee80211_key_conf* %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %98

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %84
  br label %98

98:                                               ; preds = %97, %95, %83, %58
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %32
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.mwl8k_vif* @MWL8K_VIF(%struct.ieee80211_vif*) #1

declare dso_local i32 @mwl8k_cmd_encryption_set_key(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mwl8k_cmd_update_encryption_enable(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, i32) #1

declare dso_local i32 @mwl8k_cmd_encryption_remove_key(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, %struct.ieee80211_key_conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
