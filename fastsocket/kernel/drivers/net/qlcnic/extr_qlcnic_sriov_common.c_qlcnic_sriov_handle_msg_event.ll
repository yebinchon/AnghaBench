; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_msg_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_msg_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_bc_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_sriov*, %struct.qlcnic_vf_info*)* @qlcnic_sriov_handle_msg_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_handle_msg_event(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1) #0 {
  %3 = alloca %struct.qlcnic_sriov*, align 8
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_bc_hdr, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %3, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %4, align 8
  %9 = bitcast %struct.qlcnic_bc_hdr* %5 to i32*
  store i32* %9, i32** %6, align 8
  store i32 2, i32* %8, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @QLCNIC_MBX_FW(i32 %18, i32 %19)
  %21 = call i32 @readl(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32 %21, i32* %26, align 4
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %10

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %41 [
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %30
  %35 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %3, align 8
  %36 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %37 = call i32 @qlcnic_sriov_handle_bc_cmd(%struct.qlcnic_sriov* %35, %struct.qlcnic_bc_hdr* %5, %struct.qlcnic_vf_info* %36)
  br label %41

38:                                               ; preds = %30
  %39 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %40 = call i32 @qlcnic_sriov_handle_bc_resp(%struct.qlcnic_bc_hdr* %5, %struct.qlcnic_vf_info* %39)
  br label %41

41:                                               ; preds = %30, %38, %34
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLCNIC_MBX_FW(i32, i32) #1

declare dso_local i32 @qlcnic_sriov_handle_bc_cmd(%struct.qlcnic_sriov*, %struct.qlcnic_bc_hdr*, %struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_handle_bc_resp(%struct.qlcnic_bc_hdr*, %struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
