; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_wait_for_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_wait_for_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32, %struct.completion }
%struct.completion = type { i32 }

@QLC_MBOX_RESP_TIMEOUT = common dso_local global i32 0, align 4
@QLC_END = common dso_local global i32 0, align 4
@QLC_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_bc_trans*)* @qlcnic_sriov_wait_for_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_wait_for_resp(%struct.qlcnic_bc_trans* %0) #0 {
  %2 = alloca %struct.qlcnic_bc_trans*, align 8
  %3 = alloca %struct.completion*, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %2, align 8
  %4 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %4, i32 0, i32 1
  store %struct.completion* %5, %struct.completion** %3, align 8
  %6 = load %struct.completion*, %struct.completion** %3, align 8
  %7 = load i32, i32* @QLC_MBOX_RESP_TIMEOUT, align 4
  %8 = call i64 @wait_for_completion_timeout(%struct.completion* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @QLC_END, align 4
  %12 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @QLC_ABORT, align 4
  %16 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %2, align 8
  %17 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
