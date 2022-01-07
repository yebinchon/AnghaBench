; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_initialize_lq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_initialize_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.il_priv = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.il_lq_sta = type { i32, i64, %struct.TYPE_7__, %struct.il_scale_tbl_info*, i32 }
%struct.il_scale_tbl_info = type { i32, i32 }
%struct.il_station_priv = type { i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@il_rates = common dso_local global %struct.TYPE_8__* null, align 8
@RATE_MCS_ANT_POS = common dso_local global i32 0, align 4
@IL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_lq_sta*)* @il4965_rs_initialize_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_initialize_lq(%struct.il_priv* %0, %struct.ieee80211_conf* %1, %struct.ieee80211_sta* %2, %struct.il_lq_sta* %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.il_lq_sta*, align 8
  %9 = alloca %struct.il_scale_tbl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.il_station_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.il_lq_sta* %3, %struct.il_lq_sta** %8, align 8
  store i64 0, i64* %14, align 8
  %17 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %18 = icmp ne %struct.ieee80211_sta* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %21 = icmp ne %struct.il_lq_sta* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %4
  br label %142

23:                                               ; preds = %19
  %24 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %26 = call i64 @il4965_rs_use_green(%struct.il_priv* %24, %struct.ieee80211_sta* %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.il_station_priv*
  store %struct.il_station_priv* %31, %struct.il_station_priv** %16, align 8
  %32 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %33 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %40 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %23
  %44 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %45 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %14, align 8
  br label %52

47:                                               ; preds = %23
  %48 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %49 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 1, %50
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %54 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %53, i32 0, i32 3
  %55 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %54, align 8
  %56 = load i64, i64* %14, align 8
  %57 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %55, i64 %56
  store %struct.il_scale_tbl_info* %57, %struct.il_scale_tbl_info** %9, align 8
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @RATE_COUNT, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %52
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @il_rates, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @il4965_first_antenna(i64 %72)
  %74 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %75 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %77 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RATE_MCS_ANT_POS, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @IL_FIRST_CCK_RATE, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %65
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @IL_LAST_CCK_RATE, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %86, %65
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %97 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %100 = call i32 @il4965_rs_get_tbl_info_from_mcs(i32 %95, i32 %98, %struct.il_scale_tbl_info* %99, i32* %10)
  %101 = load i64, i64* %15, align 8
  %102 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %103 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @il4965_rs_is_valid_ant(i64 %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %94
  %108 = load i64, i64* %15, align 8
  %109 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %110 = call i32 @il4965_rs_toggle_antenna(i64 %108, i32* %12, %struct.il_scale_tbl_info* %109)
  br label %111

111:                                              ; preds = %107, %94
  %112 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %113 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %112, %struct.il_scale_tbl_info* %113, i32 %114, i64 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %119 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %121 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %9, align 8
  %122 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %120, %struct.il_scale_tbl_info* %121)
  %123 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @il4965_rs_fill_link_cmd(i32* null, %struct.il_lq_sta* %123, i32 %124)
  %126 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %127 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %126, i32 0, i32 2
  %128 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %129 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %132 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %136, align 8
  %137 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %138 = load %struct.il_lq_sta*, %struct.il_lq_sta** %8, align 8
  %139 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %138, i32 0, i32 2
  %140 = load i32, i32* @CMD_SYNC, align 4
  %141 = call i32 @il_send_lq_cmd(%struct.il_priv* %137, %struct.TYPE_7__* %139, i32 %140, i32 1)
  br label %142

142:                                              ; preds = %111, %22
  ret void
}

declare dso_local i64 @il4965_rs_use_green(%struct.il_priv*, %struct.ieee80211_sta*) #1

declare dso_local i32 @il4965_first_antenna(i64) #1

declare dso_local i32 @il4965_rs_get_tbl_info_from_mcs(i32, i32, %struct.il_scale_tbl_info*, i32*) #1

declare dso_local i32 @il4965_rs_is_valid_ant(i64, i32) #1

declare dso_local i32 @il4965_rs_toggle_antenna(i64, i32*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i64) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_fill_link_cmd(i32*, %struct.il_lq_sta*, i32) #1

declare dso_local i32 @il_send_lq_cmd(%struct.il_priv*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
