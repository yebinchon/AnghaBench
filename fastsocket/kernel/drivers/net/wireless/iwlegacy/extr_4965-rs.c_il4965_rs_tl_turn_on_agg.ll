; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_tl_turn_on_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-rs.c_il4965_rs_tl_turn_on_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_lq_sta = type { i32 }
%struct.ieee80211_sta = type { i32 }

@TID_MAX_LOAD_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"tid exceeds max load count: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i64, %struct.il_lq_sta*, %struct.ieee80211_sta*)* @il4965_rs_tl_turn_on_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_rs_tl_turn_on_agg(%struct.il_priv* %0, i64 %1, %struct.il_lq_sta* %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.il_lq_sta*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.il_lq_sta* %2, %struct.il_lq_sta** %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @TID_MAX_LOAD_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %14 = load %struct.il_lq_sta*, %struct.il_lq_sta** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %17 = call i32 @il4965_rs_tl_turn_on_agg_for_tid(%struct.il_priv* %13, %struct.il_lq_sta* %14, i64 %15, %struct.ieee80211_sta* %16)
  br label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TID_MAX_LOAD_COUNT, align 8
  %21 = call i32 @IL_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @il4965_rs_tl_turn_on_agg_for_tid(%struct.il_priv*, %struct.il_lq_sta*, i64, %struct.ieee80211_sta*) #1

declare dso_local i32 @IL_ERR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
