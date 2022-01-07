; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_create_rx_ctx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_create_rx_ctx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i64, i32, %struct.TYPE_6__*, %struct.qlcnic_adapter* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.qlcnic_rcv_mbx_out = type { i64 }

@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_create_rx_ctx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_create_rx_ctx_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_rcv_mbx_out*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %11 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  store %struct.qlcnic_vf_info* %13, %struct.qlcnic_vf_info** %6, align 8
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 3
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %15, align 8
  store %struct.qlcnic_adapter* %16, %struct.qlcnic_adapter** %7, align 8
  %17 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %18 = call i32 @qlcnic_sriov_validate_create_rx_ctx(%struct.qlcnic_cmd_args* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 201326592
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %78

30:                                               ; preds = %2
  %31 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %32 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 6
  store i32 %35, i32* %40, align 4
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %42 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %43 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %41, %struct.qlcnic_cmd_args* %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %30
  %52 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = bitcast i32* %56 to %struct.qlcnic_rcv_mbx_out*
  store %struct.qlcnic_rcv_mbx_out* %57, %struct.qlcnic_rcv_mbx_out** %8, align 8
  %58 = load %struct.qlcnic_rcv_mbx_out*, %struct.qlcnic_rcv_mbx_out** %8, align 8
  %59 = getelementptr inbounds %struct.qlcnic_rcv_mbx_out, %struct.qlcnic_rcv_mbx_out* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %64 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %68 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %72 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %63, %struct.TYPE_6__* %66, i32 %69, i32 %70, i32 %71)
  br label %76

73:                                               ; preds = %30
  %74 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %75 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %51
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @qlcnic_sriov_validate_create_rx_ctx(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
