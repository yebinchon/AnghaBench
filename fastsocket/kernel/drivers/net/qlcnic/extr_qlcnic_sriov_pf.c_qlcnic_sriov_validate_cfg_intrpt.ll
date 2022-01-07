; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrpt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_vf_info = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@BIT_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_cfg_intrpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_cfg_intrpt(%struct.qlcnic_vf_info* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  store %struct.qlcnic_vf_info* %0, %struct.qlcnic_vf_info** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %6 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %7 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BIT_16, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %47

34:                                               ; preds = %21
  %35 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %36 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 255
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %43, %31, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
