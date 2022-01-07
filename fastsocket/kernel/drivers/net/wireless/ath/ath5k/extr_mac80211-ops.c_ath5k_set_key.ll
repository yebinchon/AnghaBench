; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_mac80211-ops.c_ath5k_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath5k_hw* }
%struct.ath5k_hw = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i32, i32 }
%struct.ath_common = type { i32 }

@ath5k_modparam_nohwcrypt = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RX_MGMT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_CIPHER_AESCCM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_IV = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_GENERATE_MMIC = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_SW_MGMT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @ath5k_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_vif*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.ath5k_hw*, align 8
  %13 = alloca %struct.ath_common*, align 8
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %9, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %10, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath5k_hw*, %struct.ath5k_hw** %16, align 8
  store %struct.ath5k_hw* %17, %struct.ath5k_hw** %12, align 8
  %18 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %19 = call %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw* %18)
  store %struct.ath_common* %19, %struct.ath_common** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load i64, i64* @ath5k_modparam_nohwcrypt, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %139

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %27 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_KEY_FLAG_RX_MGMT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %139

35:                                               ; preds = %25
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 130
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 131
  br i1 %50, label %51, label %61

51:                                               ; preds = %46, %41
  %52 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %139

61:                                               ; preds = %51, %46, %35
  %62 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %77 [
    i32 128, label %65
    i32 129, label %65
    i32 130, label %65
    i32 131, label %66
  ]

65:                                               ; preds = %61, %61, %61
  br label %81

66:                                               ; preds = %61
  %67 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATH_CRYPT_CAP_CIPHER_AESCCM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %81

74:                                               ; preds = %66
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %139

77:                                               ; preds = %61
  %78 = call i32 @WARN_ON(i32 1)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %139

81:                                               ; preds = %73, %65
  %82 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %83 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %82, i32 0, i32 0
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load i32, i32* %8, align 4
  switch i32 %85, label %130 [
    i32 132, label %86
    i32 133, label %126
  ]

86:                                               ; preds = %81
  %87 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %88 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %90 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %91 = call i32 @ath_key_config(%struct.ath_common* %87, %struct.ieee80211_vif* %88, %struct.ieee80211_sta* %89, %struct.ieee80211_key_conf* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %86
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_IV, align 4
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %104 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 130
  br i1 %106, label %107, label %113

107:                                              ; preds = %94
  %108 = load i32, i32* @IEEE80211_KEY_FLAG_GENERATE_MMIC, align 4
  %109 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %110 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %94
  %114 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 131
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* @IEEE80211_KEY_FLAG_SW_MGMT_TX, align 4
  %120 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %121 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %113
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %124, %86
  br label %133

126:                                              ; preds = %81
  %127 = load %struct.ath_common*, %struct.ath_common** %13, align 8
  %128 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %129 = call i32 @ath_key_delete(%struct.ath_common* %127, %struct.ieee80211_key_conf* %128)
  br label %133

130:                                              ; preds = %81
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130, %126, %125
  %134 = call i32 (...) @mmiowb()
  %135 = load %struct.ath5k_hw*, %struct.ath5k_hw** %12, align 8
  %136 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %77, %74, %58, %32, %22
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.ath_common* @ath5k_hw_common(%struct.ath5k_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath_key_config(%struct.ath_common*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @ath_key_delete(%struct.ath_common*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
