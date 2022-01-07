; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_within_ct_kill_margin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_tt.c_iwl_within_ct_kill_margin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IWL_TT_CT_KILL_MARGIN = common dso_local global i64 0, align 8
@CT_KILL_THRESHOLD_LEGACY = common dso_local global i64 0, align 8
@CT_KILL_THRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_within_ct_kill_margin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_within_ct_kill_margin(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @IWL_TT_CT_KILL_MARGIN, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @CT_KILL_THRESHOLD_LEGACY, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %1
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @IWL_TT_CT_KILL_MARGIN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @CT_KILL_THRESHOLD, align 8
  %26 = icmp sge i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
