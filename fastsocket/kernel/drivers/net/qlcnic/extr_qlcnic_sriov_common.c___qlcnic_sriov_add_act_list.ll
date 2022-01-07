; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_add_act_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_add_act_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { %struct.qlcnic_trans_list }
%struct.qlcnic_trans_list = type { i32, i32 }
%struct.qlcnic_bc_trans = type { i32 }

@qlcnic_sriov_process_bc_cmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qlcnic_sriov_add_act_list(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_bc_trans* %2) #0 {
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.qlcnic_bc_trans*, align 8
  %7 = alloca %struct.qlcnic_trans_list*, align 8
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %4, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %5, align 8
  store %struct.qlcnic_bc_trans* %2, %struct.qlcnic_bc_trans** %6, align 8
  %8 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %9 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %8, i32 0, i32 0
  store %struct.qlcnic_trans_list* %9, %struct.qlcnic_trans_list** %7, align 8
  %10 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %11 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %14, i32 0, i32 0
  %16 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %17 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %20 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %25 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %26 = load i32, i32* @qlcnic_sriov_process_bc_cmd, align 4
  %27 = call i32 @qlcnic_sriov_schedule_bc_cmd(%struct.qlcnic_sriov* %24, %struct.qlcnic_vf_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %3
  ret i32 0
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @qlcnic_sriov_schedule_bc_cmd(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
