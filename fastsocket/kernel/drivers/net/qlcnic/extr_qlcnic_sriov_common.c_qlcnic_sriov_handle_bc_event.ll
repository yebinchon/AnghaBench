; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_sriov_handle_bc_event(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.qlcnic_sriov*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %12, align 8
  store %struct.qlcnic_sriov* %13, %struct.qlcnic_sriov** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @qlcnic_sriov_target_func_id(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %23, i32 0, i32 0
  %25 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %25, i64 %27
  store %struct.qlcnic_vf_info* %28, %struct.qlcnic_vf_info** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @qlcnic_sriov_channel_free_check(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %37 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %36, i32 0, i32 0
  %38 = call i32 @complete(i32* %37)
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @qlcnic_sriov_flr_check(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %45 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %46 = call i32 @qlcnic_sriov_handle_flr_event(%struct.qlcnic_sriov* %44, %struct.qlcnic_vf_info* %45)
  br label %55

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @qlcnic_sriov_bc_msg_check(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %53 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %54 = call i32 @qlcnic_sriov_handle_msg_event(%struct.qlcnic_sriov* %52, %struct.qlcnic_vf_info* %53)
  br label %55

55:                                               ; preds = %21, %43, %51, %47
  ret void
}

declare dso_local i32 @qlcnic_sriov_target_func_id(i32) #1

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_channel_free_check(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @qlcnic_sriov_flr_check(i32) #1

declare dso_local i32 @qlcnic_sriov_handle_flr_event(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*) #1

declare dso_local i64 @qlcnic_sriov_bc_msg_check(i32) #1

declare dso_local i32 @qlcnic_sriov_handle_msg_event(%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
