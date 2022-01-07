; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_handle_flr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_handle_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@QLC_BC_VF_STATE = common dso_local global i32 0, align 4
@QLC_BC_VF_FLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"FLR for PCI func %d in progress\0A\00", align 1
@qlcnic_sriov_pf_process_flr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"FLR received for PCI func %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_sriov_pf_handle_flr(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1) #0 {
  %3 = alloca %struct.qlcnic_sriov*, align 8
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %3, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %4, align 8
  %6 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %7 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load i32, i32* @QLC_BC_VF_STATE, align 4
  %12 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %12, i32 0, i32 1
  %14 = call i32 @test_and_clear_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @QLC_BC_VF_FLR, align 4
  %18 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %18, i32 0, i32 1
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  br label %43

21:                                               ; preds = %2
  %22 = load i32, i32* @QLC_BC_VF_FLR, align 4
  %23 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %24 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %23, i32 0, i32 1
  %25 = call i64 @test_and_set_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %30 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %43

33:                                               ; preds = %21
  %34 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %35 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %36 = load i32, i32* @qlcnic_sriov_pf_process_flr, align 4
  %37 = call i32 @qlcnic_sriov_schedule_flr(%struct.qlcnic_sriov* %34, %struct.qlcnic_vf_info* %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @netdev_info(%struct.net_device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %33, %27, %16
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @qlcnic_sriov_schedule_flr(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
