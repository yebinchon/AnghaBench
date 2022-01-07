; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_switch_to_siso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_switch_to_siso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_lq_sta = type { i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i64, i32, i64, i32, i32 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"LQ: try to switch to SISO\0A\00", align 1
@LQ_SISO = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"LQ: get best rate %d mask %X\0A\00", align 1
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"can not switch with index %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"LQ: Switch to new mcs %X index is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32)* @rs_switch_to_siso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_switch_to_siso(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, %struct.iwl_scale_tbl_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_priv*, align 8
  %9 = alloca %struct.iwl_lq_sta*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.iwl_scale_tbl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iwl_station_priv*, align 8
  %18 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %8, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %9, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %10, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store %struct.iwl_scale_tbl_info* %4, %struct.iwl_scale_tbl_info** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.iwl_station_priv*
  store %struct.iwl_station_priv* %26, %struct.iwl_station_priv** %17, align 8
  %27 = load %struct.iwl_station_priv*, %struct.iwl_station_priv** %17, align 8
  %28 = getelementptr inbounds %struct.iwl_station_priv, %struct.iwl_station_priv* %27, i32 0, i32 0
  %29 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %28, align 8
  store %struct.iwl_rxon_context* %29, %struct.iwl_rxon_context** %18, align 8
  %30 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %31 = call i32 @conf_is_ht(%struct.ieee80211_conf* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %6
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %6
  store i32 -1, i32* %7, align 4
  br label %118

40:                                               ; preds = %33
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %42 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %44 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %47 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @LQ_SISO, align 4
  %49 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %50 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %54 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %55 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %60 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %18, align 8
  %61 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %62 = call i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv* %59, %struct.iwl_rxon_context* %60, %struct.ieee80211_sta* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %40
  %65 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %66 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  br label %70

67:                                               ; preds = %40
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %75 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %78 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %79 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %77, %struct.iwl_scale_tbl_info* %78)
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %81 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %82 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @rs_get_best_rate(%struct.iwl_priv* %80, %struct.iwl_lq_sta* %81, %struct.iwl_scale_tbl_info* %82, i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @IWL_RATE_INVALID, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %76
  %94 = load i32, i32* %16, align 4
  %95 = shl i32 1, %94
  %96 = load i32, i32* %14, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %93, %76
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  store i32 -1, i32* %7, align 4
  br label %118

104:                                              ; preds = %93
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %106 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %105, %struct.iwl_scale_tbl_info* %106, i32 %107, i32 %108)
  %110 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %111 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %113 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %114 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116)
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %104, %99, %39
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.ieee80211_sta*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_get_best_rate(%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
