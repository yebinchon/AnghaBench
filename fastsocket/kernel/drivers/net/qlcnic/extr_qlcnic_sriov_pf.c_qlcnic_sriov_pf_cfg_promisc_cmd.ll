; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_promisc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_promisc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { %struct.TYPE_3__*, %struct.qlcnic_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@BIT_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_cfg_promisc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cfg_promisc_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_bc_trans*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %8 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %8, i32 0, i32 0
  %10 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %9, align 8
  store %struct.qlcnic_vf_info* %10, %struct.qlcnic_vf_info** %5, align 8
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %11, i32 0, i32 1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %19
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @BIT_31, align 4
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %27
  store i32 %34, i32* %32, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %36 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %37 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %35, %struct.qlcnic_cmd_args* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
