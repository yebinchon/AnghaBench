; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_soft_flr_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_soft_flr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_bc_trans = type { %struct.qlcnic_bc_hdr* }
%struct.qlcnic_bc_hdr = type { i64, i64 }
%struct.qlcnic_vf_info = type { i32 }

@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLC_BC_CMD = common dso_local global i64 0, align 8
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_soft_flr_check(%struct.qlcnic_adapter* %0, %struct.qlcnic_bc_trans* %1, %struct.qlcnic_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_bc_trans*, align 8
  %7 = alloca %struct.qlcnic_vf_info*, align 8
  %8 = alloca %struct.qlcnic_bc_hdr*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_bc_trans* %1, %struct.qlcnic_bc_trans** %6, align 8
  store %struct.qlcnic_vf_info* %2, %struct.qlcnic_vf_info** %7, align 8
  %9 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %10 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  store %struct.qlcnic_bc_hdr* %11, %struct.qlcnic_bc_hdr** %8, align 8
  %12 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QLC_BC_CMD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %25 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %26 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %32 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %7, align 8
  %33 = call i32 @qlcnic_sriov_handle_soft_flr(%struct.qlcnic_adapter* %30, %struct.qlcnic_bc_trans* %31, %struct.qlcnic_vf_info* %32)
  store i32 1, i32* %4, align 4
  br label %35

34:                                               ; preds = %23, %17, %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_handle_soft_flr(%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, %struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
