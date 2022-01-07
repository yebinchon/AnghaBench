; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_update_rate_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_rs.c_rs_update_rate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.iwl_scale_tbl_info = type { i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32)* @rs_update_rate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_update_rate_tbl(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_lq_sta* %2, %struct.iwl_scale_tbl_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.iwl_priv*, align 8
  %8 = alloca %struct.iwl_rxon_context*, align 8
  %9 = alloca %struct.iwl_lq_sta*, align 8
  %10 = alloca %struct.iwl_scale_tbl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %7, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %8, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %9, align 8
  store %struct.iwl_scale_tbl_info* %3, %struct.iwl_scale_tbl_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %15 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @rate_n_flags_from_tbl(%struct.iwl_priv* %14, %struct.iwl_scale_tbl_info* %15, i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %20 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @rs_fill_link_cmd(%struct.iwl_priv* %19, %struct.iwl_lq_sta* %20, i32 %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %7, align 8
  %24 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %8, align 8
  %25 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %9, align 8
  %26 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %25, i32 0, i32 0
  %27 = load i32, i32* @CMD_ASYNC, align 4
  %28 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %23, %struct.iwl_rxon_context* %24, i32* %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_priv*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_fill_link_cmd(%struct.iwl_priv*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
