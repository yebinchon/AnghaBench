; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_guest_vlan_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cfg_guest_vlan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { %struct.qlcnic_vport*, %struct.qlcnic_adapter* }
%struct.qlcnic_vport = type { i64 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@QLC_GUEST_VLAN_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_cfg_guest_vlan_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cfg_guest_vlan_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %11 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  store %struct.qlcnic_vf_info* %13, %struct.qlcnic_vf_info** %6, align 8
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 1
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %15, align 8
  store %struct.qlcnic_adapter* %16, %struct.qlcnic_adapter** %7, align 8
  %17 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %17, i32 0, i32 0
  %19 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %18, align 8
  store %struct.qlcnic_vport* %19, %struct.qlcnic_vport** %8, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %23 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @QLC_GUEST_VLAN_MODE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 67108864
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %2
  %37 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 15
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %48 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %49 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %50 = call i32 @qlcnic_sriov_pf_add_guest_vlan(%struct.qlcnic_adapter* %47, %struct.qlcnic_vf_info* %48, %struct.qlcnic_cmd_args* %49)
  store i32 %50, i32* %9, align 4
  br label %55

51:                                               ; preds = %36
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %53 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %54 = call i32 @qlcnic_sriov_pf_del_guest_vlan(%struct.qlcnic_adapter* %52, %struct.qlcnic_vf_info* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 67108864, i32 33554432
  %60 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %61 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %59
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %55, %27
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @qlcnic_sriov_pf_add_guest_vlan(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_pf_del_guest_vlan(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
