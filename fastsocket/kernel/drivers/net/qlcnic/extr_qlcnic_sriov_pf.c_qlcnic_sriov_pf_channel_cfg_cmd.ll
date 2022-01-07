; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_channel_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_channel_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.TYPE_3__*, %struct.qlcnic_vf_info* }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_vf_info = type { i32, i32, %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_channel_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_channel_cfg_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
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
  %11 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %10, i32 0, i32 1
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %11, align 8
  store %struct.qlcnic_vf_info* %12, %struct.qlcnic_vf_info** %6, align 8
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %14 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %13, i32 0, i32 2
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %14, align 8
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %7, align 8
  %16 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %17 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %23, i64* %28, align 8
  %29 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %30 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = or i64 %34, 65536
  store i64 %35, i64* %33, align 8
  %36 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %2
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %44, i32 1, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @qlcnic_sriov_set_vf_vport_info(%struct.qlcnic_adapter* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %56, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %43
  br label %65

61:                                               ; preds = %2
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter* %62, i32 0, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %96

69:                                               ; preds = %65
  %70 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %71 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = or i64 %75, 33554432
  store i64 %76, i64* %74, align 8
  %77 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %78 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %69
  %85 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %86 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %87 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  br label %94

89:                                               ; preds = %69
  %90 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %91 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %92 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %91, i32 0, i32 0
  %93 = call i32 @clear_bit(i32 %90, i32* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %105

96:                                               ; preds = %68
  %97 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %98 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = or i64 %102, 67108864
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %94
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @qlcnic_sriov_pf_config_vport(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_sriov_set_vf_vport_info(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
