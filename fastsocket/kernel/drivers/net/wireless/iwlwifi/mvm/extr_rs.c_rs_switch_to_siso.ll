; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_switch_to_siso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_switch_to_siso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32, i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_scale_tbl_info = type { i32, i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"LQ: try to switch to SISO\0A\00", align 1
@LQ_SISO = common dso_local global i32 0, align 4
@IWL_MAX_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"LQ: get best rate %d mask %X\0A\00", align 1
@IWL_RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"can not switch with index %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"LQ: Switch to new mcs %X index is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.ieee80211_sta*, %struct.iwl_scale_tbl_info*, i32)* @rs_switch_to_siso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_switch_to_siso(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.ieee80211_sta* %2, %struct.iwl_scale_tbl_info* %3, i32 %4) #0 {
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
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %95

24:                                               ; preds = %5
  %25 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %26 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @LQ_SISO, align 4
  %28 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %29 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %31 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @IWL_MAX_SEARCH, align 4
  %33 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %34 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %36 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %39 = call i64 @iwl_is_ht40_tx_allowed(%struct.ieee80211_sta* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %43 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %47

44:                                               ; preds = %24
  %45 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %46 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %52 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %55 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %56 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %54, %struct.iwl_scale_tbl_info* %55)
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %58 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %8, align 8
  %59 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @rs_get_best_rate(%struct.iwl_mvm* %57, %struct.iwl_lq_sta* %58, %struct.iwl_scale_tbl_info* %59, i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @IWL_RATE_INVALID, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 1, %71
  %73 = load i32, i32* %12, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70, %53
  %77 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  store i32 -1, i32* %6, align 4
  br label %95

81:                                               ; preds = %70
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %83 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %82, %struct.iwl_scale_tbl_info* %83, i32 %84, i32 %85)
  %87 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %88 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %90 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %91 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_RATE(%struct.iwl_mvm* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %81, %76, %23
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

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
