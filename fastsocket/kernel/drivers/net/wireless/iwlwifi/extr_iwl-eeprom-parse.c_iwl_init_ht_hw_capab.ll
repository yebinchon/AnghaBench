; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_ht_hw_capab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-eeprom-parse.c_iwl_init_ht_hw_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.iwl_cfg = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.iwl_nvm_data = type { i32, i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_4 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_20_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@MAX_BIT_RATE_40_MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_RX_HIGHEST_MASK = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_init_ht_hw_capab(%struct.iwl_cfg* %0, %struct.iwl_nvm_data* %1, %struct.ieee80211_sta_ht_cap* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_cfg*, align 8
  %6 = alloca %struct.iwl_nvm_data*, align 8
  %7 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_cfg* %0, %struct.iwl_cfg** %5, align 8
  store %struct.iwl_nvm_data* %1, %struct.iwl_nvm_data** %6, align 8
  store %struct.ieee80211_sta_ht_cap* %2, %struct.ieee80211_sta_ht_cap** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hweight8(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.iwl_cfg*, %struct.iwl_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hweight8(i32 %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load %struct.iwl_nvm_data*, %struct.iwl_nvm_data** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_nvm_data, %struct.iwl_nvm_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.iwl_cfg*, %struct.iwl_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %165

39:                                               ; preds = %31
  %40 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %43 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @iwlwifi_mod_params, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %49 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %55 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_4, align 4
  %58 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 255, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %65, 2
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 255, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %53
  %74 = load i32, i32* %10, align 4
  %75 = icmp sge i32 %74, 3
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 255, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.iwl_cfg*, %struct.iwl_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %91 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %82
  %96 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %97 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* @MAX_BIT_RATE_20_MHZ, align 4
  store i32 %101, i32* %9, align 4
  %102 = load %struct.iwl_cfg*, %struct.iwl_cfg** %5, align 8
  %103 = getelementptr inbounds %struct.iwl_cfg, %struct.iwl_cfg* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @BIT(i32 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %95
  %112 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %113 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %118 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32 1, i32* %126, align 4
  %127 = load i32, i32* @MAX_BIT_RATE_40_MHZ, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %111, %95
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @IEEE80211_HT_MCS_RX_HIGHEST_MASK, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = call i32 @WARN_ON(i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @cpu_to_le16(i32 %137)
  %139 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %143 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %144 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %128
  %150 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %151 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %150
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 %156, 1
  %158 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %159 = shl i32 %157, %158
  %160 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %7, align 8
  %161 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %159
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %36, %149, %128
  ret void
}

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
