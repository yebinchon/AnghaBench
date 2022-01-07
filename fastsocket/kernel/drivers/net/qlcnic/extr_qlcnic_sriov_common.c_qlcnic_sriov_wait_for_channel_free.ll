; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_wait_for_channel_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_wait_for_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.completion }
%struct.completion = type { i32 }

@QLC_MBOX_CH_FREE_TIMEOUT = common dso_local global i32 0, align 4
@QLC_ABORT = common dso_local global i32 0, align 4
@QLC_BC_VF_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_bc_trans*, i32)* @qlcnic_sriov_wait_for_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_wait_for_channel_free(%struct.qlcnic_bc_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_bc_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.completion*, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  store %struct.qlcnic_vf_info* %9, %struct.qlcnic_vf_info** %5, align 8
  %10 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %11 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %10, i32 0, i32 1
  store %struct.completion* %11, %struct.completion** %6, align 8
  %12 = load %struct.completion*, %struct.completion** %6, align 8
  %13 = load i32, i32* @QLC_MBOX_CH_FREE_TIMEOUT, align 4
  %14 = call i32 @wait_for_completion_timeout(%struct.completion* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @QLC_ABORT, align 4
  %18 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* @QLC_BC_VF_CHANNEL, align 4
  %22 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @qlcnic_sriov_handle_multi_frags(%struct.qlcnic_bc_trans* %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_handle_multi_frags(%struct.qlcnic_bc_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
