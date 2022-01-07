; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_update_rate_tbl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_rs.c_rs_update_rate_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.iwl_scale_tbl_info = type { i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.iwl_scale_tbl_info*, i32, i32)* @rs_update_rate_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_update_rate_tbl(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.iwl_scale_tbl_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_lq_sta*, align 8
  %8 = alloca %struct.iwl_scale_tbl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %7, align 8
  store %struct.iwl_scale_tbl_info* %2, %struct.iwl_scale_tbl_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %13 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @rate_n_flags_from_tbl(%struct.iwl_mvm* %12, %struct.iwl_scale_tbl_info* %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @rs_fill_link_cmd(%struct.iwl_mvm* %17, %struct.iwl_lq_sta* %18, i32 %19)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %22 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %22, i32 0, i32 0
  %24 = load i32, i32* @CMD_ASYNC, align 4
  %25 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %21, i32* %23, i32 %24, i32 0)
  ret void
}

declare dso_local i32 @rate_n_flags_from_tbl(%struct.iwl_mvm*, %struct.iwl_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @rs_fill_link_cmd(%struct.iwl_mvm*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
