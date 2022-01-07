; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_vf_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_get_vf_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@QLCNIC_BC_CMD_GET_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get ACL, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_sriov_get_vf_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_get_vf_acl(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %10, align 8
  store %struct.qlcnic_sriov* %11, %struct.qlcnic_sriov** %4, align 8
  %12 = load i32, i32* @QLCNIC_BC_CMD_GET_ACL, align 4
  %13 = call i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args* %5, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %19, %struct.qlcnic_cmd_args* %5)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %49

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %48 [
    i32 129, label %42
    i32 128, label %45
  ]

42:                                               ; preds = %30
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = call i32 @qlcnic_sriov_set_guest_vlan_mode(%struct.qlcnic_adapter* %43, %struct.qlcnic_cmd_args* %5)
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %30
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = call i32 @qlcnic_sriov_set_pvid_mode(%struct.qlcnic_adapter* %46, %struct.qlcnic_cmd_args* %5)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %30, %45, %42
  br label %49

49:                                               ; preds = %48, %23
  %50 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @qlcnic_sriov_alloc_bc_mbx_args(%struct.qlcnic_cmd_args*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_sriov_set_guest_vlan_mode(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_set_pvid_mode(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
