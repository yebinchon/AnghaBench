; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cfg_vf_guest_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_cfg_vf_guest_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@QLCNIC_BC_CMD_CFG_GUEST_VLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to configure guest VLAN, err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_cfg_vf_guest_vlan(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %14, align 8
  store %struct.qlcnic_sriov* %15, %struct.qlcnic_sriov** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_sriov* %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %79

28:                                               ; preds = %19
  %29 = load i32, i32* @QLCNIC_BC_CMD_CFG_GUEST_VLAN, align 4
  %30 = call i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %9, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %79

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %37, %39
  %41 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %46 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %45, i32 0, i32 1
  %47 = call i32 @qlcnic_sriov_cleanup_async_list(i32* %46)
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %49 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %48, %struct.qlcnic_cmd_args* %9)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %35
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %76

59:                                               ; preds = %35
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %61 = call i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter* %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %67 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %59
  %69 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %70 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @qlcnic_sriov_vf_set_multi(i32 %74)
  br label %76

76:                                               ; preds = %71, %52
  %77 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %33, %26, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @qlcnic_sriov_validate_vlan_cfg(%struct.qlcnic_sriov*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i32) #1

declare dso_local i32 @qlcnic_sriov_cleanup_async_list(i32*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_vf_set_multi(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
