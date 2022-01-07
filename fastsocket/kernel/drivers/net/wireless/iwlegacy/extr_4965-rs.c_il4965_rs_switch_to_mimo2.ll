; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_switch_to_mimo2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_switch_to_mimo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.il_lq_sta = type { i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.il_scale_tbl_info = type { i32, i32, i32, i64, i32, i32 }

@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"LQ: try to switch to MIMO2\0A\00", align 1
@LQ_MIMO2 = common dso_local global i32 0, align 4
@IL_MAX_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"LQ: MIMO2 best rate %d mask %X\0A\00", align 1
@RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't switch with idx %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"LQ: Switch to new mcs %X idx is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32)* @il4965_rs_switch_to_mimo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_switch_to_mimo2(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, %struct.il_scale_tbl_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il_lq_sta*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.il_scale_tbl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %9, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %10, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store %struct.il_scale_tbl_info* %4, %struct.il_scale_tbl_info** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %18 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %21 = call i32 @conf_is_ht(%struct.ieee80211_conf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %6
  store i32 -1, i32* %7, align 4
  br label %112

30:                                               ; preds = %23
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  br label %112

37:                                               ; preds = %30
  %38 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %39 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 -1, i32* %7, align 4
  br label %112

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @LQ_MIMO2, align 4
  %47 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %48 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %50 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %53 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %55 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @IL_MAX_SEARCH, align 4
  %57 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %58 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %60 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 1
  %65 = call i64 @il_is_ht40_tx_allowed(%struct.il_priv* %62, %struct.TYPE_4__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %44
  %68 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %69 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %73

70:                                               ; preds = %44
  %71 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %72 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %75 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %76 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %74, %struct.il_scale_tbl_info* %75)
  %77 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %78 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %79 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @il4965_rs_get_best_rate(%struct.il_priv* %77, %struct.il_lq_sta* %78, %struct.il_scale_tbl_info* %79, i32 %80, i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @RATE_INVALID, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* %15, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89, %73
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  store i32 -1, i32* %7, align 4
  br label %112

99:                                               ; preds = %89
  %100 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %101 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %100, %struct.il_scale_tbl_info* %101, i32 %102, i32 %103)
  %105 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %106 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %108 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %16, align 4
  %111 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110)
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %99, %95, %43, %36, %29
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i64 @il_is_ht40_tx_allowed(%struct.il_priv*, %struct.TYPE_4__*) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_get_best_rate(%struct.il_priv*, %struct.il_lq_sta*, %struct.il_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
