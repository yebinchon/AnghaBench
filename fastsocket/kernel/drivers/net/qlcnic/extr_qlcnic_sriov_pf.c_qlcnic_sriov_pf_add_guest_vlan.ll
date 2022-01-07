; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_add_guest_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_add_guest_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_vf_info = type { i32, i32, %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MAC_DEL = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_add_guest_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_add_guest_vlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_vport*, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %10 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %10, i32 0, i32 2
  %12 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %11, align 8
  store %struct.qlcnic_vport* %12, %struct.qlcnic_vport** %8, align 8
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %16 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %28 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %35 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %82

36:                                               ; preds = %21
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %38 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %39 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %40 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @QLCNIC_MAC_DEL, align 4
  %43 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %37, %struct.qlcnic_vport* %38, i32 %41, i32 0, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %82

48:                                               ; preds = %36
  %49 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %50 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 16
  %56 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %60 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %61 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %64 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %67 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %58, %struct.qlcnic_vport* %59, i32 %62, i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %48
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %72 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %73 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %74 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %77 = call i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter* %71, %struct.qlcnic_vport* %72, i32 %75, i32 0, i32 %76)
  %78 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %79 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %70, %48
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %46, %26, %19
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @qlcnic_sriov_cfg_vf_def_mac(%struct.qlcnic_adapter*, %struct.qlcnic_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
