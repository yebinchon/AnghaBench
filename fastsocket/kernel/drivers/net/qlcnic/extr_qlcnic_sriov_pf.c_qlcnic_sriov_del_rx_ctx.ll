; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_del_rx_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_del_rx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_vf_info = type { i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_DESTROY_RX_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to delete Tx ctx in firmware for func 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*)* @qlcnic_sriov_del_rx_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_del_rx_ctx(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %4, align 8
  %7 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %8 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = load i32, i32* @QLCNIC_CMD_DESTROY_RX_CTX, align 4
  %15 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %56

18:                                               ; preds = %12
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %21 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %18
  %27 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %28 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 65535
  %32 = shl i32 %31, 16
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = call i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %38, %struct.qlcnic_cmd_args* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %26
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %47 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %53

50:                                               ; preds = %26
  %51 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %52 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %51, i32 0, i32 0
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %41
  br label %54

54:                                               ; preds = %53, %18
  %55 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  br label %56

56:                                               ; preds = %54, %17, %11
  ret void
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
