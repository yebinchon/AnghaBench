; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_switch_to_mimo2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_switch_to_mimo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32, i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i32, i64, i32 }

@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"LQ: try to switch to MIMO2\0A\00", align 1
@LQ_MIMO2 = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"LQ: MIMO2 best rate %d mask %X\0A\00", align 1
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't switch with index %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"LQ: Switch to new mcs %X index is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32)* @rs_switch_to_mimo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_switch_to_mimo2(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, %struct.iwl_scale_tbl_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.iwl_lq_sta*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.iwl_scale_tbl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %16 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %104

24:                                               ; preds = %5
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %104

31:                                               ; preds = %24
  %32 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iwl_fw_valid_tx_ant(i32 %34)
  %36 = call i32 @num_of_ant(i32 %35)
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %104

39:                                               ; preds = %31
  %40 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %41 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @LQ_MIMO2, align 4
  %43 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %44 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %46 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %48 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %49 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %51 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %54 = call i64 @iwl_is_ht40_tx_allowed(%struct.ieee80211_sta* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %58 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %62

59:                                               ; preds = %39
  %60 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %61 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %64 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %65 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %63, %struct.iwl_scale_tbl_info* %64)
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %67 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %68 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @rs_get_best_rate(%struct.iwl_mvm* %66, %struct.iwl_lq_sta* %67, %struct.iwl_scale_tbl_info* %68, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @IWL_RATE_INVALID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* %13, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79, %62
  %86 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88)
  store i32 -1, i32* %6, align 4
  br label %104

90:                                               ; preds = %79
  %91 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %92 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %91, %struct.iwl_scale_tbl_info* %92, i32 %93, i32 %94)
  %96 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %97 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %99 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %100 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %90, %85, %38, %30, %23
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @num_of_ant(i32) #1

declare dso_local i32 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @IWL_DEBUG_RATE(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i64 @iwl_is_ht40_tx_allowed(%struct.ieee80211_sta*) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_get_best_rate(%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
