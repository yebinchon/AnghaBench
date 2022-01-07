; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_switch_to_mimo3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_switch_to_mimo3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwl_lq_sta = type { i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i64, i32, i32 }
%struct.iwl_station_priv = type { %struct.iwl_rxon_context* }
%struct.iwl_rxon_context = type { i32 }

@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"LQ: try to switch to MIMO3\0A\00", align 1
@LQ_MIMO3 = common dso_local global i32 0, align 4
@IWL_MAX_11N_MIMO3_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"LQ: MIMO3 best rate %d mask %X\0A\00", align 1
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't switch with index %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"LQ: Switch to new mcs %X index is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32)* @rs_switch_to_mimo3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_switch_to_mimo3(%struct.iwl_priv* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, %struct.iwl_scale_tbl_info* %4, i32 %5) #0 {
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
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %22, i32 0, i32 2
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
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %6
  store i32 -1, i32* %7, align 4
  br label %126

40:                                               ; preds = %33
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %126

47:                                               ; preds = %40
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 -1, i32* %7, align 4
  br label %126

54:                                               ; preds = %47
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %56 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @LQ_MIMO3, align 4
  %58 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %59 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %61 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %64 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %66 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @IWL_MAX_11N_MIMO3_SEARCH, align 4
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %69 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %74 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %18, align 8
  %75 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %76 = call i64 @iwl_is_ht40_tx_allowed(%struct.iwl_priv* %73, %struct.iwl_rxon_context* %74, %struct.ieee80211_sta* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %54
  %79 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %80 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %84

81:                                               ; preds = %54
  %82 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %83 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %86 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %87 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %85, %struct.iwl_scale_tbl_info* %86)
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %89 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %90 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @rs_get_best_rate(%struct.iwl_priv* %88, %struct.iwl_lq_sta* %89, %struct.iwl_scale_tbl_info* %90, i32 %91, i32 %92)
  store i32 %93, i32* %15, align 4
  %94 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @IWL_RATE_INVALID, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %15, align 4
  %103 = shl i32 1, %102
  %104 = load i32, i32* %14, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %101, %84
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  store i32 -1, i32* %7, align 4
  br label %126

112:                                              ; preds = %101
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %114 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %113, %struct.iwl_scale_tbl_info* %114, i32 %115, i32 %116)
  %118 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %119 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.iwl_priv*, %struct.iwl_priv** %8, align 8
  %121 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %12, align 8
  %122 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_priv* %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %124)
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %112, %107, %53, %46, %39
  %127 = load i32, i32* %7, align 4
  ret i32 %127
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
