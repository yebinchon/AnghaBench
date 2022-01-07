; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_rx_ctx_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_del_rx_ctx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i64, %struct.TYPE_6__*, i32, %struct.qlcnic_adapter* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_del_rx_ctx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_del_rx_ctx_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %10 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %11, align 8
  store %struct.qlcnic_vf_info* %12, %struct.qlcnic_vf_info** %6, align 8
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %13, i32 0, i32 3
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %14, align 8
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %7, align 8
  %16 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %17 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %18 = call i32 @qlcnic_sriov_validate_del_rx_ctx(%struct.qlcnic_vf_info* %16, %struct.qlcnic_cmd_args* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 201326592
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %32 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %37 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %45 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %36, %struct.TYPE_6__* %39, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %51
  store i32 %58, i32* %56, align 4
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %60 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %61 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %59, %struct.qlcnic_cmd_args* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %30
  %65 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %66 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %30
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @qlcnic_sriov_validate_del_rx_ctx(%struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
