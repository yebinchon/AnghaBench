; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_initialize_lq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_initialize_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.iwl_lq_sta = type { i32, i64, i32, %struct.iwl_scale_tbl_info*, i32 }
%struct.iwl_scale_tbl_info = type { i32, i32 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@iwl_rates = common dso_local global %struct.TYPE_2__* null, align 8
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.ieee80211_sta*, %struct.iwl_lq_sta*, i32)* @rs_initialize_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_initialize_lq(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, %struct.iwl_lq_sta* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_scale_tbl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %17 = call i64 @rs_use_green(%struct.ieee80211_sta* %16)
  store i64 %17, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %19 = icmp ne %struct.ieee80211_sta* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %22 = icmp ne %struct.iwl_lq_sta* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %122

24:                                               ; preds = %20
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @iwl_fw_valid_tx_ant(i32 %30)
  store i64 %31, i64* %15, align 8
  %32 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %33 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %24
  %37 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %38 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  br label %45

40:                                               ; preds = %24
  %41 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %42 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 1, %43
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %47 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %46, i32 0, i32 3
  %48 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %48, i64 %49
  store %struct.iwl_scale_tbl_info* %50, %struct.iwl_scale_tbl_info** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @IWL_RATE_COUNT, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %45
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @iwl_rates, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i64, i64* %15, align 8
  %66 = call i32 @first_antenna(i64 %65)
  %67 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %68 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %70 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %12, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %58
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %83, %79, %58
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %91 = call i32 @rs_get_tbl_info_from_mcs(i32 %88, i32 %89, %struct.iwl_scale_tbl_info* %90, i32* %10)
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %94 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @rs_is_valid_ant(i64 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %87
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %101 = call i32 @rs_toggle_antenna(i64 %99, i32* %12, %struct.iwl_scale_tbl_info* %100)
  br label %102

102:                                              ; preds = %98, %87
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %104 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %103, %struct.iwl_scale_tbl_info* %104, i32 %105, i64 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %110 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %112 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %9, align 8
  %113 = call i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta* %111, %struct.iwl_scale_tbl_info* %112)
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @rs_fill_link_cmd(i32* null, %struct.iwl_lq_sta* %114, i32 %115)
  %117 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %118 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %119 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %118, i32 0, i32 2
  %120 = load i32, i32* @CMD_SYNC, align 4
  %121 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %117, i32* %119, i32 %120, i32 1)
  br label %122

122:                                              ; preds = %102, %23
  ret void
}

declare dso_local i64 @rs_use_green(%struct.ieee80211_sta*) #1

declare dso_local i64 @iwl_fw_valid_tx_ant(i32) #1

declare dso_local i32 @first_antenna(i64) #1

declare dso_local i32 @rs_get_tbl_info_from_mcs(i32, i32, %struct.iwl_scale_tbl_info*, i32*) #1

declare dso_local i32 @rs_is_valid_ant(i64, i32) #1

declare dso_local i32 @rs_toggle_antenna(i64, i32*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i64) #1

declare dso_local i32 @rs_set_expected_tpt_table(%struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*) #1

declare dso_local i32 @rs_fill_link_cmd(i32*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
