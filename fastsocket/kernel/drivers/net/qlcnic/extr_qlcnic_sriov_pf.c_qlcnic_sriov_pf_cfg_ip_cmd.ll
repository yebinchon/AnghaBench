; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_ip_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_ip_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { %struct.TYPE_3__*, %struct.qlcnic_adapter* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_cfg_ip_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cfg_ip_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_bc_trans*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %9 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  store %struct.qlcnic_vf_info* %11, %struct.qlcnic_vf_info** %5, align 8
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %13, align 8
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %6, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  %24 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BIT_31, align 4
  %38 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %37
  store i32 %44, i32* %42, align 4
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %46 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %47 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %45, %struct.qlcnic_cmd_args* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
