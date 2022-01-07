; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_schedule_flr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_schedule_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_vf_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__QLCNIC_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32)* @qlcnic_sriov_schedule_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_schedule_flr(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %4, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @__QLCNIC_RESETTING, align 4
  %8 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %9 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %7, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %27

15:                                               ; preds = %3
  %16 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %21 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %24, i32 0, i32 0
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
