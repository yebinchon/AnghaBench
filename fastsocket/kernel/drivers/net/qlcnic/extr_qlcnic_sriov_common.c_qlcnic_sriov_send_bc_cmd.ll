; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_send_bc_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_send_bc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_bc_trans*, i32 }
%struct.qlcnic_bc_trans = type { i32, i64, %struct.qlcnic_vf_info* }

@EIO = common dso_local global i32 0, align 4
@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@QLCNIC_BC_CMD_CHANNEL_INIT = common dso_local global i64 0, align 8
@QLC_BC_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_bc_trans*, i32)* @qlcnic_sriov_send_bc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_send_bc_cmd(%struct.qlcnic_adapter* %0, %struct.qlcnic_bc_trans* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_bc_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_vf_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_bc_trans* %1, %struct.qlcnic_bc_trans** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %81

19:                                               ; preds = %3
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %26, i64 %28
  store %struct.qlcnic_vf_info* %29, %struct.qlcnic_vf_info** %8, align 8
  %30 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %31 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %32 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %31, i32 0, i32 2
  store %struct.qlcnic_vf_info* %30, %struct.qlcnic_vf_info** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %35 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %37 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %38 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %37, i32 0, i32 2
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %19
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %43 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %81

48:                                               ; preds = %41
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %50 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %54 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @QLCNIC_BC_CMD_CHANNEL_INIT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61, %19
  %63 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %64 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %67 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %68 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %67, i32 0, i32 1
  store %struct.qlcnic_bc_trans* %66, %struct.qlcnic_bc_trans** %68, align 8
  %69 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %70 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %71 = load i32, i32* @QLC_BC_COMMAND, align 4
  %72 = call i32 @__qlcnic_sriov_send_bc_msg(%struct.qlcnic_bc_trans* %69, %struct.qlcnic_vf_info* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %74 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %75 = load i32, i32* @QLC_BC_COMMAND, align 4
  %76 = call i32 @qlcnic_sriov_clear_trans(%struct.qlcnic_vf_info* %73, %struct.qlcnic_bc_trans* %74, i32 %75)
  %77 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %8, align 8
  %78 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %62, %58, %45, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__qlcnic_sriov_send_bc_msg(%struct.qlcnic_bc_trans*, %struct.qlcnic_vf_info*, i32) #1

declare dso_local i32 @qlcnic_sriov_clear_trans(%struct.qlcnic_vf_info*, %struct.qlcnic_bc_trans*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
